<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SGPA Result</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
    </style>
</head>
<body>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <script>
        // Assume you have the calculated SGPA value stored in a variable called sgpaValue
        var formattedResults = "${formattedResults}"; // Replace this with your actual SGPA value

        // Use SweetAlert to display a beautiful congrats box
        Swal.fire({
            title: 'Congratulations!',
            text: 'Your SGPA is ' + formattedResults,
            icon: 'success',
            confirmButtonText: 'Okay'
        }).then(function() {
            // Redirect to index.jsp after a delay of 2000 milliseconds (2 seconds)
            setTimeout(function() {
                window.location.href = 'index.jsp';
            }, 2000);
        });
    </script>
</body>
</html>
