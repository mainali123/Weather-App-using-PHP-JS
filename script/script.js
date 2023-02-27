if(localStorage.when != null    
    && parseInt(localStorage.when) + 10000 > Date.now()) {  // Checking if the data is already stored in the local storage and if it is less than 10 seconds old
    let freshness = Math.round((Date.now() - localStorage.when)/1000) + " second(s)";  // Calculating the freshness of the data
    // Displaying the values from the local storage
    document.getElementById('freshness').innerHTML = "Last updated " + freshness;   
    document.getElementById('temperature').innerHTML = localStorage.temperature + "°C"; 
    document.getElementById('feels_like').innerHTML = "Feels like: " +localStorage.feels_like + "°C";
    document.getElementById('pressure').innerHTML = "Pressure: " + localStorage.pressure + " pa";
    document.getElementById('humidity').innerHTML = " Humidity: " + localStorage.humidity + "%";
    document.getElementById('wind_speed').innerHTML = "Wind Speed: " + localStorage.wind_speed + "m/s";
    document.getElementById('weather_cond').innerHTML = "Condition: " + localStorage.weather_cond;
    document.getElementById('time_zone').innerHTML = localStorage.time_zone;
    document.getElementById('icon').innerHTML = '<img src=\'https://openweathermap.org/img/wn/'+localStorage.icon+'@2x.png\'>';
    document.getElementById('date').innerHTML = localStorage.date;

}

else {

const days = ['Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat'];    // Days in a week
const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];    // Months in a year

var today = new Date(); // Getting current date

var month = months[today.getMonth()];   // Getting current month
var day = days[today.getDay()]; // Getting current day
var display_dmy = day + ', '+ month +'-'+ today.getDate() +'-'+ today.getFullYear(); //displaying the date in the format of day, month-date-year

document.getElementById('date').innerHTML = display_dmy;    // Displaying the date in the page
    
    fetch('http://localhost/weather12/my_api.php')    // Fetching the data from the api
    .then(result => result.json())  // Converting the data to json
    .then((output) => {   // Displaying the data in the page

        var temp = output.weather_temperature;  // Getting the temperature from the api
        var feels_like = output.weather_feelslike;  // Getting the feels like temperature from the api
        var pressure = output.weather_pressure; // Getting the pressure from the api
        var humidity = output.weather_humidity; // Getting the humidity from the api
        var speed = output.weather_wind;    // Getting the wind speed from the api
        var main = output.weather_description;  // Getting the weather description from the api
        var name = output.city_name;    // Getting the city name from the api
        var icon = output.weather_icon; // Getting the weather icon from the api
        var timee = output.weather_time;    // Getting the time from the api


        
        document.getElementById('temperature').innerHTML = temp + "°C"; // Displaying the temperature in the page
        document.getElementById('feels_like').innerHTML = "Feels like: " +feels_like + "°C";    // Displaying the feels like temperature in the page
        document.getElementById('pressure').innerHTML = "Pressure: " + pressure + " pa";    // Displaying the pressure in the page
        document.getElementById('humidity').innerHTML = " Humidity: " + humidity + "%";   // Displaying the humidity in the page
        document.getElementById('wind_speed').innerHTML = "Wind Speed: " + speed + "m/s";   // Displaying the wind speed in the page
        document.getElementById('weather_cond').innerHTML = "Condition: " + main;   // Displaying the weather condition in the page
        document.getElementById('time_zone').innerHTML = name;  // Displaying the city name in the page
        document.getElementById('icon').innerHTML='<img src=\'https://openweathermap.org/img/wn/'+icon+'@2x.png\'>' ; // Displaying the weather icon in the page



        // Storing the values in the local storage when the data is fetched 
        localStorage.when = Date.now(); 
        localStorage.temperature = temp;
        localStorage.feels_like = feels_like;
        localStorage.pressure = pressure;
        localStorage.humidity = humidity;
        localStorage.wind_speed = speed;
        localStorage.weather_cond = main;
        localStorage.time_zone = name;
        localStorage.icon = icon;
        localStorage.date = display_dmy;


    }).catch(err => console.error(err));    // Displaying the error in the page

}