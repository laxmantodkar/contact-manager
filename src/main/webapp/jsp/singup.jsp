<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .singup {
            height: 90%;
            width: 100%;
        }

        .from {
            height: 100%;
            width: 50%;
            background-color: white;
            margin: 0px auto;
            display: flex;
            flex-direction: column;
            text-align: start;


        }

        .about {
            margin-top: 6rem;
            margin-left: 2rem;
        }

        .infromation {
            font-size: 1.4rem;
            margin-top: 20px;
        }

        .infromation input {
            height: 30px;
            width: 90%;

        }

        .area {

            font-size: 1.4rem;
            margin-top: 20px;

        }

        .area textarea {
            height: 80px;
            width: 90%;
            margin-top: 8px;
        }

        button {
            font-size: 20px;
            border-radius: 10px;
            padding: 5px;

        }

        .button {
            position: relative;
            left: 200px;
            margin-top: 20px;
        }

        .reset {
            margin-left: 40px;
        }
        #checkbox .checkbox{
            height: 1.1rem;
            width: 1.1rem;
        }
        #checkbox{
            font-size: 1.4rem;
            position: relative;
            left: 150px;
        }
    </style>
</head>

<body>
    <jsp:include page="header.jsp" />
    <div class="singup">
        <div class="from">
            <div class="massege"></div>
            <div class="about">

                <h1 style="text-align: center;">REGISTER HERE</h1>
                <form action="do_register" method="post">
                    <div class="infromation">Your Name<br>
                        <input type="text" name="name">
                    </div>
                    <div class="infromation">Your Email<br>
                        <input type="text" name="email">
                    </div>
                    <div class="infromation">Password<br>
                        <input type="text" name="password">
                    </div>
                    <div class="area">
                        Description<br>
                        <textarea name="about"></textarea>
                    </div>
                    <div id="checkbox">
                        <input class="checkbox" type="checkbox" name="agreement"> Accept term and conditions
                    </div>
                    <div class="button">
                        <button class="submit" type="submit">Submit</button>
                        <button class="reset" type="reset">Reset</button>
                    </div>
                </form>
            </div>

        </div>

    </div>
</body>

</html>