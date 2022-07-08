<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
<xsl:output method="html"
	doctype-system="about:legacy-compat"
	encoding="UTF-8"
	indent="yes" />
<xsl:template match="/CATALOG">
<html lang="de">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CD-Katalog</title>
    <link rel="stylesheet" href="css/cd-catalog.css" />
  </head>
  <body>
    <h1>CD-Katalog</h1>
    <!-- <xsl:value-of select="CD/ARTIST" /> -->
    <!-- <h2>Ausgabe der CD-Titel als Liste</h2>
    <ul>
      <xsl:for-each select="CD">
        <li><xsl:value-of select="TITLE"/></li>
      </xsl:for-each>
    </ul> -->

    <h2>Ausgabe des Katalogs als Tabelle</h2>
    <table>
      <thead>
        <tr>
          <th scope="col">Künstler</th>
          <th scope="col">Titel</th>
          <th scope="col">Land</th>
          <th scope="col">Jahr</th>
          <th scope="col">Preis</th>
          <th scope="col">Verlag</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="CD">
          <xsl:sort select="PRICE" data-type="number"/>
          <!-- <xsl:sort select="YEAR" order="descending"/> -->
          <!-- <xsl:sort select="ARTIST" order="ascending"/> -->
        <!-- tr>td*6>xsl:value-of[select]   -->
        <tr>
          <td>
            <xsl:value-of select="ARTIST"/>
          </td>
          <td>
            <xsl:value-of select="TITLE"/>
          </td>
          <td>
            <xsl:value-of select="COUNTRY"/>
          </td>
          <td>
            <xsl:value-of select="YEAR"/>
          </td>
          <td>
            <xsl:value-of select="PRICE"/>
          </td>
          <td>
            <xsl:value-of select="COMPANY"/>
          </td>
        </tr>
        </xsl:for-each>
      </tbody>
    </table>


  </body>
</html>
</xsl:template>
</xsl:stylesheet>
