package projectsolidarity.controller

import projectsolidarity.domain.Project

class ProjectController {
	def index() {
		redirect action:"list", params:params
	}
	
	final int projectsPerPage = 3;
	def list = {
		def offset = params.offset ?: 0;
		[ projects:Project.list(max: projectsPerPage, offset : offset, sort: "daysToGo", order: "asc"),  
			projectCount:Project.count(), projectsPerPage:projectsPerPage ]
	}
}
