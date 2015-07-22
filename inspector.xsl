<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head><title>VAST Inspector</title></head>
  <body>
    <xsl:for-each select="VAST/Ad">
      <h3>System: <xsl:value-of select="InLine/AdSystem" /></h3>
      <h1>Title: <xsl:value-of select="InLine/AdTitle" /> <span>ID: <xsl:value-of select="@id" /></span></h1>
      <div style="width:50%;float:right;">
        Tracking
        <ul>
          <li>
            Impressions
            <ul>
              <xsl:for-each select="InLine/Impression">
                <li><xsl:value-of select="." /></li>
              </xsl:for-each>
            </ul>
          </li>  
          <li>
            firstQuartile
            <ul>
              <xsl:for-each select="//Tracking[@event='firstQuartile']">
                <li><xsl:value-of select="." /></li>
              </xsl:for-each>
            </ul>
          </li>
          <li>
            midPoint
            <ul>
              <xsl:for-each select="//Tracking[@event='midPoint']">
                <li><xsl:value-of select="." /></li>
              </xsl:for-each>
            </ul>
          </li>
          <li>
            thirdQuartile
            <ul>
              <xsl:for-each select="//Tracking[@event='thirdQuartile']">
                <li><xsl:value-of select="." /></li>
              </xsl:for-each>
            </ul>
          </li>
          <li>
            complete
            <ul>
              <xsl:for-each select="//Tracking[@event='complete']">
                <li><xsl:value-of select="." /></li>
              </xsl:for-each>
            </ul>
          </li>
          <li>
            other
          </li>
        </ul>
      </div>
      <div style="width:50%;">
        <select>
          <xsl:for-each select="//MediaFile">
            <option><xsl:value-of select="." /></option>
          </xsl:for-each>
        </select>
      </div>
      <br style="clear:both;" />
    </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>