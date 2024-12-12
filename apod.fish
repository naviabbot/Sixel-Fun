# APOD Sixel Script
# Fetches the Astronomy Picture of the Day from NASA's servers and converts it to Sixel format.
# Requires a NASA Open API Key at https://api.nasa.gov

# Replace NASAAPIKEY with your NASA API Key
set apikey NASAAPIKEY

function apod
	magick (curl "https://api.nasa.gov/planetary/apod?api_key={$apikey}" | jq -r .url) sixel:-
end

