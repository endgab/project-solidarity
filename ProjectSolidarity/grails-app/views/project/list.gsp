<link type="text/css" href="/css/main.css" />
<div class=project-list>
	<g:render template="project-preview" collection="${projects}" var="project"/>
</div>
<g:applyLayout name="pager">
   <g:paginate controller="project" action="list" total="${projectCount}" max="${projectsPerPage}"/>
</g:applyLayout>

