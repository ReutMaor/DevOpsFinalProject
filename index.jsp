<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Web App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .container {
            text-align: center;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input, button {
            margin-top: 10px;
            padding: 10px;
        }
        .error {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <input type="text" id="username" placeholder="Enter username" oninput="validateInput()">
        <input type="password" id="password" placeholder="Enter password">
        <button onclick="login()">Login</button>
        <p id="error" class="error"></p>
        <p id="output"></p>
    </div>

    <script>
        const validUsernames = ["refael", "avichai", "chen", "maor", "reut"];
        const validPassword = "123";

        function validateInput() {
            let input = document.getElementById("username").value;
            let regex = /^[a-zA-Z0-9]*$/;
            if (!regex.test(input)) {
                document.getElementById("error").innerText = "Only English letters and numbers are allowed.";
            } else {
                document.getElementById("error").innerText = "";
            }
        }

        function login() {
            let username = document.getElementById("username").value;
            let password = document.getElementById("password").value;
            let errorElement = document.getElementById("error");
            let outputElement = document.getElementById("output");

            if (!validUsernames.includes(username)) {
                errorElement.innerText = "Invalid username.";
                outputElement.innerText = "";
                return;
            }

            if (password !== validPassword) {
                errorElement.innerText = "Invalid password.";
                outputElement.innerText = "";
                return;
            }

            errorElement.innerText = "";
            outputElement.innerText = "Login successful!";
        }
    </script>
</body>
</html>