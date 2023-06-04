<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
        <style>
            .main {

                height: 90%;
                width: 80%;
                margin: 0px auto;
            }

            .mainHeading {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                width: 100%;
                height: 100%;
                gap: 1rem;
            }

            button {
                border: 1px solid black;
                border-radius: 8px;
                font-size: 1.5rem;
                cursor: pointer;
                padding: 0.2rem 1rem;
                background-color: burlywood;

            }

            button:hover {
                transform: scale(0.98);
            }
        </style>
    </head>

    <body>
        <jsp:include page="header.jsp" />
        <div class="main">
            <div class="mainHeading">
                <h1>Smart Contact Manager</h1>
                <p style="font-size: 1.3rem;">Start collecting your contact in very smart way. We provide very efficient
                    and smarter way to
                    handling contacts </p>

                <button>GET START</button>

            </div>

        </div>
    </body>

    </html>