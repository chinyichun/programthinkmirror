<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link type="text/css" rel="stylesheet" href="../css/program-think.css" />
  </head>
  <body>
  <h1><xsl:value-of select="feed/title"/></h1>
  <xsl:for-each select="feed/entry">
  <p>
  <strong><font color="red">updated </font></strong><xsl:value-of select="updated"/><br/>
  <strong><font color="red">content </font></strong><xsl:value-of select="content"/><br/>
  <strong><font color="red">author </font></strong><xsl:value-of select="author/name"/>
  </p>
  </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
