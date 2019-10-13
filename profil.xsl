<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : profil.xsl
    Created on : 13 octobre 2019, 21:13
    Author     : baroudi
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xsi="http://myGame/tux" >
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>profil.xsl</title>
            </head>
            <body>
     
         
                <table width="400" border="1">
                    <tr>
                        <td>
                            <xsl:value-of select="xsi:profil/xsi:nom"/>
                            
                        </td>
                        <td>
                            <xsl:value-of select="xsi:profil/xsi:avatar"/>
                        </td>
                        <td>
                            <xsl:value-of select="xsi:profil/xsi:anniversaire"/>
                        </td>
                    </tr>
                </table>
                <table width="400" border="1">
                    <xsl:apply-templates select="xsi:profil/xsi:parties/xsi:partie"/>
     
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="xsi:partie">
        
        <tr>
            <td>
                <xsl:value-of select="attribute::date" />
          
            </td>
            <td>
                <xsl:value-of select="attribute::trouvé" />
            </td>
            <td>
                <xsl:value-of select="xsi:temps" />
            </td>
            <td>
                <xsl:value-of select="xsi:mot/text()" />
                <td>
                <xsl:value-of select="xsi:mot/attribute::niveau" />
                </td>
            </td>
        </tr>
     
    </xsl:template>
    

</xsl:stylesheet>
