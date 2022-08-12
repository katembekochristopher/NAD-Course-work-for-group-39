<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">E-Commerce Cart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                                <%--<li class="nav-item"><a class="nav-link" href="cartprocess.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>--%>
                                <%--
                                    if(auth!= null){--%>
				
                                <%--li class="nav-item"><a class="nav-link" href="">Cart items</a></li>--%>
				<li class="nav-item"><a class="nav-link" href="logout.jsp">customer_Logout</a></li>
                                <%--} else { --%>
                                <li class="nav-item"><a class="nav-link" href="register.jsp">REGITER NOW</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">customer_Login</a></li>
                                <li class="nav-item"><a class="nav-link" href="tracking.jsp"> customers_likes</a></li>
                                <%--}
--%>
			</ul>
		</div>
	</div>
</nav>