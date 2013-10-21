<%@ page import="projectsolidarity.domain.Project" %>

<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="${resource(dir:'/resource/css',file:'main')}" />
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<link type="text/css" href="/css/main.css" />
		<div class=project-list>
			<g:render template="project-preview" collection="${projectInstanceList}" var="project"/>
		</div>
		<g:applyLayout name="pager">
		   <g:paginate controller="project" action="list" total="${projectInstanceTotal}" max="${projectsPerPage}"/>
		</g:applyLayout>
	</body>
</html>

