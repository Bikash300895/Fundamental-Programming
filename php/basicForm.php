<?php
    print_r($_POST)
?>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>PHP Form</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="container">
        <form method="post">
            <h2>Get in touch!</h2>
            <div id="error">

            </div>

            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input name="email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="subject">Subject</label>
                <input name="subject" type="text" class="form-control" id="subject" >
            </div>

            <div class="form-group">
                <label for="exampleTextarea">What would you like to ask us</label>
                <textarea class="form-control" name="content" id="content" rows="3"></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>



    <script type="text/javascript">

        $("form").submit(function(e){
            e.preventDefault();

            var error="";

            if($("#subject").val() == ""){
                error += "<p>The subject field is required</p>"
            }

            if(error!=""){
                $("#error").html(error)
            } else {
                $('form').unbind('submit').submit();
            }
        });

    </script>




</body>
</html>
