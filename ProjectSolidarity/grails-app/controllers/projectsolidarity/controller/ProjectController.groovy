package projectsolidarity.controller

import projectsolidarity.domain.Project

class ProjectController {
	def index() {
		redirect action:"list", params:params
	}
	
	def list = {
		[ projects:Project.list(params), count:Project.count() ]
	}
}
