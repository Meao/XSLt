<!-- doesn't go inside template match -->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:e="http://www.eagleinvsys.com/2011/EagleML-2-0">
    <xsl:mode on-no-match="shallow-copy" />
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="//e:accountTransaction">
        <xsl:variable name="varStartWith">BT</xsl:variable>
        <xsl:for-each select="e:rating">
            <xsl:variable name="varUpdateDate"><xsl:value-of select="e:updateDate"/></xsl:variable>
            <xsl:variable name="varSpValue"><xsl:value-of select="e:ratingDataModel/e:spValue"/></xsl:variable>
            <xsl:if test="$varUpdateDate=2012-12-12">
                <xsl:if test="starts-with($varSpValue,$varStartWith)">
                    <!-- no action -->
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>