<?php

// Code Summary:
// 1. It connects to the database and fetches the last row from the table.
// 2. It then checks if the difference between the current time and the time of the last row is greater than 15 minutes.
// 3. If it is, it makes an API call and stores the data in a table.
// 4. If not, it just returns the last row from the table.


// connect php to mysql database using mysqli
$servername = "localhost";  // server name
$username = "root";        // username
$password = "Krishna";   // password
$dbname = "isa";      // database name
$conn = mysqli_connect($servername, $username, $password, $dbname); // connect to database

// query to get the last updated data from the database
$sql_for_data_ret = mysqli_query($conn, "SELECT * FROM weather_details order by weather_when desc limit 1") or die(mysqli_error($conn));
$row = $sql_for_data_ret -> fetch_assoc();  // fetch the data from the database

date_default_timezone_set("Asia/Kathmandu");    // set the timezone to Asia/Kathmandu 
$date = date("Y-m-d H:i:s");    // get the current date and time


$date1 = date_create($date);    // create a date object from the current date and time
$date2= date_create($row['weather_when']);  // create a date object from the last updated date and time

$diff = date_diff($date1,$date2);   // get the difference between the two dates

$min = $diff -> days * 24 * 60;  // get the difference in minutes
$min += $diff -> h * 60;    // add the difference in hours to the difference in minutes
$min += $diff -> i;   // add the difference in minutes to the difference in minutes

if ($min > 15){   // if the difference in minutes is greater than 15 minutes

    $api_url = "https://api.openweathermap.org/data/2.5/weather?q=Stockton-on-Tees&appid=4ace61c97dd546ff57631f7e1ddb996d&units=metric";    // get the weather data from the api
    $ch = curl_init();  // initialize curl
    curl_setopt($ch, CURLOPT_HEADER, 0);    // set the header to 0
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);    // set the return transfer to 1
    curl_setopt($ch, CURLOPT_URL, $api_url);    // set the url to the api url
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);    // set the follow location to 1
    curl_setopt($ch, CURLOPT_VERBOSE, 0);   // set the verbose to 0
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);    // set the ssl verify peer to false
    $response = curl_exec($ch);   // execute the curl
    curl_close($ch);    // close the curl

    $data = json_decode($response);   // decode the json data

$current_temp = $data->main->temp;  // get the current temperature
$loc = $data->name; // get the location
$weather_desc = $data->weather[0]->description; // get the weather description
$humidity = $data->main->humidity;  // get the humidity
$pressure = $data->main->pressure;  // get the pressure
$feels_like = $data->main->feels_like;  // get the feels like temperature
$wind_speed = $data->wind->speed;   // get the wind speed
$icon = $data->weather[0]->icon;    // get the weather icon


$sql = mysqli_query($conn,"INSERT INTO weather_details (weather_temperature, city_name, weather_description, weather_humidity, weather_pressure, weather_feelslike, weather_wind, weather_icon, weather_when) VALUES ('$current_temp', '$loc', '$weather_desc', '$humidity', '$pressure', '$feels_like', '$wind_speed', '$icon', '$date')")or die(mysqli_error($conn)); // insert the data into the database
    $sql_for_data_ret = mysqli_query($conn, "SELECT * FROM weather_details order by weather_when desc limit 1") or die(mysqli_error($conn));    // query to get the last updated data from the database
    $row = mysqli_fetch_object($sql_for_data_ret);  // fetch the data from the database
    print json_encode($row);    // print the data in json format

}
else{
    $sql_for_data_ret = mysqli_query($conn, "SELECT * FROM weather_details order by weather_when desc limit 1") or die(mysqli_error($conn));    // query to get the last updated data from the database
    $row = mysqli_fetch_object($sql_for_data_ret);  // fetch the data from the database
    print json_encode($row);    // print the data in json format
}

?>