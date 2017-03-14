<?php

print_r($_POST);

echo  "Hello".$_POST["name"];

?>

<p>What is your name? </p>

<form method="post">
    <input name="name" type="text">
    <input type="submit" value="Go">
</form>