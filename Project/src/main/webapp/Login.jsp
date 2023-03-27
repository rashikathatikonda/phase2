<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  	<title>Rashika's Airline</title>
		<link rel="apple-touch-icon" sizes="180x180" href="https://mazipan.github.io/login-page-css/favicon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="https://mazipan.github.io/login-page-css/favicon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="https://mazipan.github.io/login-page-css/favicon/favicon-16x16.png">
		<link rel="manifest" href="https://mazipan.github.io/login-page-css/manifest.json" />
		<meta name="msapplication-TileColor" content="#fdcb04" />
		<meta name="theme-color" content="#fdcb04" />
		<link rel="manifest" href="https://mazipan.github.io/login-page-css/manifest.json">
    <link rel="stylesheet" href="../shared/normalize.css" />
    <link rel="stylesheet" href="../shared/additional.css" />
    <link rel="stylesheet" href="style.css" />
  </head>
  <style>
  @import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap");
.flex {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}
.flex-col {
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -ms-flex-direction: column;
  flex-direction: column;
}

.justify-center {
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
}

.justify-between {
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}

.justify-around {
  -ms-flex-pack: distribute;
  justify-content: space-around;
}

.justify-evenly {
  -webkit-box-pack: space-evenly;
  -ms-flex-pack: space-evenly;
  justify-content: space-evenly;
}

.items-center {
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}

.items-start {
  -webkit-box-align: start;
  -ms-flex-align: start;
  align-items: flex-start;
}

.mx-auto {
  margin: 0 auto;
}

.w-auto {
  width: auto;
}

.w-full {
  width: 100%;
}

.w-half {
  width: 50%;
}

.relative {
  position: relative;
}

.absolute {
  position: absolute;
}

* {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  font-family: "Montserrat", sans-serif;
  color: #3e4348;
  margin: 0;
  padding: 0;
}

