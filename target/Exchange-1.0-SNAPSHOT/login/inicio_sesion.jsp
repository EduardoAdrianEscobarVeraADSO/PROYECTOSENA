
<%-- 
    Document   : inicio_sesion
    Created on : 25/04/2024, 1:17:44 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exchange-Login</title>
     
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="../Css/styleslogin.css">
        
        <link rel="icon" type="image" href="img/logopage.jpg">
    </head>
    <body>
            <%-- login --%>
                <div class="container-form register">
                <div class="information">
                    <div class="info-childs">
                        <h2>Bienvenido</h2>
                        <p>Para unirte a nuestra comunidad por favor Inicia Sesión con tus datos</p>
                        <input type="button" value="Iniciar Sesión" id="sign-in">
                    </div>
                </div>
                <div class="form-information">
                    <div class="form-information-childs">
                        <h2>Crear una Cuenta</h2>
                        
                        <form class="form form-register" action="/Exchange/login/registro" method="post">

                            <div>
                                <label>
                                    <i class='bx bx-user' ></i>
                                    <input type="text" placeholder="Nombre Usuario" name="userName">
                                </label>
                            </div>
                            <div>
                                <label >
                                    <i class='bx bx-envelope' ></i>
                                    <input type="email" placeholder="Correo Electronico" name="userEmail" >
                                </label>
                            </div>
                           <div>
                                <label>
                                    <i class='bx bx-lock-alt' ></i>
                                    <input type="password" placeholder="Contraseña" name="userPassword">
                                </label>
                           </div>

                            <input type="submit" value="Registrarse">
                            <a href="../index.jsp" class="regresar__home">Regresar</a>

                        </form>
                    </div>
                </div>
            </div>


            <div class="container-form login hide">
                <div class="information">
                    <div class="info-childs">
                        <h2>¡¡Bienvenido nuevamente!!</h2>
                        <p>Para unirte a nuestra comunidad por favor Inicia Sesión con tus datos</p>
                        <input type="button" value="Registrarse" id="sign-up">
                    </div>
                </div>
                <div class="form-information">
                    <div class="form-information-childs">
                        <h2>Iniciar Sesión</h2>
                        
                        <form class="form form-login" action="/Exchange/login/loginSV" method="post">
                            <div>
                                <label >
                                    <i class='bx bx-envelope' ></i>
                                    <input type="email" placeholder="Correo Electronico" name="userEmail">
                                </label>
                            </div>
                            <div>
                                <label>
                                    <i class='bx bx-lock-alt' ></i>
                                    <input type="password" placeholder="Contraseña" name="userPassword">
                                </label>
                            </div>
                            <input type="submit" value="Iniciar Sesión">
                            <a href="../index.jsp" class="regresar__home">Regresar</a>
                        </form>
                    </div>
                </div>
            </div>
            <video autoplay muted loop id="bg-video">
              <source src="../img/vids/vidlogin.mp4" type="video/mp4">
              Tu navegador no soporta la etiqueta de video.
            </video>
            <script src="script.js"></script>
            
            
    </body>
</html>
