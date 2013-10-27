package projectsolidarity.services

import projectsolidarity.domain.User
import projectsolidarity.domain.Profile

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
	
	def getUserProfile(User user)
	{
		Profile.findByUser(user)
	}
}
