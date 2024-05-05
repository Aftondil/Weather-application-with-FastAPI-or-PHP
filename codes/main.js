
const searchBox = document.getElementById('input');
const searchButton = document.getElementById('buton');
const weicon = document.getElementById('icon');


async function check(city) {
    // fetch('https://api.openweathermap.org/data/2.5/weather?units=metric' + `&appid=a7d349368f7863ab020c768792f83bac` + `&q=${city}`)
    if (localStorage.when != null && parseInt(localStorage.when) + 10000 > Date.now()) {
        document.getElementById("temp").innerHTML = localStorage.myTemperature;
        document.getElementById("city").innerHTML = localStorage.myCity;
        document.getElementById("humidity").innerHTML = localStorage.myHumidity;
        document.getElementById("speed").innerHTML = localStorage.myWind;
        document.getElementById('meta').innerHTML = localStorage.myDescription;
        // weicon.src = `https://openweathermap.org/img/wn/${response.weather[0].icon}@2x.png`
        weicon.src = localStorage.myIcon;
    }
    else {
        // await fetch('http://localhost:63342/class4.0/codes/update.php' + `?city=${city}`)
        await fetch('http://localhost:8000/weather/' + `${city}`)
            .then(response => response.json())
            .then(response => {

                console.log(response);

                document.getElementById("temp").innerHTML = Math.round(response.temperature) + `°C`;
                document.getElementById("city").innerHTML = response.city;
                document.getElementById("humidity").innerHTML = Math.round(response.humidity) + `%`;
                document.getElementById("speed").innerHTML = Math.round(response.wind) + `km/h`;
                document.getElementById('meta').innerHTML = response.description;
                // weicon.src = `https://openweathermap.org/img/wn/${response.weather[0].icon}@2x.png`
                weicon.src = `./images/${response.icon}.png`;


                localStorage.myDescription = response.description;
                localStorage.myTemperature = Math.round(response.temperature) + '°C';
                localStorage.when = Date.now();
                localStorage.myCity = response.city;
                localStorage.myHumidity = Math.round(response.humidity) + `%`;
                localStorage.myWind = Math.round(response.wind) + `km/h`;
                localStorage.myIcon = `./images/${response.icon}.png`;





    })
    .catch(err => {

    // Display errors in console
    console.log(err);
    });
}}


check('Wolverhampton')
searchButton.addEventListener('click', ()=>{
    console.log(searchBox.value)
    check(searchBox.value)

})