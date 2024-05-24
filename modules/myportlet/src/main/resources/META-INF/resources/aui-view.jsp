<%@ include file="/init.jsp" %>

<button id="showThemeDisplayButton">Avaa ThemeDisplay JS</button>
<button id="showThemeDisplayButton2">Avaa ThemeDisplay AUI</button>

<div id="themeDisplayContainer" style="display: none;">
	<jsp:include page="themeDisplay.jsp" />
</div>

<!-- tässä on JS esimerkki -->
<script>
	document.getElementById('showThemeDisplayButton').addEventListener('click', function() {
		var themeDisplayContainer = document.getElementById('themeDisplayContainer');
		if (themeDisplayContainer.style.display === 'none') {
			themeDisplayContainer.style.display = 'block';
		} else {
			themeDisplayContainer.style.display = 'none';
		}
	});
</script>

<!-- tässä on AUI esimerkki -->
<aui:script use="aui-base">
	A.one('#showThemeDisplayButton2').on('click', ()=> {
		const themeDisplayContainer = A.one('#themeDisplayContainer');
		if (themeDisplayContainer.getStyle('display') === 'none') {
			themeDisplayContainer.setStyle('display', 'block');
		} else {
			themeDisplayContainer.setStyle('display', 'none');
		}
	});
</aui:script>
