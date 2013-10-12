package projectsolidarity.domain

class Donation {
	int amount
	Date donationTime
	User user
	Project project
	String comment
	
    static constraints = {
		donationTime blank: false
		amount min: 1
		user nullable: false
		project nullable: false
    }
}
