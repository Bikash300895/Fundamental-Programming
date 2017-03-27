<?php
header('Content-type: application/josn');

$people = array(
    'Alex' => array(
        'age' => 24,
        'location' => 'Greenwich',
        'job' => 'Web developer'
    ),
    'Bikash' => array(
        'age' => 21,
        'location' => 'Khulna',
        'job' => 'Engineer'
    )
);

$return = array('exists' => false);

if(isset($_GET['name'])){
    $name = trim($_GET['name']);
    if(isset($people[$name])){
        $return['exists'] = true;
        $return['information'] = $people[$name];
    }
}

echo json_encode($return);