package projectsolidarity.controller

import projectsolidarity.services.UserService

class UserController {
	def UserService userService
	
    def logout() {
        userService.logoutUser()
        redirect(action: "login")
    }

    def login() 
	{
		userService.loginUser(params["userName"], params["password"])
	}
}
