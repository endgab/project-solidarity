package projectsolidarity.services

import projectsolidarity.domain.Project
import projectsolidarity.domain.ProjectStatus

class ProjectService {
	
	def sessionService

    def initProject(Project projectInstance) {
		projectInstance.status = ProjectStatus.ACTIVE
		projectInstance.collectedPercentage = 0
		projectInstance.collectedMoney = 0
		use(groovy.time.TimeCategory) {
			def duration = projectInstance.endDate - projectInstance.startDate
			projectInstance.daysToGo = duration.getDays()
		 }
		projectInstance.owner = sessionService.getSessionUser()
		projectInstance.creationTime = new Date()
		projectInstance.updateTime = new Date()
    }
}
