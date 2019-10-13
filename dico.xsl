<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : dico.xsl
    Created on : 13 octobre 2019, 20:01
    Author     : baroudi
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xsi="http://myGame/tux">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
  
        <html>
            <head>
                <title>dico.xsl</title>
            </head>
            <body>
                <ul>
                    <xsl:apply-templates select="xsi:dictionnaire/xsi:mot"/>
                    <ul>
                        <xsl:apply-templates select="xsi:dictionnaire/xsi:mot">
                            <xsl:sort select="text()" order="ascending"/>
                            <xsl:sort select="attribute::niveau" order="ascending"/>
                        </xsl:apply-templates>
                    </ul>
                </ul>
              
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="xsi:mot">
     
        <ul> 
        <xsl:value-of select="text()"/> -> niveau :
        <xsl:value-of select="attribute::niveau"/>
        
        <br/>
        </ul>
    
    </xsl:template>

</xsl:stylesheet>
