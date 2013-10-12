package projectsolidarity.domain

class Project {
	String title
	String locationCountry
	String locationCounty
	String locationCity
	String shortDescription
	int daysToGo
	int neededMoney
	int collectedPercentage
	
	Date startDate
	Date endDate
	String description
	int collectedMoney
	ProjectStatus status
	static hasMany = [donations: Donation]
	
	User owner
	Date creationTime
	Date updateTime
	
	def beforeInsert = {
		creationTime = new Date()
		updateTime = new Date()
	}
	
	def beforeUpdate = {
		updateTime = new Date()
	}
	
/*
	static constraints = {
		title size: 5..64, blank: false
		description size: 5..64, blank: false
		status blank: false
		neededMoney min: 1
		collectedMoney min: 0
		endDate blank: false
		owner blank: false
		creationTime blank: false
		lastModificationTime blank: false
	}
*/
}
