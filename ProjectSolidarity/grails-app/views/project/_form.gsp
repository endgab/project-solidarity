<%@ page import="projectsolidarity.domain.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'collectedMoney', 'error')} required">
	<label for="collectedMoney">
		<g:message code="project.collectedMoney.label" default="Collected Money" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="collectedMoney" type="number" value="${projectInstance.collectedMoney}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'collectedPercentage', 'error')} required">
	<label for="collectedPercentage">
		<g:message code="project.collectedPercentage.label" default="Collected Percentage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="collectedPercentage" type="number" value="${projectInstance.collectedPercentage}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'creationTime', 'error')} required">
	<label for="creationTime">
		<g:message code="project.creationTime.label" default="Creation Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationTime" precision="day"  value="${projectInstance?.creationTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'daysToGo', 'error')} required">
	<label for="daysToGo">
		<g:message code="project.daysToGo.label" default="Days To Go" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="daysToGo" type="number" value="${projectInstance.daysToGo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${projectInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'donations', 'error')} ">
	<label for="donations">
		<g:message code="project.donations.label" default="Donations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.donations?}" var="d">
    <li><g:link controller="donation" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="donation" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'donation.label', default: 'Donation')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="project.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${projectInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'locationCity', 'error')} ">
	<label for="locationCity">
		<g:message code="project.locationCity.label" default="Location City" />
		
	</label>
	<g:textField name="locationCity" value="${projectInstance?.locationCity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'locationCountry', 'error')} ">
	<label for="locationCountry">
		<g:message code="project.locationCountry.label" default="Location Country" />
		
	</label>
	<g:textField name="locationCountry" value="${projectInstance?.locationCountry}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'locationCounty', 'error')} ">
	<label for="locationCounty">
		<g:message code="project.locationCounty.label" default="Location County" />
		
	</label>
	<g:textField name="locationCounty" value="${projectInstance?.locationCounty}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'neededMoney', 'error')} required">
	<label for="neededMoney">
		<g:message code="project.neededMoney.label" default="Needed Money" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="neededMoney" type="number" value="${projectInstance.neededMoney}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="project.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${projectsolidarity.domain.User.list()}" optionKey="id" required="" value="${projectInstance?.owner?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'shortDescription', 'error')} ">
	<label for="shortDescription">
		<g:message code="project.shortDescription.label" default="Short Description" />
		
	</label>
	<g:textField name="shortDescription" value="${projectInstance?.shortDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="project.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${projectInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="project.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${projectsolidarity.domain.ProjectStatus?.values()}" keys="${projectsolidarity.domain.ProjectStatus.values()*.name()}" required="" value="${projectInstance?.status?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="project.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${projectInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'updateTime', 'error')} required">
	<label for="updateTime">
		<g:message code="project.updateTime.label" default="Update Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updateTime" precision="day"  value="${projectInstance?.updateTime}"  />
</div>

