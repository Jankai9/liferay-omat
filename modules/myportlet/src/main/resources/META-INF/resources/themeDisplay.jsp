<%@ page import="com.liferay.portal.kernel.util.WebKeys" %>
<%@ page import="com.liferay.portal.kernel.theme.ThemeDisplay" %>
<%@ page import="com.liferay.portal.kernel.model.Layout" %>
<%@ page import="com.liferay.portal.kernel.model.User" %>
<%@ page import="com.liferay.portal.kernel.model.Company" %>
<%@ page import="java.util.List" %>

<%
    // Get the ThemeDisplay object
    ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);

    // Get the Company object
    Company company = themeDisplay.getCompany();

    // Get the User object
    User user = themeDisplay.getUser();

    // Get the real User object
    User realUser = themeDisplay.getRealUser();

    // Get the Layout object
    Layout layout = themeDisplay.getLayout();

    // Get the list of Layout objects
    List<Layout> layouts = themeDisplay.getLayouts();
%>

<h2>ThemeDisplay Information</h2>
<p>UserId: <%= themeDisplay.getUserId() %></p>
<p>SiteGroupId: <%= themeDisplay.getSiteGroupId() %></p>
<p>CompanyId: <%= themeDisplay.getCompanyId() %></p>

<h2>Company Information</h2>
<p>CompanyId: <%= company.getCompanyId() %></p>
<p>CompanyName: <%= company.getName() %></p>

<h2>User Information</h2>
<p>UserId: <%= user.getUserId() %></p>
<p>UserName: <%= user.getFullName() %></p>

<h2>Real User Information</h2>
<p>RealUserId: <%= realUser.getUserId() %></p>
<p>RealUserName: <%= realUser.getFullName() %></p>

<h2>Layout Information</h2>
<p>LayoutId: <%= layout.getLayoutId() %></p>
<p>LayoutName: <%= layout.getName(themeDisplay.getLocale()) %></p>

<h2>Layouts Information</h2>
<% for(Layout layoutItem : layouts) { %>
<p>LayoutId: <%= layoutItem.getLayoutId() %></p>
<p>LayoutName: <%= layoutItem.getName(themeDisplay.getLocale()) %></p>
<% } %>