<!-- adds namespace to each node, leaves out header, valid and party nodes, slower than on no match -->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:e="http://www.eagleinvsys.com/2011/EagleML-2-0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <xsl:variable name="varStartWith">BT</xsl:variable>
        <xsl:variable name="varDate">2012-12-12</xsl:variable>
        <xsl:for-each select="e:EagleML/e:accountTransaction/e:rating">
            <xsl:variable name="varUpdateDate"><xsl:value-of select="e:updateDate"/></xsl:variable>
            <xsl:variable name="varSpValue"><xsl:value-of select="e:ratingDataModel/e:spValue"/></xsl:variable>
            <xsl:if test="$varUpdateDate=$varDate">
                <xsl:if test="starts-with($varSpValue,$varStartWith)">
                    <xsl:apply-templates/>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>