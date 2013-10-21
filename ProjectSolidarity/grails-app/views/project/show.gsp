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
		<div class="left-col ">
		<h1>${projectInstance.title}</h1>
		<div class="prompt-col1">
		    <div class="prompt">
		        <a href="https://s3.amazonaws.com/ksr/projects/515817/photo-little.jpg?1379159942">
		        <img src="https://s3.amazonaws.com/ksr/projects/515817/photo-little.jpg?1379159942" alt=""></a>
		        <a href="/chcem-darovat?id_challenge=764" class="button donate detail">Támogatom</a>
		        <div class="bottom">
		            <div class="progress-bar">
		                <div class="in" style="width: ${projectInstance.collectedPercentage}%">
		                    <div class="tooltip">${projectInstance.collectedPercentage}%</div>
		                </div>
		            </div>
		            <table>
		                <tbody>
		                    <tr>
		                        <th>Összegyűlt</th>
		                        <th>Cél összeg</th>
		                        <th>Hátralévő idő</th>
		                    </tr>
		                    <tr>
		                        <td>${projectInstance.collectedPercentage}%</td>
		                        <td>${projectInstance.neededMoney} Ft</td>
		                        <td>${projectInstance.daysToGo} nap</td>
		                    </tr>
		                </tbody>
		            </table>
		        </div>
		
		        <div class="prompt-info">
		            <p>
		                <em>Projekt felelőse</em><br>
		                <b>PETER BALAZ</b>
		            </p>
		            <p>
		                <em>Támogatást kéri:</em><br>
		                <b>Baláž Peter /Adrian</b>
		            </p>
		            <p>
		                <em>Cél</em><br>
		                <b>${projectInstance.shortDescription}</b>
		            </p>
		            <p>
		                <em>Összegyűlt</em><br>
		                <b>${projectInstance.collectedMoney} Ft</b>
		            </p>
		        </div>
		    </div>
		    <a class="button" href="/create_form_widget.php?id_challenge=764">
		        <span class="text">Získavajte dary cez svoj web</span>
		    	<span class="right"></span>
		        </a>
		</div>
		<div class="prompt-col2">
		 	${projectInstance.description}    
		<div class="gallery">
		
			<a href="https://s3.amazonaws.com/ksr/projects/515817/photo-little.jpg?1379159942" class="image_gallery" rel="group1">
				<img src="https://s3.amazonaws.com/ksr/projects/515817/photo-little.jpg?1379159942" 
				alt="Pomoc pre osamelého otca so synom">
			</a>
		
			<a href="https://s3.amazonaws.com/ksr/projects/515817/photo-little.jpg?1379159942" class="image_gallery" rel="group1">
				<img src="https://s3.amazonaws.com/ksr/projects/515817/photo-little.jpg?1379159942" 
				alt="Pomoc pre osamelého otca so synom">
			
			</a>
		
			<a href="https://s3.amazonaws.com/ksr/projects/515817/photo-little.jpg?1379159942" class="image_gallery" rel="group1">
				<img src="https://s3.amazonaws.com/ksr/projects/515817/photo-little.jpg?1379159942" 
				alt="Pomoc pre osamelého otca so synom">
			</a>
		
		</div>
			
		
		
		    <p class="center">
		        <br>
		            <small><b>Támogasd most:</b></small>
		            <a href="/chcem-darovat?id_challenge=764" class="donate-big detail">
		                Támogatom
		            </a>
		            <br>
		    </p>
		    <h4 class="center">Oszd meg barátaiddal:</h4>
		    <div class="social center"><iframe src="//www.facebook.com/plugins/like.php?href=http://dakujeme.sme.sk/vyzva/764/pomoc-pre-osameleho-otca-so-synom&amp;send=false&amp;layout=button_count&amp;width=140&amp;show_faces=true&amp;action=like&amp;colorscheme=light&amp;font&amp;height=20&amp;appId=157916420944824&amp;locale=sk_SK" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:140px; height:20px;" allowtransparency="true"></iframe>
		        <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.1382126667.html#_=1382288202790&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=http%3A%2F%2Fdakujeme.sme.sk%2Fvyzva%2F764%2Fpomoc-pre-osameleho-otca-so-synom&amp;size=m&amp;text=Pomoc%20pre%20osamel%C3%A9ho%20otca%20so%20synom&amp;url=http%3A%2F%2Fdakujeme.sme.sk%2Fvyzva%2F764%2Fpomoc-pre-osameleho-otca-so-synom" class="twitter-share-button twitter-tweet-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="width: 110px; height: 20px;"></iframe> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);} }(document,"script","twitter-wjs");</script>
		        <div id="___plus_0" style="text-indent: 0px; margin: 0px; padding: 0px; background-color: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 95px; height: 20px; background-position: initial initial; background-repeat: initial initial;"><iframe frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 95px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" width="100%" id="I0_1382288202603" name="I0_1382288202603" src="https://apis.google.com/_/+1/sharebutton?plusShare=true&amp;usegapi=1&amp;bsv=o&amp;action=share&amp;annotation=bubble&amp;hl=sk&amp;origin=http%3A%2F%2Fdakujeme.sme.sk&amp;url=http%3A%2F%2Fdakujeme.sme.sk%2Fvyzva%2F764%2Fpomoc-pre-osameleho-otca-so-synom&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.en.HCz7sBGxMhI.O%2Fm%3D__features__%2Fam%3DAw%2Frt%3Dj%2Fd%3D1%2Frs%3DAItRSTMIoeBwWLfaUPLLRwFmYbfTe7NJUg#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh%2Conauth%2Conload&amp;id=I0_1382288202603&amp;parent=http%3A%2F%2Fdakujeme.sme.sk&amp;pfname=&amp;rpctoken=54908253" data-gapiattached="true" title="+Zdieľať"></iframe></div>
		    </div>
		</div>
		<div class="clear"></div>
	</body>
</html>
