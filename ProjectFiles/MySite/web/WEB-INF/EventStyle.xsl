<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : ForumStyle.xsl
    Created on : 20 November 2013, 20:52
    Author     : Jamie
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules
         syntax recommendation http://www.w3.org/TR/xslt
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Event</title>
                <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
                <script>
                <![CDATA[
                $(document).ready(function() {
                $('#span').hover(function() {
                    $(this).addClass('underline'); //to make text underlined on hover
                    $('#imagepop').show(); //displays image on mouse in
                }, function() {
                    $(this).removeClass('underline'); //remove underline on mouse out
                    $('#imagepop').hide(); //hides image on mouse out
                });
                });
                ]]>
                </script>
                <script>
                <![CDATA[
                $(document).ready(function() {
                $('#span2').hover(function() {
                    $(this).addClass('underline2'); //to make text underlined on hover
                    $('#imagepop2').show(); //displays image on mouse in
                }, function() {
                    $(this).removeClass('underline2'); //remove underline on mouse out
                    $('#imagepop2').hide(); //hides image on mouse out
                });
                });
                ]]>
                </script>
                <script>
                <![CDATA[
                $(document).ready(function() {
                $('#span3').hover(function() {
                    $(this).addClass('underline3'); //to make text underlined on hover
                    $('#imagepop3').show(); //displays image on mouse in
                }, function() {
                    $(this).removeClass('underline3'); //remove underline on mouse out
                    $('#imagepop3').hide(); //hides image on mouse out
                });
                });
                ]]>
                </script>
                <script>
                <![CDATA[
                $(document).ready(function() {
                $('#span4').hover(function() {
                    $(this).addClass('underline4'); //to make text underlined on hover
                    $('#imagepop4').show(); //displays image on mouse in
                }, function() {
                    $(this).removeClass('underline4'); //remove underline on mouse out
                    $('#imagepop4').hide(); //hides image on mouse out
                });
                });
                ]]>
                </script>
                <style>
                    <![CDATA[
                    .hidden{
                    display: none;
                    height: 300px;
                    padding: 5px 0px 0px 5px;
                    position: absolute;
                    width: 200px;
                    }
                    .underline{
                    text-decoration: underline;
                    }
                    .hidden2{
                    display: none;
                    height: 300px;
                    padding: 5px 0px 0px 5px;
                    position: absolute;
                    width: 200px;
                    }
                    .underline2{
                    text-decoration: underline;
                    }
                    .hidden3{
                    display: none;
                    height: 300px;
                    padding: 5px 0px 0px 5px;
                    position: absolute;
                    width: 200px;
                    }
                    .underline3{
                    text-decoration: underline;
                    }
                    .hidden4{
                    display: none;
                    height: 300px;
                    padding: 5px 0px 0px 5px;
                    position: absolute;
                    width: 200px;
                    }
                    .underline4{
                    text-decoration: underline;
                    }
                    ]]>
                </style>
            </head>
            <link href='http://fonts.googleapis.com/css?family=UnifrakturMaguntia' rel='stylesheet' type='text/css'/>
            <body background="Images/WallpaperBack.jpg">
                <center>
                    <img width="550" height="150" src="{//Title/node()}"/>
                    <br />
                    <div id="MainScroll" style="height:780;width:1000;background-repeat:no-repeat;background-image:url('Images/InnerScroll.png');">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div id="Information" style="height:600px;width:750px">
                            <xsl:for-each select="gameofthrones[EventName='The Red Wedding']">
                                <h1>
                                    <i>
                                        <font color="#8E0000" face="UnifrakturMaguntia">
                                            <xsl:value-of select="EventName"/>
                                        </font>
                                    </i>
                                </h1>
                                <h3>
                                    The Houses Involed : <i>
                                        <xsl:value-of select="Involed"/>
                                    </i>
                                </h3>
                                <h3>
                                    The Main Deaths : 
                                    <span id="span">
                                        <xsl:value-of select="Death1"/>
                                    </span>
                                    <img class="hidden" id="imagepop" src="CImages/DeathRobb.png"/> ,
                                    
                                    <span id="span2">
                                        <xsl:value-of select="Death2"/>
                                    </span>
                                    <img class="hidden2" id="imagepop2" src="CImages/DeathCat.png"/> ,
                                    
                                    <span id="span3">
                                        <xsl:value-of select="Death3"/>
                                    </span>
                                    <img class="hidden3" id="imagepop3" src="CImages/DeathTal.png"/>
                                    and
                                    <span id="span4">
                                       <xsl:value-of select="Death4"/>
                                    </span>
                                    <img class="hidden4" id="imagepop4" src="CImages/DeathNorth.png"/>
                                    
                                </h3>                 
                                <h3> 
                                    <i>Prelude to the Event</i>  
                                </h3>
                                <h4>
                                    <i>
                                        <xsl:value-of select="Prelude"/>
                                    </i>
                                </h4>
                                <h3> 
                                    <i>The Main Event</i>   
                                </h3>
                                <h4>
                                    <i>
                                        <xsl:value-of select="Event"/>
                                    </i>
                                </h4>
                            </xsl:for-each>
                            <form action ="MainPageServlet">
                                <input type="image" src="Images/BackBtn.png" alt="Submit" width="150" height="90"/>
                            </form>
                        </div>
                    </div>
                </center>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

