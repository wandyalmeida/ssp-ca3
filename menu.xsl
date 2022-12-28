<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:template match="/">
		<table id="menuTable" border="1" class="indent">
			<thead>
				<tr>
					<th>Select</th>
					<th>Movie</th>
					<th>Type</th>
					<th>Time</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="//category">
					<tr>
						<td colspan="3">
							<xsl:value-of select="@name" />
						</td>
					</tr>
					<xsl:for-each select="movie">
						<tr id="{position()}">
							<xsl:attribute name="decaf">
								<xsl:value-of select="boolean(@decaf)" />
							</xsl:attribute>
							<td align="center">
								<input name="item0" type="checkbox" />
							</td>
							<td>
								<xsl:for-each select="Image">
									<Image with="200" height="200"> 
									<xsl:attribute name="src">
										<xsl:value-of select="."/>
									</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									</Image>
								</xsl:for-each>
								
								<b><xsl:value-of select="movie_name" /></b>
							</td>
							<td>
								<xsl:value-of select="type" />
							</td>
							<td align="right">
								<xsl:value-of select="time" />
							</td>
							
						</tr>
					</xsl:for-each>
				</xsl:for-each>
				  

			</tbody>
		</table>
	</xsl:template>
</xsl:transform>