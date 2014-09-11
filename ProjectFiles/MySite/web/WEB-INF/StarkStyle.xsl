<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : ArreynStyle.xsl
    Created on : 16 November 2013, 19:42
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
                <title>House Stark</title>
            </head>
            <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
            <script>
                <![CDATA[
                $(document).ready(function(){
                $("#flip").click(function(){
                $("#panel").slideToggle("slow");
                });
                });
                ]]>
            </script>
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
                <style>
                    <![CDATA[
                    .hidden{
                    display: none;
                    height: 200px;
                    padding: 5px 0px 0px 5px;
                    position: absolute;
                    width: 150px;
                    }
                    .underline{
                    text-decoration: underline;
                    }
                    .hidden2{
                    display: none;
                    height: 200px;
                    padding: 5px 0px 0px 5px;
                    position: absolute;
                    width: 150px;
                    }
                    .underline2{
                    text-decoration: underline;
                    }
                    ]]>
                </style>
            <body background="Images/HBackground.jpg">
                <center>
                    <img src="Images/StarkSigil.png" alt="Arryn" width="150" height="100"/>
                    <div id="image" style="height:830;width:980;background-image:url('Images/HouseScroll.png');background-repeat:no-repeat;">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div id="Information" style="height:600px;width:750px">
                            <xsl:for-each select="gameofthrones/houses[name='House Stark']">
                                <h1>
                                    <i>
                                        <xsl:value-of select="name"/>
                                    </i>
                                </h1>
                                <h2>
                                    Leader of the House: <span id="span2"><xsl:value-of select="leader"/></span>
                                     <img class="hidden2" id="imagepop2" src="CImages/Stark1.png"/>
                                </h2>
                                <h2>
                                    Known Family: <xsl:value-of select="Family"/>                            
                                    <div id="flip" style="text-align:center;">
                                        <input type="image" src="Images/Treebtn.png" alt="Submit" width="150" height="40"/>
                                    </div>
                                    <div id="panel" style="text-align:center;display:none;">
                                        <img src="Images/StarkFamily.png" height="400px" width="500px"/>
                                    </div> 
                                </h2>
                                <h2>
                                    Hiers: <span id="span"><xsl:value-of select="Hiers"/></span>
                                    <img class="hidden" id="imagepop" src="CImages/Stark2.png"/>
                                </h2>
                                <h2>
                                    Their Words: <i>
                                        <xsl:value-of select="TheirWords"/>
                                    </i>
                                </h2>
                                <h2>
                                    Sworn Houses: <xsl:value-of select="SwornHouses"/>
                                </h2>
                                <h2>
                                    Alliances: <xsl:value-of select="Alliances"/>
                                </h2>
                                <h2>
                                    Enemies: <xsl:value-of select="Enemy"/>
                                </h2>
                                <h2>
                                    <i>History Of The House</i>
                                </h2>
                                <h3>
                                    <xsl:value-of select="BreifHistory"/>
                                </h3>
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
