<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <%
        java.util.Calendar cal = java.util.Calendar.getInstance();
        int hour = cal.get(java.util.Calendar.HOUR_OF_DAY);
        String greeting;
        if (hour < 12) {
            greeting = "Welcome, Good morning, Mariya Ann Moncy";
        } else {
            greeting = "Welcome,Good afternoon, Mariya Ann Moncy";
        }
    %>
    <h1><%= greeting %>, Welcome to COMP367</h1>
</body>
</html>
