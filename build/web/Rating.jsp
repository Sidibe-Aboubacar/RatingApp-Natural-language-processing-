<%-- 
    Document   : Testidee
    Created on : FEB 26 2018, 9:03:56 AM
    Author     SIDIBE ABOUBACAR THOMAS
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link rel="stylesheet" href="css/pulsatingButton.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <head>
        <style>
            * {
                box-sizing: border-box;
            }

            body {
                background-color: #f1f1f1;
            }

            #regForm {
                background-color: #ffffff;
                margin: 30px auto;
                font-family: Raleway;
                padding: 40px;
                width: 70%;
                min-width: 300px;
            }

            #regForm h1,#regForm p {
                text-align: center;  

            }
            #regForm p{
                font-family: italic;
                color:blue;
            }



            /* Mark input boxes that gets an error on validation: */
            #regForm input.invalid {
                background-color: #ffdddd;
            }

            /* Hide all steps by default: */
            #regForm .tab {
                display: none;
            }

            #regForm button {
                background-color: #4CAF50;
                color: #ffffff;
                border: none;
                padding: 10px 20px;
                font-size: 17px;
                font-family: Raleway;
                cursor: pointer;
            }

            #regForm button:hover {
                opacity: 0.8;
            }

            #regForm #prevBtn {
                background-color: #bbbbbb;
            }

            /* Make circles that indicate the steps of the form: */
            #regForm .step {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color:#e8eaf6;
                border: none;  
                border-radius: 50%;
                display: inline-block;
                opacity: 0.8;
            }

            #regForm .step.active {
                background-color: #1a237e;
                opacity: 1;
            }

            /* Mark the steps that are finished and valid: */
            #regForm .step.finish {
                background-color: #3949ab;
            }
            input:focus
            {
                outline: none;
            }
            .w3-theme-l5 {color:#000 !important; background-color:#f0f0f0 !important}
            .w3-theme-l4 {color:#000 !important; background-color:#cccccc !important}
            .w3-theme-l3 {color:#fff !important; background-color:#999999 !important}
            .w3-theme-l2 {color:#fff !important; background-color:#666666 !important}
            .w3-theme-l1 {color:#fff !important; background-color:#333333 !important}
            .w3-theme-d1 {color:#fff !important; background-color:#000000 !important}
            .w3-theme-d2 {color:#fff !important; background-color:#000000 !important}
            .w3-theme-d3 {color:#fff !important; background-color:#000000 !important}
            .w3-theme-d4 {color:#fff !important; background-color:#000000 !important}
            .w3-theme-d5 {color:#fff !important; background-color:#000000 !important}

            .w3-theme-light {color:#000 !important; background-color:#f0f0f0 !important}
            .w3-theme-dark {color:#fff !important; background-color:#000000 !important}
            .w3-theme-action {color:#fff !important; background-color:#000000 !important}

            .w3-theme {color:#fff !important; background-color:#000000 !important}
            .w3-text-theme {color:#000000 !important}
            .w3-border-theme {border-color:#000000 !important}

            .w3-hover-theme:hover {color:#fff !important; background-color:#000000 !important}
            .w3-hover-text-theme {color:#000000 !important}
            .w3-hover-border-theme:hover {border-color:#000000 !important}

            /********
* swing *
*********/

            @-webkit-keyframes swing { 
                20%, 40%, 60%, 80%, 100% { -webkit-transform-origin: top center; } 
                20% { -webkit-transform: rotate(15deg); } 
                40% { -webkit-transform: rotate(-10deg); } 
                60% { -webkit-transform: rotate(5deg); } 
                80% { -webkit-transform: rotate(-5deg); } 
                100% { -webkit-transform: rotate(0deg); } 
            } 
            @keyframes swing { 
                20% { transform: rotate(15deg); } 
                40% { transform: rotate(-10deg); } 
                60% { transform: rotate(5deg); } 
                80% { transform: rotate(-5deg); } 
                100% { transform: rotate(0deg); } 
            } 
            .swing { 
                -webkit-transform-origin: top center; 
                transform-origin: top center; 
                -webkit-animation-name: swing; 
                animation-name: swing;
                -webkit-animation-duration: 1s; 
                animation-duration: 1s; 
                -webkit-animation-fill-mode: both; 
                animation-fill-mode: both; 
            }
            *
            {
                font-family: cursive;
            }


            /********
* pulse *
*********/

            @-webkit-keyframes pulse { 
                0% { -webkit-transform: scale(1); } 
                50% { -webkit-transform: scale(1.1); } 
                100% { -webkit-transform: scale(1); } 
            } 
            @keyframes pulse { 
                0% { transform: scale(1); } 
                50% { transform: scale(1.1); } 
                100% { transform: scale(1); } 
            } 
            .pulse { 
                -webkit-animation-name: pulse; 
                animation-name: pulse; 
                -webkit-animation-duration: 1s; 
                animation-duration: 1s; 
                animation-delay: 2s;
                -webkit-animation-fill-mode: both; 
                animation-fill-mode: both; 
            }



            .bounceIn { 
                -webkit-animation-name: bounceInRight; 
                animation-name: bounceInRight; 
                -webkit-animation-duration: 1s; 
                animation-duration: 1s; 
                -webkit-animation-fill-mode: both; 
                animation-fill-mode: both; 
            }

            ::placeholder
            {
                font-family: cursive;
            }

            /***************
* lightSpeedInLeft *
****************/
            @-webkit-keyframes lightSpeedInLeft { 
                0% { -webkit-transform: translateX(-100%) skewX(30deg); opacity: 0; } 
                60% { -webkit-transform: translateX(20%) skewX(-30deg); opacity: 1; } 
                80% { -webkit-transform: translateX(0%) skewX(15deg); opacity: 1; } 
                100% { -webkit-transform: translateX(0%) skewX(0deg); opacity: 1; } 
            } 
            @keyframes lightSpeedInLeft { 
                0% { transform: translateX(-100%) skewX(30deg); opacity: 0; } 
                60% { transform: translateX(20%) skewX(-30deg); opacity: 1; } 
                80% { transform: translateX(0%) skewX(15deg); opacity: 1; } 
                100% { transform: translateX(0%) skewX(0deg); opacity: 1; } 
            } 
            .lightSpeedInLeft { 
                -webkit-animation-name: lightSpeedInLeft; 
                animation-name: lightSpeedInLeft; 
                -webkit-animation-timing-function: ease-out; 
                animation-timing-function: ease-out; 
                -webkit-animation-duration: 1s; 
                animation-duration: 1s; 
                -webkit-animation-fill-mode: both; 
                animation-fill-mode: both;
            } 


            /*****************
* rotateIn *
*****************/
            @-webkit-keyframes rotateIn { 
                0% { 
                    -webkit-transform-origin: center center; 
                    -webkit-transform: rotate(-200deg); 
                    opacity: 0; 
                } 
                100% { 
                    -webkit-transform-origin: center center; 
                    -webkit-transform: rotate(0); 
                    opacity: 1; 
                } 
            } 
            @keyframes rotateIn { 
                0% { 
                    transform-origin: center center; 
                    transform: rotate(-200deg); 
                    opacity: 0; 
                } 
                100% { 
                    transform-origin: center center; 
                    transform: rotate(0); 
                    opacity: 1; 
                } 
            } 
            .rotateIn { 
                -webkit-animation-name: rotateIn; 
                animation-name: rotateIn;
                -webkit-animation-duration: 1s; 
                animation-duration: 1s; 
                -webkit-animation-fill-mode: both; 
                animation-fill-mode: both;

            }


        </style>


    </head>
    <body class="w3-theme-l5">
        <div class="w3-row-padding ">
            <div class="w3-row-padding ">

                <%--Menu--%>
                <div class="w3-row w3-black">



                    <a href="Team.jsp" class="w3-bar-item w3-button w3-third w3-border-left w3-border-right w3-border-blue" >TEAM <i class="fa fa-vcard w3-text-gray" style="font-size:26px"></i></a>
                    <a href="#" class="w3-bar-item w3-button w3-third w3-border-right w3-border-blue" >SPEECH <span class="w3-hide-small">RECOGNITION</span>   <i class="fa fa-microphone w3-text-gray fa-spin" style="font-size:26px;margin-left: 10px"></i></a>
                    <a href="./Stats" class="w3-bar-item w3-button w3-third" >STATISTIC <img src="images/pie.gif" height="40" width="40"/></a>
                </div>
                <%--End of menu--%>


                <%--Beginning of form--%>
                <form class="w3-card-32 w3-black rotateIn" id="regForm" action="./CustomerServer" method="get">
                    <!-- One "tab" for each step in the form: -->


                    <%--1st action--%>
                    <div class="tab w3-row-padding pulse">
                        <h1 class="w3-text-white w3-xlarge" style="font-family: cursive"><strong>1/3 - Customer registration</strong></h1>
                        <p>

                            <input class="w3-input w3-center w3-theme-l1" placeholder="SPEAK OUT YOUR NAME" id="transcript" name="name"  type="text" readonly="">
                        </p>
                        <p>
                            <input class="w3-input w3-center w3-theme-l1" type="text" placeholder="AUTO GENERATED ID" id="random" name="custNo"  readonly>
                        </p>
                        <%--Red button--%>
                        <div class="w3-row">

                            <%--النابض--%>

                            <a title="Click to start dictation" onclick="startDictation()" class="pulsatingCircle">

                                <!--الدائرة الأولى-->
                                <span class="firstCircle"><span style="position:relative;top:-6.5px;right: 0px;font-size:5px;color:#fff"><i class="material-icons " style="font-size: 7px">record_voice_over</i></i></span></span>

                                <!--الدائرة الثانية-->
                                <span class="secondCircle"></span>

                                <!--الدائرة الثالثة-->
                                <span class="thirdCircle"></span>

                            </a> 

                        </div>

                        <%--End Red button--%>
                    </div>
                    <%--End of 1st action--%>

                    <div class="tab w3-row-padding pulse">
                        <h1><strong>2/3 - Choose product</strong></h1>

                        <div class="w3-row-padding w3-margin-top">

                            <!-- 1st image-->
                            <div class="w3-quarter" id="ipho">
                                <img src="images/iPhone10.png"  style="width:100%;">
                                <div class="w3-container">
                                    <h5 class="w3-center">iPhone</h5>
                                </div>
                            </div><!-- end 1st image-->

                            <!-- 2nd image-->
                            <div class="w3-quarter" id="sam">
                                <img src="images/samsung.png" style="width:100%;">
                                <div class="w3-container">
                                    <h5 class="w3-center">Samsung</h5>
                                </div>
                            </div><!--end 2nd image-->

                            <!-- 3rd image-->
                            <div class="w3-quarter" id="lg">
                                <img src="images/rsz_lg.png" style="width:100%;height: 220px">
                                <div class="w3-container">
                                    <h5 class="w3-center">LG</h5>
                                </div>
                            </div><!-- end 3rd image-->

                            <div class="w3-quarter w3-card" id="son"> 
                                <img src="images/pixel.png" style="width:100%;">
                                <div class="w3-container">
                                    <h5 class="w3-center">Sony</h5>
                                </div>
                            </div>

                        </div>

                        <%--pro--%>
                        <!--result coming here-->
                        <div class="w3-row w3-margin-bottom">
                            <input  class="w3-input w3-center w3-text-white" style="background: rgba(0,0,0,0.6)" placeholder="Choose product" id="pro" name="product"  type="text">
                        </div><%--pro--%>


                        <%--Red button--%>
                        <div class="w3-row">

                            <a title="Click to start dictation" onclick="startDictation2()" class="pulsatingCircle">

                                <span class="firstCircle"><span style="position:relative;top:-6.5px;right: 0px;font-size:5px;color:#fff"><i class="material-icons " style="font-size: 7px">record_voice_over</i></i></span></span>


                                <span class="secondCircle"></span>

                                <span class="thirdCircle"></span>

                            </a> 

                        </div><%--End Red button--%>

                    </div>

                        <%-- 3rd card--%> 
                    <div class="tab w3-row-padding pulse">
                        <h1><strong>3/3 - Give rating</strong></h1>
                        <div class="w3-row">
                            <div class="w3-center">
                                <i class="fa fa-star star" style="font-size:24px"></i>
                                <i class="fa fa-star star" style="font-size:24px"></i>
                                <i class="fa fa-star star" style="font-size:24px"></i>
                                <i class="fa fa-star star" style="font-size:24px"></i>
                                <i class="fa fa-star star" style="font-size:24px"></i>
                                <p><label class="w3-center w3-text-green" id="rateLevel"></label></p>
                                <p><input class="w3-input w3-center" type="text" placeholder="Please give rating" id="rate" name="rate" ></p>
                            </div>
                        </div>
                        <%--Red button--%>
                        <div class="w3-row">

                            <a title="Click to start dictation" onclick="startDictation3()" class="pulsatingCircle">

                                <span class="firstCircle"><span style="position:relative;top:-6.5px;right: 0px;font-size:5px;color:#fff"><i class="material-icons " style="font-size: 7px">record_voice_over</i></i></span></span>


                                <span class="secondCircle"></span>

                                <span class="thirdCircle"></span>

                            </a> 

                        </div>
                    </div>


                    






                    <%-- <div style="overflow:auto;">
                        <div style="text-align:center;">
                            <button type="button" id="prevBtn" onclick="nextPrev(-1)">Précedent <i class="fa fa-arrow-circle-left"></i></button>
                            <button type="button" id="nextBtn" onclick="nextPrev(1)" class="w3-theme-dark">Suivant<i class="fa fa-arrow-circle-right"></i></button>
                        </div>--%>

            </div>
            <!-- Circles which indicates the steps of the form: -->
            <div style="text-align:center;margin-top:40px;">
                <span class="step"></span>
                <span class="step"></span>
                <span class="step"></span>

            </div>
        </form>
        <%--End of form--%>

        <footer class="w3-bottom">
            <marquee  class="w3-row  w3-blue" dir="rtl">
                <h4 class="w3-center w3-text-white">Voice based review system</h4>
            </marquee>

        </footer>
    </div>

    <script>
        var myAudio = document.createElement('audio');
        myAudio.controls = true;
        myAudio.src = 'audio/welcome.mp3';
        myAudio.play();

        var currentTab = 0; // Current tab is set to be the first tab (0)
        showTab(currentTab); // Display the crurrent tab

        function showTab(n) {
            // This function will display the specified tab of the form...
            var x = document.getElementsByClassName("tab");
            x[n].style.display = "block";
            //... and fix the Previous/Next buttons:
            if (n == 0) {
                document.getElementById("prevBtn").style.display = "none";
            } else {
                document.getElementById("prevBtn").style.display = "inline";
            }
            if (n == (x.length - 1)) {

                document.getElementById("nextBtn").innerHTML = "Envoyé";
                document.getElementById("nextBtn").style.backgroundColor = 'green';
            } else {
                document.getElementById("nextBtn").innerHTML = "Suivant";
            }
            //... and run a function that will display the correct step indicator:
            fixStepIndicator(n)
        }

        function nextPrev(n) {
            // This function will figure out which tab to display
            var x = document.getElementsByClassName("tab");
            // Exit the function if any field in the current tab is invalid:
            if (n == 1 && !validateForm())
                return false;
            // Hide the current tab:
            x[currentTab].style.display = "none";
            // Increase or decrease the current tab by 1:
            currentTab = currentTab + n;
            // if you have reached the end of the form...
            if (currentTab >= x.length) {
                // ... the form gets submitted:
                document.getElementById("regForm").submit();
                return false;
            }
            // Otherwise, display the correct tab:
            showTab(currentTab);
        }

        function validateForm() {
            // This function deals with validation of the form fields
            var x, y, i, valid = true;
            x = document.getElementsByClassName("tab");
            y = x[currentTab].getElementsByTagName("input");
            // A loop that checks every input field in the current tab:
            for (i = 0; i < y.length; i++) {
                // If a field is empty...
                if (y[i].value == "") {
                    // add an "invalid" class to the field:
                    y[i].className += " invalid";
                    // and set the current valid status to false
                    valid = false;
                }
            }
            // If the valid status is true, mark the step as finished and valid:
            if (valid) {
                document.getElementsByClassName("step")[currentTab].className += " finish";
            }
            return valid; // return the valid status
        }

        function fixStepIndicator(n) {
            // This function removes the "active" class of all steps...
            var i, x = document.getElementsByClassName("step");
            for (i = 0; i < x.length; i++) {
                x[i].className = x[i].className.replace(" active", "");
            }
            //... and adds the "active" class on the current step:
            x[n].className += " active";
        }

        function startDictation() {

            if (window.hasOwnProperty('webkitSpeechRecognition')) {

                var recognition = new webkitSpeechRecognition();

                recognition.continuous = true;
                //مؤقت
                recognition.interimResults = false;

                recognition.lang = "en-US";
                recognition.start();

                //When result comes from google
                recognition.onresult = function (e)
                {

                    document.getElementById('transcript').value
                            = e.results[0][0].transcript;

                    document.getElementById('random').value = Math.floor(Math.random() * 20);

                    recognition.stop();
                    setTimeout(function ()
                    {
                        nextPrev(1);




                    }, 2000);

                    setTimeout(function ()
                    {


                        var myAudio = document.createElement('audio');
                        myAudio.controls = true;
                        myAudio.src = 'audio/moVoice.mp3';
                        myAudio.play();

                    }, 2000);










                };

                recognition.onerror = function (e)
                {
                    recognition.stop();
                }

            }
        }

        function startDictation2()
        {



            var myAudio = document.createElement('audio');
            myAudio.controls = true;
            myAudio.src = 'audio/moVoice.mp3';




            if (window.hasOwnProperty('webkitSpeechRecognition')) {

                var recognition = new webkitSpeechRecognition();

                recognition.continuous = true;
                recognition.interimResults = false;

                recognition.lang = "en-US";
                recognition.start();

                recognition.onresult = function (e) {
                    var rx = /(^Sam|sam|some|sum|Sun|Zam)/;
                    if (rx.test(e.results[0][0].transcript))
                    {
                        document.getElementById('pro').value = "Samsung";
                    } else
                    {
                        document.getElementById('pro').value= e.results[0][0].transcript;

                        recognition.stop();
                    }
                    var productSelected = document.getElementById('pro').value;
                    if (productSelected == "iPhone")
                    {
                        document.getElementById('ipho').classList.add("swing");

                        setTimeout(function ()
                        {
                            nextPrev(1);


                        }, 2000);

                        setTimeout(function ()
                        {



                            myAudio.play();

                        }, 2000);

                    } else if (productSelected == "Samsung")
                    {
                        document.getElementById('sam').classList.add("swing");
                        setTimeout(function ()
                        {
                            nextPrev(1);


                        }, 2000);
                        setTimeout(function ()
                        {



                            myAudio.play();

                        }, 2000);

                    } else if (productSelected == "LG")
                    {
                        document.getElementById('lg').classList.add("swing");
                        setTimeout(function ()
                        {
                            nextPrev(1);


                        }, 2000);
                        setTimeout(function ()
                        {



                            myAudio.play();

                        }, 2000);

                    } else if (productSelected == "Sony")
                    {
                        document.getElementById('son').classList.add("swing");
                        setTimeout(function ()
                        {
                            nextPrev(1);


                        }, 2000);
                        setTimeout(function ()
                        {



                            myAudio.play();

                        }, 2000);

                    } else
                    {
                        document.getElementById("pro").value = "Wrong value!!! please try again";
                    }





                };

                //recognition.onerror = function (e) {
                //   recognition.stop();
                //}

            }
        }


        function startDictation3()
        {

            if (window.hasOwnProperty('webkitSpeechRecognition')) {

                var recognition = new webkitSpeechRecognition();

                recognition.continuous = false;
                recognition.interimResults = false;

                recognition.lang = "en-US";
                recognition.start();

                recognition.onresult = function (e)
                {

                    document.getElementById('rate').value = e.results[0][0].transcript;
                    recognition.stop();


                    //I set  regular expression that will use later to change the color of stars
                    var oneStar = /(^1|one|on)/;
                    var twoStar = /(^2|two|to)/;
                    var threeStar = /(^3|three|free)/;
                    var fourStar = /(^4|four|for|faster|Foster|Fox Star)/;
                    var fiveStar = /(^5)/;

                    var rateVal = document.getElementById('rate').value;
                    var rateValue = parseInt(rateVal);

                    //get all stars of my form , note that the return type will a array
                    var stars = document.getElementsByClassName("star");
                    //If the user has said 1 star then the 1st star color changes to light orange
                    if (oneStar.test(document.getElementById('rate').value) && (rateValue <= 5 && rateValue >= 1))
                    {
                        //rgb(236,160,0) is light orange color
                        stars[0].style.color = 'rgb(236,160,0)';
                        document.getElementById("rateLevel").innerHTML = "Mauvais";

                        document.getElementById('rate').value = 1;

                        setTimeout(function ()
                        {

                            nextPrev(1);


                        }, 2000);


                    }
                    //If the user has said 2 stars then the first 2 stars color changes to light orange
                    else if (twoStar.test(document.getElementById('rate').value) && (rateValue <= 5 && rateValue >= 1))
                    {
                        stars[0].style.color = 'rgb(236,160,0)';
                        stars[1].style.color = 'rgb(236,160,0)';
                        document.getElementById("rateLevel").innerHTML = "Fair";
                        document.getElementById('rate').value = 2;
                        setTimeout(function ()
                        {
                            nextPrev(1);



                        }, 2000);

                    }
                    //If the user has said 3 stars then the first 3 stars color changes to light orange
                    else if (threeStar.test(document.getElementById('rate').value) && (rateValue <= 5 && rateValue >= 1))
                    {
                        stars[0].style.color = 'rgb(236,160,0)';
                        stars[1].style.color = 'rgb(236,160,0)';
                        stars[2].style.color = 'rgb(236,160,0)';
                        document.getElementById("rateLevel").innerHTML = "Good";
                        document.getElementById('rate').value = 3;
                        setTimeout(function ()
                        {
                            nextPrev(1);


                        }, 2000);


                    }
                    //If the user has said 4 stars then the first 4 stars color changes to light orange
                    else if (fourStar.test(document.getElementById('rate').value))
                    {
                        stars[0].style.color = 'rgb(236,160,0)';
                        stars[1].style.color = 'rgb(236,160,0)';
                        stars[2].style.color = 'rgb(236,160,0)';
                        stars[3].style.color = 'rgb(236,160,0)';
                        document.getElementById("rateLevel").innerHTML = "Very good";
                        document.getElementById('rate').value = 4;
                        setTimeout(function ()
                        {
                            nextPrev(1);



                        }, 2000);


                    }
                    //If the user has said 5 stars then the first 5 stars color changes to light orange
                    else if (fiveStar.test(document.getElementById('rate').value) && (rateValue <= 5 && rateValue >= 1))
                    {
                        stars[0].style.color = 'rgb(236,160,0)';
                        stars[1].style.color = 'rgb(236,160,0)';
                        stars[2].style.color = 'rgb(236,160,0)';
                        stars[3].style.color = 'rgb(236,160,0)';
                        stars[4].style.color = 'rgb(236,160,0)';
                        document.getElementById("rateLevel").innerHTML = "Excellent";
                        document.getElementById('rate').value = 5;
                        //submit the form after 2 seconds
                        setTimeout(function ()
                        {
                            nextPrev(1);



                        }, 2000);


                    }







                };

                recognition.onerror = function (e)
                {
                    recognition.stop();
                }



            }
        }



        function startDictation4()
        {



            var myAudio = document.createElement('audio');
            myAudio.controls = true;
            myAudio.src = 'audio/rating.mp3';




            if (window.hasOwnProperty('webkitSpeechRecognition')) {

                var recognition = new webkitSpeechRecognition();

                recognition.continuous = false;
                recognition.interimResults = false;

                recognition.lang = "en-US";
                recognition.start();

                recognition.onresult = function (e) {
                    var rx = /(^Sam|sam|some|sum|Sun)/;
                    if (rx.test(e.results[0][0].transcript))
                    {
                        document.getElementById('probability').value = "Samsung";
                    } else
                    {
                        document.getElementById('probability').value
                                = e.results[0][0].transcript;

                        recognition.stop();
                    }
                    var productSelected = document.getElementById('probability').value;
                    if (productSelected == "iPhone")
                    {
                        document.getElementById('iphop').classList.add("swing");
                        setTimeout(function ()
                        {
                            document.getElementById('regForm').submit();


                        }, 2000);



                    } else if (productSelected == "Samsung")
                    {
                        document.getElementById('samp').classList.add("swing");
                        setTimeout(function ()
                        {
                            document.getElementById('regForm').submit();


                        }, 2000);


                    } else if (productSelected == "LG")
                    {
                        document.getElementById('lgp').classList.add("swing");
                        setTimeout(function ()
                        {
                            document.getElementById('regForm').submit();


                        }, 2000);


                    } else if (productSelected == "Sony")
                    {
                        document.getElementById('sonp').classList.add("swing");
                        setTimeout(function ()
                        {
                            document.getElementById('regForm').submit();


                        }, 2000);

                    } else
                    {
                        document.getElementById("probability").value = "Wrong value!!! please try again";
                    }





                };

                //recognition.onerror = function (e) {
                //   recognition.stop();
                //}

            }
        }

    </script>

</body>
</html>
