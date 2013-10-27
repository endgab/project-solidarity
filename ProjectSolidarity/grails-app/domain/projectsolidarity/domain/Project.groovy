package projectsolidarity.domain

class Project {
	String title
	String donatee
	String locationCountry
	String locationCounty
	String locationCity
	String shortDescription
	int neededMoney
	Date startDate
	Date endDate
	String description
	int collectedMoney
	
	int daysToGo
	int collectedPercentage
	static hasMany = [donations: Donation]
	
	ProjectStatus status
	User owner
	Organization organization
	Date creationTime
	Date updateTime
	
	def beforeInsert = {
		creationTime = new Date()
		updateTime = new Date()
	}
	
	def beforeUpdate = {
		updateTime = new Date()
	}
	
	static constraints = {
		title size: 5..64, blank: false
		donatee size: 5..64, blank: false
		shortDescription size: 8..140, blank: false
		description size: 8..3000, blank: false
		status blank: false
		neededMoney min: 1
		collectedMoney min: 0
		startDate blank: false
		endDate blank: false
		endDate(validator:{
			value, reference ->
			return value > reference.startDate
		})
		daysToGo min: 1
		owner blank: false
		creationTime blank: false
		updateTime blank: false
	}
}
