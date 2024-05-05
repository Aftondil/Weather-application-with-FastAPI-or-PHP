<?php
date_default_timezone_set('Asia/Tashkent');

//$url = 'https://api.openweathermap.org/data/2.5/weather?q=' . $_GET['city'] . '&appid=xxx&units=metric';
$url = 'https://api.openweathermap.org/data/2.5/weather?units=metric' . '&appid=a7d349368f7863ab020c768792f83bac' . '&q=' . $_GET['city'];
// Get data from openweathermap and store in JSON object
$data = file_get_contents($url);
$json = json_decode($data, true);

// Fetch required fields
$weather_description = $json['weather'][0]['main'];
$weather_temperature = $json['main']['temp'];
$weather_wind = $json['wind']['speed'];
$humidity = $json['main']['humidity'];
$icon = $json['weather'][0]['icon'];
$weather_when = date("Y-m-d H:i:s"); // now
$city = $json['name']; // name of city

// Build INSERT SQL statement
$sql_insert = "INSERT INTO weather (description, temperature, wind, weather_when, city, humidity, icon)
    VALUES('{$weather_description}', {$weather_temperature}, {$weather_wind}, '{$weather_when}', '{$city}', '{$humidity}', '{$icon}')";

// Run SQL statement and report errors
if (!$mysqli -> query($sql_insert)) {
    echo("<h4>SQL error description: " . $mysqli -> error . "</h4>");
}

?>



