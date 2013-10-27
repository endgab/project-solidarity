<%@ page import="projectsolidarity.domain.Project" %>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="project.title.label" default="Projekt címe" />
	</label>
	<g:textField name="title" value="${projectInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'title', 'error')} ">
	<label for="donatee">
		<g:message code="project.title.donatee" default="Támogatás alanya" />
	</label>
	<g:textField name="donatee" value="${projectInstance?.donatee}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'shortDescription', 'error')} ">
	<label for="shortDescription">
		<g:message code="project.shortDescription.label" default="Rövid leírás" />
		
	</label>
	<g:textField name="shortDescription" value="${projectInstance?.shortDescription}"/>
</div>

<g:message code="project.location.label" default="Helyszín: " />

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'locationCity', 'error')} ">
	<label for="locationCity">
		<g:message code="project.locationCity.label" default="Város" />
	</label>
	<g:textField name="locationCity" value="${projectInstance?.locationCity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'locationCounty', 'error')} ">
	<label for="locationCounty">
		<g:message code="project.locationCounty.label" default="Megye" />
	</label>
	<g:textField name="locationCounty" value="${projectInstance?.locationCounty}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'locationCountry', 'error')} ">
	<label for="locationCountry">
		<g:message code="project.locationCountry.label" default="Ország" />
	</label>
	<g:textField name="locationCountry" value="${projectInstance?.locationCountry}" default="Magyarország"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'neededMoney', 'error')} required">
	<label for="neededMoney">
		<g:message code="project.neededMoney.label" default="Szükséges pénz" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="neededMoney" type="number" value="${projectInstance.neededMoney}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="project.description.label" default="Teljes leírás" />	
	</label>
	<g:textField name="description" value="${projectInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="project.startDate.label" default="Gyűjtés kezdete" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${projectInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="project.endDate.label" default="Gyűjtés vége" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${projectInstance?.endDate}"  />
</div>

<%--  
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'donations', 'error')} ">
	<label for="donations">
		<g:message code="project.donations.label" default="Donations" />
	</label>
	<ul class="one-to-many">
	<g:each in="${projectInstance?.donations?}" var="d">
	    <li>
	    	<g:link controller="donation" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link>
	    </li>
	</g:each>
		<li class="add">
			<g:link controller="donation" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'donation.label', default: 'Donation')])}</g:link>
		</li>
	</ul>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="project.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${projectsolidarity.domain.ProjectStatus?.values()}" keys="${projectsolidarity.domain.ProjectStatus.values()*.name()}" required="" value="${projectInstance?.status?.name()}"/>
</div>
--%>

