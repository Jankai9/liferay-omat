<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="my.caption"/></b>
</p>

<button id="showThemeDisplayButton">Avaa ThemeDisplay JS</button>
<button id="showThemeDisplayButton2">Avaa ThemeDisplay AUI</button>

<div id="themeDisplayContainer" style="display: none;">
	<jsp:include page="themeDisplay.jsp" />
</div>

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

