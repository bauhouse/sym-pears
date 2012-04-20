<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<style id="s" type="text/css">
p.welcome,
ol.steps {
	font-size: 1.6em;
	line-height: 1.4;
	}
p.welcome {
	margin: 0 0 1.4em;
	}
p.welcome abbr {
	letter-spacing: 3px;
	}
ol.steps li {
	list-style: decimal;
	margin-left: 1.4em;
	}
</style>
	<div id="pattern" class="mod group">
	</div>
	<div class="group">
		<div id="markup" class="mod">
		</div>
		<div id="style" class="mod">
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>