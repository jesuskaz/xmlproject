<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
    <xsl:output method = "html" encoding = "UTF-8" doctype-public = "-//W3C//DTD HTML 4.01//EN" doctype-system = "http://www.w3.org/TR/html4/strict.dtd" indent = "yes" />
    <xsl:template match = "/">
        <html>
            <head>
                <title>BIBLIOGRAPHIE DU COURS</title>
            </head>
            <body>
                <xsl:for-each select = "bibliographie/livre">
                    <p>LIVRE : <xsl:value-of select = "titre"/><br/></p>
                    <p>
                        <p>AUTEUR(S):</p>
                        <xsl:for-each select = "auteurs/auteur">
                            <p><xsl:value-of select = "." /><br /></p>
                        </xsl:for-each>
                    </p>
                    <p>TOMES</p> 
                    <xsl:for-each select = "tomes/tome">
                        <p>
                            Nombre de page :<xsl:value-of select = "."/><br/>
                        </p>
                    </xsl:for-each>
                    <p>INFORMATIONS D'EDITION</p>
                    <p>Editeur : <xsl:value-of select = "infosEdition/editeur"/></p>
                    <p>Lieu Edition : <xsl:value-of select = "infosEdition/lieuEdition"/></p>
                    <p>Lieu Impression : <xsl:value-of select = "infosEdition/lieuImpression"/></p>
                    <p>ISBN : <xsl:value-of select = "infosEdition/ISBN"/></p>
                    <p>Avis : <xsl:value-of select = "avis"/></p>
                </xsl:for-each>
                <xsl:for-each select = "bibliographie/article">
                    <p>ARTICLE : <xsl:value-of select = "titre"/></p>
                    <p>AUTEUR(S):</p>
                    <xsl:for-each select = "auteurs/auteur">
                        <p><xsl:value-of select = "."/></p>
                    </xsl:for-each>
                    <p>INFORMATIONS PUBLICATION</p>
                    <p>Nom Journal : <xsl:value-of select = "infosPublication/nomJournal"/></p>
                    <p>Nombre de pages : <xsl:value-of select = "infosPublication/page"/></p>
                    <p>Annee Publication : <xsl:value-of select = "infosPublication/anneePublication"/></p>
                    <p>Numero Journal : <xsl:value-of select = "infosPublication/numeroJournal"/></p>
                    <p>Avis: <xsl:value-of select = "avis"/></p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
