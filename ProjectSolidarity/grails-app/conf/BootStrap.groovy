import projectsolidarity.domain.Project;
import projectsolidarity.domain.User;
import projectsolidarity.domain.ProjectStatus;

class BootStrap {

    def init = { servletContext ->  
		def x = "hello"
        User user1 = new User(userName: 'user1', email: 'user1@email.com', password: 'test1')  
        User user2 = new User(userName: 'user2', email: 'user2@email.com', password: 'test2')  
  
        Project project1 = new Project(title: 'TestProject1', description: 'In memory test project.', shortDescription: 'In memory test project.',
			locationCountry : "Magyarorsz�g", locationCounty : "Pest", locationCity : "Budapest",  
			status : ProjectStatus.ACTIVE, neededMoney : 10000, collectedMoney : 0, collectedPercentage : 0,
			startDate : new Date(), endDate : new Date(), daysToGo : 100,
			owner: user1, updateTime : new Date(), creationTime : new Date())
		
        user1.save(true) 
		if(user1.hasErrors()){
			println user1.errors
		  }
		
        project1.save(true)
		if(project1.hasErrors()){
			println project1.errors
		  }
		
		println "Project count: " + Project.count()
    }  
    def destroy = {
    }
}