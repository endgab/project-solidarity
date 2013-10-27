package projectsolidarity.controller

import projectsolidarity.domain.Project
import org.springframework.dao.DataIntegrityViolationException

class ProjectController {
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	def projectService
	
	def index() {
		redirect action:"list", params:params
	}
	
	final int projectsPerPage = 3;
	def list = {
		def offset = params.offset ?: 0;
		[ projectInstanceList:Project.list(max: projectsPerPage, offset : offset, sort: "daysToGo", order: "asc"),  
		  projectInstanceTotal:Project.count(), 
		  projectsPerPage:projectsPerPage ]
	}
	
	def create() {
		[projectInstance: new Project(params)]
	}

	def save() {
		def projectInstance = new Project(params)
		projectService.initProject(projectInstance)
		
		if (!projectInstance.save(flush: true)) {
			render(view: "create", model: [projectInstance: projectInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), projectInstance.id])
		redirect(action: "show", id: projectInstance.id)
	}

	def show(Long id) {
		def projectInstance = Project.get(id)
		if (!projectInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), id])
			redirect(action: "list")
			return
		}

		[projectInstance: projectInstance]
	}

	def edit(Long id) {
		def projectInstance = Project.get(id)
		if (!projectInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), id])
			redirect(action: "list")
			return
		}

		[projectInstance: projectInstance]
	}

	def update(Long id, Long version) {
		def projectInstance = Project.get(id)
		if (!projectInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), id])
			redirect(action: "list")
			return
		}

		if (version != null) {
			if (projectInstance.version > version) {
				projectInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						  [message(code: 'project.label', default: 'Project')] as Object[],
						  "Another user has updated this Project while you were editing")
				render(view: "edit", model: [projectInstance: projectInstance])
				return
			}
		}

		projectInstance.properties = params

		if (!projectInstance.save(flush: true)) {
			render(view: "edit", model: [projectInstance: projectInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [message(code: 'project.label', default: 'Project'), projectInstance.id])
		redirect(action: "show", id: projectInstance.id)
	}

	def delete(Long id) {
		def projectInstance = Project.get(id)
		if (!projectInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), id])
			redirect(action: "list")
			return
		}

		try {
			projectInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'project.label', default: 'Project'), id])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'project.label', default: 'Project'), id])
			redirect(action: "show", id: id)
		}
	}
}
