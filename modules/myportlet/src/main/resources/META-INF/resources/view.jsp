<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="my.caption"/></b>
</p>



<button id="showThemeDisplayButton">Avaa ThemeDisplay</button>

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
