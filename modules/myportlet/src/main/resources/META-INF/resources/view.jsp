<%@ include file="/init.jsp" %>

<p>
    <b><liferay-ui:message key="my.caption"/></b>
</p>

<p>
    <portlet:renderURL var="reactURL">
        <portlet:param name="mvcPath" value="/react-view.jsp"/>
    </portlet:renderURL>
</p>

<p>
    <portlet:renderURL var="auiURL">
        <portlet:param name="mvcPath" value="/aui-view.jsp"/>
    </portlet:renderURL>
</p>

<ul>
    <li><a href="<%=reactURL%>">React app sivulle </a></li>
    <li><a href="<%=auiURL%>">Aui esimerkki sivulle. + Themedisplay-olion käyttö </a></li>
</ul>