body {
  letter-spacing: -0.01em;
  font-size: 1.063rem;
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #fff9ec), color-stop(90%, #fff));
  background: linear-gradient(to bottom, #fff9ec 0, #fff 90%);
}

p {
  color: #3e4348;
  font-size: 0.9411764706rem;
}

a {
  color: #0521ca;
  text-decoration: underline;
  cursor: pointer;
}

h2 {
  font-size: 2rem;
  font-weight: bold;
  margin: 1rem 0;
  text-align: center;
}

.login-screen {
  height: 100vh;
}

@media screen and (max-width: 500px) {
  .login-screen {
    height: auto;
  }
}

.login-mangools {
  max-width: 1024px;
  margin: 0 auto;
  padding: 4rem;
}

@media screen and (max-width: 500px) {
  .login-mangools {
    padding: 1rem;
  }
}

.login-mangools__card {
  -webkit-box-shadow: 0 10px 30px 0 rgba(0, 0, 0, 0.1);
  box-shadow: 0 10px 30px 0 rgba(0, 0, 0, 0.1);
  border-radius: 4px;
  background: white;
  -webkit-animation: fadein ease-in 0.6s;
  animation: fadeIn ease-in 0.6s;
  padding: 1.8rem 2rem;
  max-width: 456px;
  width: 100%;
  margin: 2rem;
}

.login-mangools__footer {
  margin-top: 1rem;
  margin-bottom: 2rem;
  -ms-flex-wrap: nowrap;
  flex-wrap: nowrap;
}

@media screen and (max-width: 800px) {
  .login-mangools__footer {
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
  }

  .login-mangools__footer > a {
    margin-bottom: 1rem;
  }
}

.login-mangools__notes {
  margin-top: 4rem;
  margin-right: auto;
  margin-left: auto;
  max-width: 20rem;
  width: 100%;
}

.login-mangools__notes > a {
  font-size: 0.75rem;
  font-weight: 600;
}

@media screen and (max-width: 800px) {
  .login-mangools__notes {
    margin-top: 0;
  }
}

.card__label {
  font-size: 0.875rem;
  color: #080808;
  margin: 0.5rem 0;
}

.card__icon {
  padding: 0.75rem 1rem 1rem 1rem;
}

.card__icon > svg {
  height: 1.25rem;
  width: 1.25rem;
}

.card__list {
  margin-bottom: 1rem;
}

.card__input {
  padding-top: 0.5rem;
  padding-bottom: 0.5rem;
  padding-left: 3rem;
  padding-right: 1rem;
  font-size: 1.125rem;
  line-height: 28px;
  font-weight: 500;
  width: 100%;
  outline: none;
  border: 1px solid #acacad;
}

@media screen and (max-width: 800px) {
  .card__input {
    font-size: 1rem;
  }
}

.card__input:hover {
  -webkit-box-shadow: rgba(0, 0, 0, 0.18) 0 2px 4px;
  box-shadow: rgba(0, 0, 0, 0.18) 0 2px 4px;
}

.card__input:focus {
  border: 1px solid black;
}

.card__sign-in {
  padding: 0.8rem 3rem;
  color: white;
  max-width: 320px;
  width: 100%;
  margin: 1rem auto 1rem auto;
  background: -webkit-gradient(linear, left top, right top, color-stop(0, #1ba005), to(#0ec851));
  background: linear-gradient(to right, #1ba005 0, #0ec851 100%);
  font-weight: 600;
  border: none;
  border-radius: 24px;
  outline: none;
  text-align: center;
  font-size: 1.125rem;
  -webkit-box-shadow: 0 2px 4px 0 rgba(27, 160, 5, 0.2);
  box-shadow: 0 2px 4px 0 rgba(27, 160, 5, 0.2);
  -webkit-transition: 0.3s;
  transition: 0.3s;
}

.card__sign-in:hover {
  -webkit-box-shadow: 0 5px 20px 0 rgba(27, 160, 5, 0.5);
  box-shadow: 0 5px 20px 0 rgba(27, 160, 5, 0.5);
}

.card__url {
  font-size: 0.875rem;
  font-weight: 600;
  margin-top: 1rem;
}

@media screen and (max-width: 800px) {
  .card__url {
    font-size: 0.75rem;
  }
}

@-webkit-keyframes fadeIn {
  0% {
    opacity: 0;
  }

  100% {
    opacity: 1;
  }
}

@keyframes fadeIn {
  0% {
    opacity: 0;
  }

  100% {
    opacity: 1;
  }
}

.footer__box {
  border-radius: 4px;
  background: white;
  -webkit-box-shadow: 0 2px 10px 0 rgba(0, 0, 0, 0.15);
  box-shadow: 0 2px 10px 0 rgba(0, 0, 0, 0.15);
  height: 36px;
  width: 36px;
  margin-right: 10px;
}

.footer__logo {
  height: 1rem;
}

.footer__text {
  font-weight: 600;
  text-align: center;
  font-size: 1.125rem;
}

.footer__link {
  margin: 0 0.5rem;
  text-decoration: none;
}

@media screen and (max-width: 800px) {
  .footer__link {
    margin: 0.5rem 1rem;
  }
}

.shape-bottom {
  position: absolute;
  bottom: 0;
  left: 0;
  margin-left: 2%;
  margin-bottom: 5%;
  z-index: -1;
}

.shape-bottom__small {
  height: 8rem;
}

.shape-top {
  position: absolute;
  right: 0;
  top: 0;
  margin-top: 8%;
  margin-right: 4%;
  z-index: -1;
}

@media screen and (max-width: 800px) {
  .shape-top {
    margin-top: 12%;
  }
}

@media screen and (max-width: 500px) {
  .shape-top {
    margin-right: 0;
    margin-top: 30%;
  }
}

.shape-top__big {
  height: 14rem;
}
  </style> 
  <body>
    <div class="login-screen flex">
      <div class="login-mangools">
        <div class="login-mangools__bg--small relative flex flex-col items-center">
          <!-- Shape -->
          <div class="flex shape-top">
            <img  style="position: absolute;
    left: -62pc;
    top: -6pc;
    height: 42pc;
    width:  92pc;
    right: 5pc;"        
            src="http://www.myfreetextures.com/wp-content/uploads/2014/10/sky2.jpg">
              <defs>
                <linearGradient id="gradient" x1="0%" y1="0%" x2="0%" y2="100%">
                  <stop offset="0%" style="stop-color: rgb(255, 95, 109)"></stop>
                  <stop offset="100%" style="stop-color: rgb(255, 195, 113)"></stop>
                </linearGradient>
              </defs>
              <path
                id="blob"
                d="M429.5,291.5Q364,333,341.5,398.5Q319,464,249,466.5Q179,469,116.5,431Q54,393,71,321.5Q88,250,98.5,199Q109,148,142.5,84.5Q176,21,246,34Q316,47,352.5,98Q389,149,442,199.5Q495,250,429.5,291.5Z"
                fill="url(#gradient)"
              ></path>
            </svg>
          </div>
          <!-- End Shape -->
          <div class="login-mangools__logo">
            <img src="img/logo.png" class="" style="height: 2.25rem" alt="" />
          </div>
          <h2>Admin Login</h2>
          <div class="login-mangools__card">
            <form action="LoginServlet" class="flex flex-col">
              <div for="" class="flex flex-col card__list">
                <span class="card__label">Username</span>
                <label for="" class="relative">
                  <span class="absolute card__icon">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      xmlns:xlink="http://www.w3.org/1999/xlink"
                      aria-hidden="true"
                      focusable="false"
                      width="1em"
                      height="1em"
                      style="
                        -ms-transform: rotate(360deg);
                        -webkit-transform: rotate(360deg);
                        transform: rotate(360deg);
                      "
                      preserveAspectRatio="xMidYMid meet"
                      viewBox="0 0 36 36"
                    >
                      <path
                        d="M30.61 24.52a17.16 17.16 0 0 0-25.22 0a1.51 1.51 0 0 0-.39 1v6A1.5 1.5 0 0 0 6.5 33h23a1.5 1.5 0 0 0 1.5-1.5v-6a1.51 1.51 0 0 0-.39-.98z"
                        class="clr-i-solid clr-i-solid-path-1"
                        fill="#626262"
                      />
                      <circle cx="18" cy="10" r="7" class="clr-i-solid clr-i-solid-path-2" fill="#626262" />
                      <rect x="0" y="0" width="36" height="36" fill="rgba(0, 0, 0, 0)" />
                    </svg>
                  </span>
                  <input class="card__input" type="text" placeholder="" name="username" />
                </label>
              </div>
              <div for="" class="flex flex-col card__list">
                <span class="card__label">Password</span>
                <label for="" class="relative">
                  <span class="absolute card__icon">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      xmlns:xlink="http://www.w3.org/1999/xlink"
                      aria-hidden="true"
                      focusable="false"
                      width="1em"
                      height="1em"
                      style="
                        -ms-transform: rotate(360deg);
                        -webkit-transform: rotate(360deg);
                        transform: rotate(360deg);
                      "
                      preserveAspectRatio="xMidYMid meet"
                      viewBox="0 0 24 24"
                    >
                      <path
                        d="M20 12c0-1.103-.897-2-2-2h-1V7c0-2.757-2.243-5-5-5S7 4.243 7 7v3H6c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-8zM9 7c0-1.654 1.346-3 3-3s3 1.346 3 3v3H9V7z"
                        fill="#626262"
                      />
                    </svg>
                  </span>
                  <input class="card__input" type="password" placeholder="" name="password" />
                </label>
              </div>
              <button class="card__sign-in" type="submit">Sign In</button>
      
            </form>
          </div>
          <!-- Shape -->
         
              
    <!-- ADDITIONAL CODE -- start YOU MIGHT NOT NEEDED -->
    <footer>
      <a href="TravelDetails.jsp"> Back to Home </a>
      <span class="author">
        Crafted by Rashika</span>
    </footer>
    <!-- ADDITIONAL CODE -- end YOU MIGHT NOT NEEDED -->
  </body>
</html>
