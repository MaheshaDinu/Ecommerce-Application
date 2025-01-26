<!DOCTYPE html>
<%@ page import="lk.ijse.ecommerceapplication.Entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>

<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>

<!-- Navbar -->
<% String currentPage = "user"; %>
<%@ include file="includes/adminNavBar.jsp" %>

<!-- Content -->
<div class="container mt-5">
    <h1 class="text-center mb-4">Users</h1>
    <% String userListFail = request.getParameter("userListFail"); %>
    <!-- Display error if userListFail is set -->
    <% if (userListFail != null) { %>
    <div class="alert alert-warning" role="alert">
        <%= userListFail %>
    </div>
    <% } else { %>

    <%
        List<User> userList = (List<User>) request.getAttribute("userList");
        if (userList != null && !userList.isEmpty()) {
    %>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Username</th>
            <th>Name</th>
            <th>Address</th>
            <th>Contact Number</th>
            <th>Email</th>
            <th>Active Status</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (User user : userList) {
        %>
        <tr>
            <td><%= user.getUsername() %></td>
            <td><%= user.getName() %></td>
            <td><%= user.getAddress() %></td>
            <td>555-555</td>
            <td><%= user.getEmail() %></td>
            <td>
                <!-- Display active status -->
                <%
                    String badgeClass = user.isActive() ? "bg-success" : "bg-danger";
                    String statusText = user.isActive() ? "Active" : "Inactive";
                %>
                <span id="status-<%= user.getUserId() %>" class="badge <%= badgeClass %>"><%= statusText %></span>
            </td>
            <td>
                <!-- Button with userId -->
                <button class="btn btn-warning" onclick="toggleActiveStatus('<%= user.getUserId() %>', '<%= user.isActive() ? "false" : "true" %>')">Change Status</button>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <% }
    } %>
</div>

<%--<% String statusUpdated = request.getParameter("statusUpdated");--%>
<%--    String statusNotUpdated = request.getParameter("statusNotUpdated");--%>

<%--    if (statusUpdated != null && !statusUpdated.isEmpty()){%>--%>
<%--<!-- Success Toast -->--%>
<%--<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">--%>
<%--    <div id="successToast" class="toast align-items-center text-bg-success border-0" role="alert" aria-live="assertive" aria-atomic="true">--%>
<%--        <div class="d-flex">--%>
<%--            <div class="toast-body">--%>
<%--                <%= statusUpdated %>--%>
<%--            </div>--%>
<%--            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<%} else  if (statusNotUpdated !=null && !statusUpdated.isEmpty()){%>--%>
<%--<!-- Fail Toast -->--%>
<%--<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">--%>
<%--    <div id="failToast" class="toast align-items-center text-bg-danger border-0" role="alert" aria-live="assertive" aria-atomic="true">--%>
<%--        <div class="d-flex">--%>
<%--            <div class="toast-body">--%>
<%--                <%= statusNotUpdated %>--%>
<%--            </div>--%>
<%--            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<%}%>--%>

<!-- JavaScript to handle changing active status -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    function toggleActiveStatus(userId, newStatus) {
        const contextPath = "<%= request.getContextPath() %>";

        $.ajax({
            url: contextPath + `/update-user-status-servlet`,
            type: 'POST',
            data: {
                userId: userId,
                status: newStatus
            },
            success: function (response) {
                location.reload();
                // Parse response from the server
                <%--const data = JSON.parse(response);--%>

                <%--if (data.status === 'success') {--%>
                <%--    // Update the status badge--%>
                <%--    const statusElement = document.getElementById(`status-${userId}`);--%>
                <%--    const buttonElement = document.querySelector(`button[onclick*="${userId}"]`);--%>

                <%--    if (data.newStatus === "true") {--%>
                <%--        // Set to Active--%>
                <%--        statusElement.classList.remove('bg-danger');--%>
                <%--        statusElement.classList.add('bg-success');--%>
                <%--        statusElement.textContent = 'Active';--%>
                <%--        buttonElement.setAttribute('onclick', `toggleActiveStatus('${userId}', 'false')`);--%>
                <%--    } else {--%>
                <%--        // Set to Inactive--%>
                <%--        statusElement.classList.remove('bg-success');--%>
                <%--        statusElement.classList.add('bg-danger');--%>
                <%--        statusElement.textContent = 'Inactive';--%>
                <%--        buttonElement.setAttribute('onclick', `toggleActiveStatus('${userId}', 'true')`);--%>
                <%--    }--%>

                <%--    // Show a success toast--%>
                <%--    showToast(data.message, 'success');--%>
                <%--} else {--%>
                <%--    // Handle error case--%>
                <%--    showToast(data.message, 'danger');--%>
                <%--}--%>
            },
            error: function () {
                // Handle AJAX request failure
                showToast('Failed to update the status. Please try again.', 'danger');
            }
        });
    }




    // Show the toast when the page loads (adjust as needed for your logic)
    function showToast(message, type) {
        const toastHTML = `
        <div class="toast align-items-center text-bg-${type} border-0" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body">${message}</div>
                <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
        </div>
    `;

        const toastContainer = document.createElement('div');
        toastContainer.innerHTML = toastHTML;
        document.body.appendChild(toastContainer);

        const toastElement = new bootstrap.Toast(toastContainer.querySelector('.toast'), { delay: 3000 });
        toastElement.show();

        // Remove the toast after it's hidden
        toastContainer.addEventListener('hidden.bs.toast', function () {
            toastContainer.remove();
        });
    }


</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>

