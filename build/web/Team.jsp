<%-- 
    Document   : Team
    Created on : Mar 4, 2018, 4:34:28 PM
    Author     : macbookpro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Our team</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/w3.css">

    <style>
        html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
        .navbar {
            overflow: hidden;
            background-color: #333;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 2;
        }
        .transparent
        {
           background: rgba(0,0,0,0.2);
        }
    </style>
    <body class="w3-light-grey">

        <div id="st" class="w3-row w3-black w3-animate-bottom navbar">

            <div class="w3-hide-small">
                <a href="Rating.jsp" class="w3-bar-item w3-button w3-quarter w3-border-right w3-border-red w3-hover-white" ><i class="fa fa-mail-reply w3-text-gray" style="font-size:26px"></i> HOME</a>

                <!--<button class="w3-bar-item w3-button w3-third tablink" onclick="openCity('kara', event)"><img class="w3-circle" src="images/moussallati.jpg" height="50" width="50">   Mohammad</button>-->

            </div>
        </div><br><br>

       
        <!-- Page Container -->
        <div class="w3-content w3-margin-top tab" style="max-width:1400px;" id="kara">

            <!-- The Grid -->
            <div class="w3-row-padding w3-margin-top"><br>

                <!-- Left Column -->
                <div class="w3-third">

                    <div class="w3-white w3-text-grey w3-card-4">
                        <div class="w3-display-container">
                            <img src="images/moussallati.jpg" style="width:100%;" alt="Avatar">
                            <div class="w3-display-bottomleft w3-container w3-text-black">
                                <h2 class="transparent w3-text-white">Mohammad mousallati</h2>
                            </div>
                        </div>
                        <div class="w3-container">
                            <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>DBA</p>
                            <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>Bangalore, India</p>
                            <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>mousallati@mail.com</p>
                            <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>9108674896</p>
                            <hr>

                            <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
                            <p>Oracle database</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
                            </div>
                            <p>Mathematics</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">
                                    <div class="w3-center w3-text-white">80%</div>
                                </div>
                            </div>
                            <p>Web designer</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
                            </div>
                            <p>Artificial intelligence</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:70%">70%</div>
                            </div>
                            <br>

                            <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
                            <p>Français</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <div class="w3-round-xlarge w3-teal w3-center" style="height:24px;width:100%">100%</div>
                            </div>
                            <p>English</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <div class="w3-round-xlarge w3-teal" style="height:24px;width:75%">75%</div>
                            </div>
                            <p>Malinké</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%">100%</div>
                            </div>
                            <br>
                        </div>
                    </div><br>

                    <!-- End Left Column -->
                </div>

                <!-- Right Column -->
                <div class="w3-twothird">

                    <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Web Developer / something.com</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Mar 2012 - Dec 2014</h6>
                            <p>Consectetur adipisicing elit. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Graphic Designer / designsomething.com</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jun 2010 - Mar 2012</h6>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p><br>
                        </div>
                    </div>

                    <div class="w3-container w3-card w3-white">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>programmingworld.tech</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>
                            <p>Web Development! All I need to know in one place</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>programmingworld.tech</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>
                            <p>Web Development! All I need to know in one place</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>London Business School</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015</h6>
                            <p>Master Degree</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>School of Coding</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013</h6>
                            <p>Bachelor Degree</p><br>
                        </div>


                    </div>

                    <!-- End Right Column -->
                </div>



                <!-- End Grid -->
            </div>

            <!-- End Page Container -->
        </div>



        <div class="w3-content w3-margin-top tab" style="max-width:1400px;display: none" id="poor">

            <!-- The Grid -->
            <div class="w3-row-padding w3-margin-top"><br>

                <!-- Left Column -->
                <div class="w3-third">

                    <div class="w3-white w3-text-grey w3-card-4">
                        <div class="w3-display-container">
                            <img src="images/moussallati.jpg" style="width:100%;" alt="Avatar">
                            <div class="w3-display-bottomleft w3-container w3-text-black">
                                <h2 class="w3-white">Poornima</h2>
                            </div>
                        </div>
                        <div class="w3-container">
                            <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Art</p>
                            <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>Bangalore, India</p>
                            <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>poor@mail.com</p>
                            <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>89764479</p>
                            <hr>

                            <p>Web designer</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
                            </div>
                            <p>Artificial intelligence</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:70%">70%</div>
                            </div>
                            <br>

                            <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
                            <p>Hindi</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <div class="w3-round-xlarge w3-teal w3-center" style="height:24px;width:100%">100%</div>
                            </div>
                            <p>English</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <div class="w3-round-xlarge w3-teal" style="height:24px;width:90%">90%</div>
                            </div>

                            <br>
                        </div>
                    </div><br>

                    <!-- End Left Column -->
                </div>

                <!-- Right Column -->
                <div class="w3-twothird">

                    <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Front End Developer / w3schools.com</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2015 - <span class="w3-tag w3-teal w3-round">Current</span></h6>
                            <p>Lorem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Web Developer / something.com</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Mar 2012 - Dec 2014</h6>
                            <p>Consectetur adipisicing elit. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Graphic Designer / designsomething.com</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jun 2010 - Mar 2012</h6>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p><br>
                        </div>
                    </div>

                    <div class="w3-container w3-card w3-white">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>programmingworld.tech</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>
                            <p>Web Development! All I need to know in one place</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>London Business School</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015</h6>
                            <p>Master Degree</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>School of Coding</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013</h6>
                            <p>Bachelor Degree</p><br>
                        </div>
                    </div>

                    <!-- End Right Column -->
                </div>

                <!-- End Grid -->
            </div>

            <!-- End Page Container -->
        </div>


        <div class="w3-content w3-margin-top tab" style="max-width:1400px;display: none" id="vin">

            <!-- The Grid -->
            <div class="w3-row-padding w3-margin-top"><br>

                <!-- Left Column -->
                <div class="w3-third">

                    <div class="w3-white w3-text-grey w3-card-4">
                        <div class="w3-display-container">
                            <img src="images/moussallati.jpg" style="width:100%;" alt="Avatar">
                            <div class="w3-display-bottomleft w3-container w3-text-black">
                                <h2 class="w3-white">Vinson</h2>
                            </div>
                        </div>
                        <div class="w3-container">
                            <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>Bangalore, India</p>
                            <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>vinson@mail.com</p>
                            <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>937700404</p>
                            <hr>


                            <p>Web designer</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
                            </div>
                            <br>

                            <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>

                            <p>English</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <div class="w3-round-xlarge w3-teal" style="height:24px;width:75%">75%</div>
                            </div>

                            <br>
                        </div>
                    </div><br>

                    <!-- End Left Column -->
                </div>

                <!-- Right Column -->
                <div class="w3-twothird">

                    <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Front End Developer / w3schools.com</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2015 - <span class="w3-tag w3-teal w3-round">Current</span></h6>
                            <p>Lorem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Web Developer / something.com</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Mar 2012 - Dec 2014</h6>
                            <p>Consectetur adipisicing elit. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>Graphic Designer / designsomething.com</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jun 2010 - Mar 2012</h6>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p><br>
                        </div>
                    </div>

                    <div class="w3-container w3-card w3-white">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>programmingworld.tech</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>
                            <p>Web Development! All I need to know in one place</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>London Business School</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015</h6>
                            <p>Master Degree</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>School of Coding</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013</h6>
                            <p>Bachelor Degree</p><br>
                        </div>
                    </div>

                    <!-- End Right Column -->
                </div>

                <!-- End Grid -->
            </div>

            <!-- End Page Container -->
        </div>


        <footer class="w3-container w3-teal w3-center w3-margin-top">
            <p>Find me on social media.</p>
            <a href="https://www.facebook.com/profile.php?id=100006024076564" target="_blank"><i class="fa fa-facebook-official w3-hover-opacity"></i></a>
            
        </footer>


        <script>
            function openCity(cityName, evt) {
                var i;
                var x = document.getElementsByClassName("tab");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }

                tablinks = document.getElementsByClassName("tablink");
                for (i = 0; i < x.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
                }

                document.getElementById(cityName).style.display = "block";

            }
        </script>


    </body>
</html>
