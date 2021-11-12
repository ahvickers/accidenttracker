# Data sourced from https://www.kaggle.com/sobhanmoosavi/us-accidents then
# filtered for only data from 2019 to make the file size manageable
# and removed unwanted columns, then saved as US_Accidents2019.csv

raw_accident_data <- readr::read_csv("data-raw/US_Accidents2019.csv")

accidents <- raw_accident_data %>%
  dplyr::select(-(...1)) %>% # removes extra row # column added when reading file
  dplyr::rename(id = ID, severity = Severity, time = Start_Time, lat = Start_Lat,
         lng = Start_Lng, street = Street, side = Side, city = City,
         county = County, state = State, zip = Zipcode, timezone = Timezone,
         wthr.time = Weather_Timestamp, temp = `Temperature(F)`,
         wind.chill = `Wind_Chill(F)`, humid = `Humidity(%)`,
         pressure = `Pressure(in)`, vis = `Visibility(mi)`,
         wind.dir = Wind_Direction, wind.spd = `Wind_Speed(mph)`,
         precip = `Precipitation(in)`, wthr.cond = Weather_Condition,
         amenity = Amenity, bump = Bump, cross = Crossing, give.way = Give_Way,
         junction = Junction, no.exit = No_Exit, rail = Railway,
         roundabt = Roundabout, station = Station, stop = Stop,
         traffic.calm = Traffic_Calming, traffic.sgnl = Traffic_Signal,
         turn.loop = Turning_Loop, day.night = Sunrise_Sunset)
        # renaming columns to match class style guide

usethis::use_data(accidents, overwrite = TRUE)
