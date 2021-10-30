<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:e="http://www.eagleinvsys.com/2011/EagleML-2-0">			  
<xsl:mode on-no-match="shallow-copy" streamable="true"/>
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="//e:accountTransaction[e:rating/e:updateDate[text()!='2012-12-12'] | e:rating/e:ratingDataModel/e:spValue[not (starts-with(text(),'BT'))]]">
        <!-- no action -->
    </xsl:template>
</xsl:stylesheet>