package projectsolidarity.domain

class User {
	String userName
	String password

    static constraints = {
		userName size: 5..64, blank: false, unique: true
		password size: 6..64
    }
}
