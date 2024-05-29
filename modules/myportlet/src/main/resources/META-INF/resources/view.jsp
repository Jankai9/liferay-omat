<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/init.jsp" %>
<p>
    <b><liferay-ui:message key="my.caption"/></b>
</p>

<portlet:renderURL var="reactURL">
    <portlet:param name="mvcPath" value="/react-view.jsp"/>
</portlet:renderURL>

<portlet:renderURL var="auiURL">
    <portlet:param name="mvcPath" value="/aui-view.jsp"/>
</portlet:renderURL>

<portlet:renderURL var="formURL">
    <portlet:param name="mvcPath" value="/form.jsp"/>
</portlet:renderURL>

<portlet:renderURL var="cssStylingURL">
    <portlet:param name="mvcPath" value="/css-styling.jsp"/>
</portlet:renderURL>

<portlet:renderURL var="freemarkerURL">
    <portlet:param name="mvcPath" value="/freemarker-view.jsp"/>
</portlet:renderURL>

<ul>
    <li><a href="<%=reactURL%>">React app sivulle </a></li>
    <li><a href="<%=auiURL%>">Aui esimerkki sivulle. + Themedisplay-olion käyttö </a></li>
    <li><a href="<%=formURL%>">Aui form sivulle</a></li>
    <li><a href="<%=cssStylingURL%>">css sivulle</a></li>
    <li><a href="<%=freemarkerURL%>">freenarker sivulle</a></li>
</ul>