<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>New Consultation Request</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 14px;
            line-height: 1.5;
        }
        h1, h2, h3, h4, h5, h6 {
            font-weight: bold;
        }
        ul {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }
        li {
            margin-bottom: 10px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>New Consultation Request</h2>
        <p>Hello Admin,</p>
        <p>A new consultation request has been submitted by {{$username}}.</p>
        <p>Here are the details:</p>
        <ul>
            <li><strong>Name:</strong> {{$username}}</li>
            <li><strong>Phone:</strong> {{$user_phone}}</li>
            <li><strong>Email:</strong> {{$user_email}}</li>
            <li><strong>Visa:</strong> {{$visa}}</li>
            <li><strong>Country:</strong> {{$country}}</li>
        </ul>
        <p>Please follow up with the user as soon as possible.</p>
    </div>
</body>
</html>
