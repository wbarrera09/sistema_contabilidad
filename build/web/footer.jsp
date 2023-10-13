<%-- 
    Document   : footer
    Created on : Sep 27, 2023, 5:43:17 PM
    Author     : willi
--%>


<!-- Clase de iconos -->

<%
    class Icon {

        private String name = "";
        private String color = "";

        // Constructor crea el objeto y recibe como valores las variables que se envian entre parentesis
        // dentro del constructor, asigna lo que recibe en parentesis a las variables del objeto
        Icon(String name, String color) {
            this.name = name;
            this.color = color;
        }
    }

    Icon[] icons = {
        new Icon("facebook-square", "#1877F2"), // Azul oscuro
        new Icon("instagram", "#E4405F"), // Rosa
        new Icon("whatsapp", "#25D366"), // Verde (similar al logo de WhatsApp)
        new Icon("tumblr-square", "black"), // Negro
        new Icon("youtube-play", "red"), // Rojo
        new Icon("twitter", "#1DA1F2"), // Azul claro
        new Icon("google-plus", "#DB4437"), // Rojo
        new Icon("skype", "#00AFF0"), // Azul claro
        new Icon("telegram", "#0088cc"), // Azul oscuro
        new Icon("btc", "#F7931A"), // Naranja
        new Icon("cc-visa", "#1A1F71"), // Azul oscuro
        new Icon("cc-stripe", "#00AFE1"), // Azul claro
        new Icon("cc-paypal", "#0079C1"), // Azul claro
        new Icon("cc-mastercard", "#EC2328"), // Rojo
        
    };


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    </head>
    <body>
        <hr>
        <!-- Footer -->
        <footer class="page-footer font-small special-color-dark pt-4">
            <!-- Footer Elements -->
            <!-- Social buttons -->
            <ul class="list-unstyled list-inline text-center">

                <!-- Bucle for para rendedizar los iconos en HTML -->
                <%                        for (int i = 0; i < icons.length; i++) {
                %>
                <li class="list-inline-item">
                    <a class="btn-floating btn-fb mx-1">
                        <i class="fa fa-<%=icons[i].name%>" style="font-size:48px;color:<%=icons[i].color%>"></i>
                    </a>
                </li>
                <%
                    }
                %>

                <!--<li class="list-inline-item">
                    <a class="btn-floating btn-fb mx-1">
                        <i class="fa fa-facebook" style="font-size:48px;color:darkblue"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-tw mx-1">
                        <i class="fa fa-instagram" style="font-size:48px;color:pink"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-gplus mx-1">
                        <i class="fa fa-google-plus" style="font-size:48px;color:black"></i></a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-li mx-1">
                        <i class="fa fa-tumblr-square" style="font-size:48px;color:grey"></i></a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-dribbble mx-1">
                        <i class="fa fa-whatsapp" style="font-size:48px;color:green"></i></a>
                </li>
                
                


                <li class="list-inline-item">
                    <a class="btn-floating btn-btc mx-1">
                        <i class="fa fa-bitcoin" style="font-size:48px;color:goldenrod"></i>            
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-btc mx-1">
                        <i class="fa fa-dollar" style="font-size:48px;color:green"></i>            
                    </a>
                </li>-->

            </ul>
            <!-- Social buttons -->
            <!-- Footer Elements -->
            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© 2023 UNAB EL SALVADOR - PROGRAMACIÓN IV: <a
                    href="#">William Enrique Barrera Cordero - bc0614012021</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </body>
</html>
