<div class="page-header">
	<h1>
		Website example <small>with Facebook Platform integration</small>
	</h1>
</div>
<div class="row">
	<div class="span10">
		<g:if test="${!facebook.app.id}">
			<g:render template="/website/configError" />
		</g:if>
		<g:else>
			<!--
			  We use the Facebook JavaScript SDK to provide a richer user experience. For more info,
			  look here: http://github.com/facebook/facebook-js-sdk
			-->
			<div id="fb-root"></div>
			<facebook:initJS appId="${facebook.app.id}" status="true" xfbml="true">
			<g:if test="${!facebook.authenticated}">
				FB.Event.subscribe('auth.statusChange', function(response) {
          			if (response.authResponse) {
            			// user has auth'd your app and is logged into Facebook
            			FB.api('/me', function(me){
              				if (me.name) {
								window.location.reload();
              				}
            			})
          			} 
        		});
        	</g:if>
			</facebook:initJS>

			<h2 class="tab">Authentication</h2>
			<g:if test="${facebook.authenticated}">
				<p>
					Log out via Facebook JavaScript SDK:
					<facebook:logoutLink elementClass="btn"
						nextUrl="${createLink(action:'logout')}">Logout</facebook:logoutLink>
				</p>
			</g:if>
			<g:else>
					<div class="fb-login-button" scope="email"></div>
			</g:else>
			<p>&nbsp;</p>
			<g:if test="${user}">
				<h2 class="tab">Your data</h2>
				<h3>Your profile pic + name</h3>
				<p>
					<img src="https://graph.facebook.com/${user.id}/picture">
					${user.name}<br />
				</p>
				<h3>Your friends</h3>
				<p>
					<g:each in="${userFriends}" var="friend">
						<img src="https://graph.facebook.com/${friend.id}/picture">
					</g:each>
				</p>
			</g:if>
			<g:else>
				<strong><em>You are not Connected.</em></strong>
			</g:else>
			<p>&nbsp;</p>
		</g:else>
		<h2 class="tab">Public data</h2>
		<h3>Profile pic + name</h3>
		<p>
			<img src="https://graph.facebook.com/benorama/picture">
			${benorama?.name}
		</p>
	</div>
	<div class="span4">
		<g:render template="links" />
	</div>
</div>
