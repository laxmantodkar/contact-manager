<!DOCTYPE html>
<html lang="en">

<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            width: 100vw;
            height: 100vh;
            background-color: antiquewhite;
        }

        ul {
            display: flex;
            flex-direction: row-reverse;
            justify-content: space-around;

        }

        .headerBar {
            display: flex;
            justify-content: space-between;
            background-color: aquamarine;
            height: 100%;
        }

        .header {
            height: 10%;
        }

        ul li {
            margin-right: 30px;
            margin-top: 16px;
            font-size: 20px;
            list-style: none;
        }
        ul li a {
                text-decoration: none;
               
                border-radius: 8px;
                cursor: pointer;
                padding: 0.2rem 1rem;

            }
    </style>
</head>

<body>
    <div class="header">
        <div class="headerBar">
            <h2 style="margin-top: 16px;">SMART CONTACT MANAGER</h2>
            <ul>
                <li> <a href="singup">SINGUP</a></li>
                <li> <a href="login">LOGIN</a></li>
                <li> <a href="about">ABOUT</a></li>
                <li> <a href="/">HOME</a></li>
            </ul>
        </div>
    </div>
</body>

</html>