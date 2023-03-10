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
						<td colspan="4">
							<xsl:value-of select="@name" />
						</td>
					</tr>
					<xsl:for-each select="movie">
						<tr id="{position()}">
							<xsl:attribute name="animation">
								<xsl:value-of select="boolean(@animation)" />
							</xsl:attribute>
							<td align="center">
								<input name="item0" type="checkbox" />
							</td>
							<td>
							<!--reference link where I got the code https://pt.stackoverflow.com/questions/11322/como-exibir-imagens-com-xsl-com-a-src-da-img-do-arquivo-xml -->
								<xsl:for-each select="Image">
									<Image class="rounded-3" height="200"> 
									<xsl:attribute name="src">
										<xsl:value-of select="."/>
									</xsl:attribute>
									
									</Image>
								</xsl:for-each>
								<xsl:attribute name="align">left</xsl:attribute>
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