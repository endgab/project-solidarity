import projectsolidarity.domain.Project;
import projectsolidarity.domain.User;
import projectsolidarity.domain.ProjectStatus;

class BootStrap {

    def init = { servletContext ->  
		def x = "hello"
        User user1 = new User(userName: 'user1', email: 'user1@email.com', password: 'test1')  
        User user2 = new User(userName: 'user2', email: 'user2@email.com', password: 'test2')  
		user1.save(true)
		if(user1.hasErrors()){
			println user1.errors
		  }
		
		
		Project project;
		for(int i = 0; i < 10; i++)
		{
			project = new Project(title: 'TestProject' + i, 
				description: 'Volt egyszer egy olyan fa,amely egy kisfiút szeretett.A fiú mindennap meglátogatta..... Projekt szám: ' + i, 
				shortDescription: 'shortDescription' + i,
				locationCountry : "Magyarország", locationCounty : "Budapest", locationCity : "Budapest",
				status : ProjectStatus.ACTIVE, neededMoney : 10000, collectedMoney : 1000, collectedPercentage : 10,
				startDate : new Date(), endDate : new Date(), daysToGo : 100,
				owner: user1, updateTime : new Date(), creationTime : new Date())
			
			project.save(true)
			if(project.hasErrors()){
				println project.errors
			  }
		}
		
		println "Project count: " + Project.count()
    }  
    def destroy = {
    }
}
