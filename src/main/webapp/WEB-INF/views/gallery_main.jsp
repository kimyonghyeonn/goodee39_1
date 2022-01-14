<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
@font-face {
	font-family: Moderne Sans;
	src:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/moderne_sans.woff2)
}

* {
	box-sizing: border-box;
}

body {
	margin: 0;
	background: #000;
	background-size: cover;
}

video {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center;
}

div#fashion {
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

header {
	position: fixed;
	width: 100%;
	text-align: center;
	color: white;
	transition: .4s;
}

header:hover {
	background: rgba(255, 255, 255, 0.8);
	color: #000;
}

h1 {
	font-family: Moderne Sans, sans-serif;
	text-align: center;
	font-size: 2rem;
	width: 100%;
	letter-spacing: .5rem;
}

nav a {
	text-decoration: none;
	color: inherit;
	padding: 1rem;
}

h2 {
	font-family: Century Schoolbook, Century Schoolbook L, Georgia, serif;
	font-size: 8vmin;
	text-align: center;
	margin: 2rem 3rem 0;
	mix-blend-mode: overlay;
	color: #fff;
	font-weight: 100;
}
</style>
</head>
<body>
	<video
		poster="${pageContext.request.contextPath}/resources/assets/img/background.mp4"
		playsinline autoplay muted loop>
		<source
			src="${pageContext.request.contextPath}/resources/assets/img/background.mp4"
			type="video/webm">
		<source
			src="${pageContext.request.contextPath}/resources/assets/img/background.mp4"
			type="video/mp4">
	</video>
	<header>
		<h1>Gallery</h1>
		<nav>
			<a href="gallery_nikon.html">Nikon</a> <a href="gallery_fuji.html">Fuji</a>
			<a href="gallery_rollei.html">Rollei</a> <a
				href="gallery_pentax.html">Pentax</a> <a
				href="gallery_polaroid.html">Polaroid</a> <a href="index.html">
				> Back to Main page</a>

		</nav>
	</header>




</body>
</html>