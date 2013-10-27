package projectsolidarity.services

import projectsolidarity.domain.User
import org.codehaus.groovy.grails.web.util.WebUtils

class SessionService {

    def getSessionUser() {
		return WebUtils.retrieveGrailsWebRequest().session["user"]
    }
	
	def setSessionUser(User user) {
		WebUtils.retrieveGrailsWebRequest().session["user"] = user
	}
	
	def invalidateSession() {
		WebUtils.retrieveGrailsWebRequest().session.invalidate()
	}
}
