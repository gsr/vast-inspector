<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head><title>VAST Inspector</title></head>
  <body>
    <xsl:for-each select="/vast/ad">
      <h3>System: <xsl:value-of select="/vast/ad/inline/adsystem" /></h3>
      <h1>Title: <xsl:value-of select="/vast/ad/inline/adtitle" /> <span>ID: <xsl:value-of select="/vast/ad@id" /></span></h1>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>