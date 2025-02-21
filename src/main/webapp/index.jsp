<html>
<head><title>Welcome</title></head>
<body>
    <%
        java.util.Calendar cal = java.util.Calendar.getInstance();
        int hour = cal.get(java.util.Calendar.HOUR_OF_DAY);
        String greeting = (hour < 12) ? "Good morning, Mariya Ann Moncy" : "Good afternoon, Mariya Ann Moncy";
    %>
    <h1><%= greeting %>, Welcome to COMP367</h1>
</body>
</html>
