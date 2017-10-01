# Spring-Security-Test-Application
With Spring security & Spring MVC working on authentication, authorization [csrf].

#Login : 
<p>
 Application starting with custom login page (not Spring login page) with name 'login.jsp' and 'spring-security.xml' will
 handle the authentication op. with checking 'username & password' from database[go to below] if the user found will send the url to 
 'default-target-url="/hello"' else 'authentication-failure-url="/login?error=true" ' thats mean 'spring-security.xml' will
 redirect the user to 'login' page with message in 'sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message' while login op.
 end successfully.
</p>

#Log out : 
<p>
When user pressing 'Logout' button application will send the user to '/j_spring_security_logout' with hidden 
'${_csrf.parameterName}' and '${_csrf.token}' in POST method because <a href="https://docs.spring.io/spring-security/site/docs/current/reference/html/csrf.html">_csrf </a>
need to invalidate session with spessific UID and '@Controller'[SecurityController] page will handle it and will log it out. 
Than will redirect the user to 'login' page again.
</p>

#Access denied :
<pre>
All users have some role like 'ROLE_USER' or 'ROLE_ADMIN' we need to prevent all users to access 'admin' page or panel to do this
we have to add some intercept-urls in 'spring-security.xml' than Spring will work as we want and when the user that doesn't have
permission to view private pages will redirect to 'Spring default access denied page'
Example : <intercept-url pattern="/admin**" access="hasRole('ROLE_ADMIN')" /> just ROLE_ADMIN can access this page.
So to create custom access denied page and redirect to user to it we have to add 'error-page' to 'web.xml' and add this line 
'<access-denied-handler error-page="/accessDenied"/>' to 'spring-security.xml' than handle this url in '@Controller'
[SecurityController] page.
</pre>

I hope this help you.

<h2>For any question :</h2> 
If you have question or feedback about this application please email me at : <a href="mailto:hexa.octabin@gmail.com">hexa.octabin@gmail.com</a>
<hr>
