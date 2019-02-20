<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:my="http://www.w3.org/2005/Atom"
xmlns:gd="http://schemas.google.com/g/2005">
<xsl:output method="xml" omit-xml-declaration="yes"/>
<xsl:template match="/my:feed">
  <xsl:for-each select="my:entry">
  <strong><font color="red">updated </font></strong><xsl:value-of select="my:updated"/><br/>
  <xsl:if test="position() != last()">
    <xsl:text>&#xa;</xsl:text>
  </xsl:if>
  </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
