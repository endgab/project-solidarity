package projectsolidarity.services

import projectsolidarity.domain.Organization

class OrganizationService {
	
	def sessionService

    def getOrganization(Long id) {
		Organization.get(id)
    }
}
