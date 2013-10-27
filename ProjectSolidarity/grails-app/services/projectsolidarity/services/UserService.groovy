package projectsolidarity.services

import projectsolidarity.domain.User

class UserService {
	def sessionService
	
    def loginUser(String userName, String password) {
		def User user = User.list().first()
		sessionService.setSessionUser(user);
		return User.list(max: 1).first()
    }
	
	def logoutUser() {
		sessionService.invalidateSession()
	}
}
