import projectsolidarity.domain.Organization
import projectsolidarity.domain.Profile
import projectsolidarity.domain.Project;
import projectsolidarity.domain.User;
import projectsolidarity.domain.ProjectStatus;
import projectsolidarity.services.SessionService

class BootStrap {
    def init = { servletContext -> 
		
		Organization organization1 = new Organization(name: "Máltai Szeretetszolgálat");
		Organization organization2 = new Organization(name: "Gyermekétkeztetési Alapítvány");
		organization1.save(true)
		if(organization1.hasErrors()){
			println organization1.errors
		  }
		organization2.save(true)
		if(organization2.hasErrors()){
			println organization2.errors
		  }
		
        User user1 = new User(userName: 'user1', password: 'password1')  
        User user2 = new User(userName: 'user2', password: 'password2')  
		
		user1.save(true)
		if(user1.hasErrors()){
			println user1.errors
		  }
		user2.save(true)
		if(user2.hasErrors()){
			println user2.errors
		  }
		
		Profile userProfile1 = new Profile(email: "test1@email.com", firstName: "Anna", lastName : "Kiss", user: user1, organization: organization1)
		Profile userProfile2 = new Profile(email: "test2@email.com", firstName: "Tamás", lastName : "Kovács", user: user2, organization: organization2)
		userProfile1.save(true)
		if(userProfile1.hasErrors()){
			println userProfile1.errors
		  }
		userProfile2.save(true)
		if(userProfile2.hasErrors()){
			println userProfile2.errors
		  }
		
		Project project;
		for(int i = 0; i < 10; i++)
		{
			project = new Project(title: 'TestProject' + i, 
				description: i + 'Volt egyszer egy olyan fa,amely egy kisfi�t szeretett.A fiú mindennap megl�togatta.', 
				shortDescription: i + 'shortDescription', donatee : "Szegény Béla",
				locationCountry : "Magyarorsz�g", locationCounty : "Budapest", locationCity : "Budapest",
				status : ProjectStatus.ACTIVE, neededMoney : 10000, collectedMoney : 1000, collectedPercentage : 10,
				startDate : new Date(), endDate : new Date() + 100, daysToGo : 100,
				owner: user1, organization : organization1, updateTime : new Date(), creationTime : new Date())
			
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
