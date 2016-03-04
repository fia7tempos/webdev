<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="books">
	<h1>책 목록을 가져왔어용~</h1>
	<table>
		<caption>목록일걸요~</caption>
		<tr>
			<th>제목</th>
			<th>저자</th>
		</tr>
		<xsl:for-each select="book">
		<tr>
			<td><xsl:value-of select="title"></xsl:value-of></td>
			<td><xsl:value-of select="author"></xsl:value-of></td>
		</tr>
		</xsl:for-each>
	</table>
	</xsl:template>
</xsl:stylesheet>