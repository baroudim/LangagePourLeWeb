<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : dico.xsl
    Created on : 8 octobre 2019, 11:01
    Author     : elasrim
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet 
    xmlns:xsi='http://myGame/tux'
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
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
                        </xsl:apply-templates>
                    </ul>
                </ul>
            </body>
        </html>
    </xsl:template>
   
       
    <xsl:template match="xsi:mot">
        <xsl:value-of select="text()"/> <br/>
    </xsl:template>

</xsl:stylesheet>
