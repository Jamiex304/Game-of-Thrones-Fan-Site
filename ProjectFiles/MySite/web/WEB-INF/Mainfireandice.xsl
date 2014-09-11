<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Home Page</title>
            
                <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
                <script>
                <![CDATA[
                $(document).ready(function(){
                $("#flip").click(function(){
                $("#panel").fadeToggle("slow");
                });
                });
                ]]>
                </script>
                <script>
                    <![CDATA[
                    function bigImg2(x)
                    {
                    x.style.height="50px";
                    x.style.width="355px";
                    }

                    function normalImg2(x)
                    {
                    x.style.height="45px";
                    x.style.width="350px";
                    }
                    ]]>
                </script>
            </head>
            <link href='http://fonts.googleapis.com/css?family=UnifrakturMaguntia' rel='stylesheet' type='text/css'/>
            <body background="Images/WallpaperBack.jpg"> 
                <center>
                    <img width="550" height="150" src="{//Title/node()}"/>
                    <br />
                    <div id="MainScroll" style="height:780;width:1000;background-repeat:no-repeat;background-image:url('Images/InnerScroll.png');">
                        <br />
                        <br />
                        <table>
                            <tr>
                                <form action ="EventServlet">
                                    <td>
                                        <input onmouseover="bigImg2(this)" onmouseout="normalImg2(this)" type="image" src="Images/Eventbtn.png" alt="Submit" width="350" height="45"/>
                                    </td>
                                </form>
                                <form action ="ForumServlet">
                                    <td>
                                        <input onmouseover="bigImg2(this)" onmouseout="normalImg2(this)" type="image" src="Images/Reviewbtn.png" alt="Submit" width="350" height="45"/>
                                    </td>
                                </form>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <div id="Information" style="height:600px;width:750px">
                            <h1>
                                <i>
                                    <font color="#8E0000" face="UnifrakturMaguntia">
                                        <xsl:value-of select="//TitleName" />
                                    </font>
                                </i>
                            </h1>
                            <h2>
                                <i>
                                    <font color="Black">
                                        <xsl:value-of select="//Description" />
                                    </font>
                                </i>
                            </h2>
                            <h2>
                                <font color="#8E0000" face="UnifrakturMaguntia">
                                    <i>view the houses by selecting their sigil</i>
                                </font>
                            </h2>
                            <table>
                                <tr>
                                    <td>
                                        <form action ="ArreynServlet">
                                            <input type="image" src="Images/ArreynSigil.png" alt="Submit" width="90" height="150"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form action ="BaraServlet">
                                            <input type="image" src="Images/BaraSigil.png" alt="Submit" width="90" height="150"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form action ="GreyjoyServlet">
                                            <input type="image" src="Images/GreyjoySigil.png" alt="Submit" width="90" height="150"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form action ="LannisterServlet">
                                            <input type="image" src="Images/LannisterSigil.png" alt="Submit" width="90" height="150"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form action ="StarkServlet">
                                            <input type="image" src="Images/StarkSigil.png" alt="Submit" width="90" height="150"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form action ="TargaryenServlet">
                                            <input type="image" src="Images/TargaryenSigil.png" alt="Submit" width="90" height="150"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form action ="TullyServlet">
                                            <input type="image" src="Images/TullySigil.png" alt="Submit" width="90" height="150"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form action ="TyrellServlet">
                                            <input type="image" src="Images/TyrellSigil.png" alt="Submit" width="90" height="150"/>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <div id="flip" style="text-align:center;">
                                <input type="image" src="Images/Banner.png" alt="Submit" width="710" height="75"/>
                            </div>
                            <div id="panel" style="text-align:center;display:none;">
                                <img src="Images/Kings.png" height="380px" width="700px"/>
                            </div> 
                        </div>
                        <br />
                    </div>
                </center> 
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>