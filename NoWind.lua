script_name("NoWind")
script_description("The script blocks servers from applying windy weather profiles. The player can still apply windy profiles locally.")
script_author("Bear")
script_version("1.0.0")

local sampev = require "lib.samp.events"
local windyWeatherIds = {1, 3, 4, 5, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 19, 21, 22, 31, 32, 42, 43, 44, 45}

function sampev.onSetWeather(weatherId)
	for _, windyWeatherId in pairs(windyWeatherIds) do
		if weatherId == windyWeatherId then return false end
	end
end
