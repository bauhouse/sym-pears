<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<style id="s" type="text/css"><xsl:value-of select="welcome-pattern/entry/css" /></style>
	<div id="pattern" class="mod group">
		<h3 class="label">Welcome</h3> 
		<div id="pattern-wrap" class="group"><xsl:copy-of select="welcome-pattern/entry/html/*" /></div>
	</div>
	<div class="group">
		<div id="markup" class="mod">
			<h3 class="label">HTML</h3>
			<a href="#" class="clip" title="select code for copying">
				<img src="{$workspace}/assets/images/icon-copy.png" alt="copy" />
			</a>
			<textarea class="mod-ta"><xsl:copy-of select="welcome-pattern/entry/html/*" /></textarea>
		</div>
		<div id="style" class="mod">
			<h3 class="label">CSS</h3>
			<a href="#" class="clip" title="select code for copying">
				<img src="{$workspace}/assets/images/icon-copy.png" alt="copy" />
			</a>
			<textarea class="mod-ta"><xsl:value-of select="welcome-pattern/entry/css" /></textarea>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>