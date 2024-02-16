package main

import (
	"encoding/json"
	"fmt"
	"net/http"
)

var weatherIcons = map[string]string{
	"113": "",
	"116": "",
	"119": "",
	"122": "",
	"143": "🌫",
	"176": "🌦",
	"179": "🌧",
	"182": "🌧",
	"185": "🌧",
	"200": "⛈",
	"227": "🌨",
	"230": "",
	"248": "🌫",
	"260": "🌫",
	"263": "🌦",
	"266": "🌦",
	"281": "🌧",
	"284": "🌧",
	"293": "🌦",
	"296": "🌦",
	"299": "🌧",
	"302": "🌧",
	"305": "🌧",
	"308": "🌧",
	"311": "🌧",
	"314": "🌧",
	"317": "🌧",
	"320": "🌨",
	"323": "🌨",
	"326": "🌨",
	"329": "",
	"332": "",
	"335": "",
	"338": "",
	"350": "🌧",
	"353": "🌦",
	"356": "🌧",
	"359": "🌧",
	"362": "🌧",
	"365": "🌧",
	"368": "🌨",
	"371": "",
	"374": "🌧",
	"377": "🌧",
	"386": "⛈",
	"389": "🌩",
	"392": "⛈",
	"395": "",
}

func main() {
	data := make(map[string]string)

	resp, err := http.Get("https://wttr.in/Guwahati?format=j1")
	if err != nil {
		data["text"] = "…"
		fmt.Println(jsonData(data))
		return
	}
	defer resp.Body.Close()

	var weatherData map[string]interface{}
	if err := json.NewDecoder(resp.Body).Decode(&weatherData); err != nil {
		data["text"] = "…"
		fmt.Println(jsonData(data))
		return
	}

	currentCondition := weatherData["current_condition"].([]interface{})[0].(map[string]interface{})
	weatherCode := currentCondition["weatherCode"].(string)
	tempC := currentCondition["temp_C"].(string)

	weather := weatherIcons[weatherCode]

	weatherDataStr := fmt.Sprintf("%s° %s ↑ %s° ↓ %s°",
		tempC, weather, weatherData["weather"].([]interface{})[0].(map[string]interface{})["maxtempC"].(string),
		weatherData["weather"].([]interface{})[1].(map[string]interface{})["mintempC"].(string))

	data["text"] = weatherDataStr
	fmt.Println(jsonData(data))
}

func jsonData(data map[string]string) string {
	jsonData, err := json.Marshal(data)
	if err != nil {
		return "{}"
	}
	return string(jsonData)
}
