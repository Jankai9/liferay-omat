<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/init.jsp" %>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/main.css"/>

<p>
    css/scss tyylittely esimerkki
</p>

<!-- tässä on css esimerkki siitä miten p elementtiä tyylitellään inline stylellä -->
<p style="color: red;">Tämä on punainen inline tyylitelty</p>

<!-- ja tässä on esimerkki css tiedoston käytöstä -->
<div class="myportletx">
    <p>Tämä keltavihreä scss tyylitelty</p>
</div>
