<?xml version = "1.0" encoding = "UTF-8" ?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
    <xsl:output method = "html" encoding = "UTF-8" doctype-public = "-//W3C//DTD HTML 4.01//EN" doctype-system = "http://www.w3.org/TR/html4/strict.dtd" indent = "yes" />
    <xsl:template match = "/">
        <html>
            <head>
                <title>bibliographie</title>
                <link type="text/css" rel="stylesheet" href="projetxml.css"/>
            </head>
            <body>
                <p>BIBLIOGRAPHIE</p>
                <table border = "8">
                    <xsl:for-each select = "bibliographie/livre">
                        <tr>
                            <td>LIVRE <xsl:value-of select = "titre"/></td>
                        </tr><br/>
                        <p>
                            <strong>AUTEUR(S)</strong>
                            <xsl:for-each select = "auteurs/auteur">
                                <p><xsl:value-of select = "." /><br /></p>
                            </xsl:for-each>
                        </p>
                        <G>TOMES</G>
                        <xsl:for-each select = "tomes/tome">
                            <p>
                                Nombre de page :<xsl:value-of select = "."/><br/>
                            </p>
                        </xsl:for-each>
                        <m>INFORMATIONS D'EDITION</m>
                        <p>Editeur : <xsl:value-of select = "infosEdition/editeur"/></p>
                        <p>Lieu Edition : <xsl:value-of select = "infosEdition/lieuEdition"/></p>
                        <p>Lieu Impression : <xsl:value-of select = "infosEdition/lieuImpression"/></p>
                        <p>ISBN : <xsl:value-of select = "infosEdition/ISBN"/></p>
                        <p>Avis : <xsl:value-of select = "avis"/></p>
                    </xsl:for-each>
                </table>
                <b>
                <table border = "4">
                
                    <xsl:for-each select = "bibliographie/article">
                        <tr>
                            <td>ARTICLE : <xsl:value-of select = "titre"/></td>
                        </tr>
                        <strong>AUTEUR(S):</strong>
                        <xsl:for-each select = "auteurs/auteur">
                            <p><xsl:value-of select = "."/></p>
                        </xsl:for-each>
                        <m>INFORMATIONS PUBLICATION</m>
                        <p>Nom Journal : <xsl:value-of select = "infosPublication/nomJournal"/></p>
                        <p>Nombre de pages : <xsl:value-of select = "infosPublication/page"/></p>
                        <p>Annee Publication : <xsl:value-of select = "infosPublication/anneePublication"/></p>
                        <p>Numero Journal : <xsl:value-of select = "infosPublication/numeroJournal"/></p>
                        <p>Avis: <xsl:value-of select = "avis"/></p>
                    </xsl:for-each>
                
                </table>
                </b>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
