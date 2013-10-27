package projectsolidarity.domain

class Organization {
	String name
/*
	String webpage
	String taxNumer
	int supervisedProjectCount
	int collectedMoney
	Date registrationDate
*/
	
    static constraints = {
		name size: 5..64, blank: false
    }
}
