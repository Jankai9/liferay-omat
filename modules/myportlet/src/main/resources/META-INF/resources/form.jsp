<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<portlet:actionURL name="submitForm" var="submitFormURL" />

<aui:form action="<%= submitFormURL %>" method="post">
    <aui:fieldset>
        <aui:input name="firstName" label="Etunimi">
            <aui:validator name="required" errorMessage="Etunimi on pakollinen" />
        </aui:input>
        <aui:input name="lastName" label="Sukunimi" />
        <aui:input name="email" label="Sähköposti" type="email" />
        <aui:input name="phoneNumber" label="Puhelinnumero" />
    </aui:fieldset>
    <aui:button type="submit" value="Lähetä" />
</aui:form>