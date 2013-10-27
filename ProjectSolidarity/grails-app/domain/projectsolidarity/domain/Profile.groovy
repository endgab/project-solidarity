package projectsolidarity.domain

class Profile {
	String firstName
	String lastName
	String email
	Organization organization
	User user

    static constraints = {
		email size: 5..64, blank: false, unique: true
		user blank:false, unique : true
		organization blank:true
		firstName size: 3..64, blank: true
		lastName size: 3..64, blank: true
    }
}
