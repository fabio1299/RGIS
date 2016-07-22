#!/bin/bash

if [[ "${RGIS_FUNCTIONS}" == "sourced" ]]
then
	return 0
else
	export RGIS_FUNCTIONS="sourced"
fi

if [[ "${1}" == "gzipped" ]]
then
    __RGIS_GZEXT=".gz"
else
    __RGIS_GZEXT=""
fi

function RGISlookupSubject ()
{
	local variable=$(echo "${1}" | tr "[A-Z]" "[a-z]")
	
	case "${variable}" in
		(air_temperature)                           #  0
			echo "AirTemperature"
		;;
		(min_air_temperature)                       #  1
			echo "AirTemperature-Min"
		;;
		(max_air_temperature)                       #  2
			echo "AirTemperature-Max"
		;;
		(diurnal_air_temperature_range)             #  3
			echo "AirTemperature-Range"
		;;
		(c_litterfall)                              #  4
			echo "C-LitterFall"
		;;
		(cell_area)                                 #  5
			echo "CellArea"
		;;
		(cloud_cover)                               #  6
			echo "CloudCover"
		;;
		(continents)                                #  7
			echo "Continents"
		;;
		(cropland_fraction)                         #  8
			echo "Cropland-Fraction"
		;;
		(cropping_intensity)                        #  9
			echo "Crops-Intensity"
		;;
		(daily_precipitation_fraction)              # 10 
			echo "Precipitation-DailyFraction"
		;;
		(din_areal_loading)                         # 11
			echo "DIN-AreaLoading"
		;;
		(din_point_loading)                         # 12
			echo "DIN-PointLoading"
		;;
		(discharge)                                 # 13
			echo "Discharge"
		;;
		(doc_areal_loading)                         # 14
			echo "DOC-ArealLoading"
		;;
		(doc_point_loading)                         # 15
			echo "DOC-PointLoading"
		;;
		(don_areal_loading)                         # 16
			echo "DON-ArealLoading"
		;;
		(don_point_loading)                         # 17
			echo "DON-PointLoading"
		;;
		(elevation)                                 # 18
			echo "Elevation"
		;;
		(min_elevation)                             # 19
			echo "Elevation-Min"
		;;
		(max_elevation)                             # 20
			echo "Elevation-Max"
		;;
		(field_capacity)                            # 21 
			echo "Soil-FieldCapacity"
		;;
		(growing_season1)                           # 22
			echo "Crops-GrowingSeason1"
		;;
		(growing_season2)                           # 23
			echo "Crops-GrowingSeason2"
		;;
		(dewpoint_temperature)                      # 24
			echo "Humidity-Dewpoint"
		;;
		(relative_humidity)                         # 25
			echo "Humidity-Relative"
		;;
		(specific_humidity)                         # 26
			echo "Humidity-Specific"
		;;
		(vapor_pressure)                            # 27
			echo "Humidity-VaporPressure"
		;;
		(irrigated_area_fraction)                   # 28
			echo "Irrigation-AreaFraction"
		;;
		(irrigation_efficiency)                     # 29
			echo "Irrigation-Efficiency"
		;;
		(irrigation_gross_demand)                   # 30
			echo "IrrGrossDemand"
		;;
		(network)                                   # 31
			echo "Network"
		;;
		(n_litterfall)                              # 32
			echo "N-LitterFall"
		;;
		(nh4_areal_loading)                         # 33
			echo "NH4-ArealLoading"
		;;
		(nh4_point_loading)                         # 34
			echo "Nh4-PointLoading"
		;;
		(no3_areal_loading)                         # 35
			echo "NO3-ArealLoading"
		;;
		(no3_point_loading)                         # 36
			echo "NO3-PointLoading"
		;;
		(ocean_basins)                              # 37
			echo "OceanBasins"
		;;
		(other_crop_fraction)                       # 38
			echo "CropFraction-Other"
		;;
		(perennial_crop_fraction)                   # 39
			echo "CropFraction-Perennial"
		;;
		(population)                                # 40
			echo "Population"
		;;
		(population_density)	                       # 41
			echo "Population-Density"
		;;
		(population-rural)                          # 42
			echo "Population-Rural"
		;;
		(population-urban)                          # 43
			echo "Population-Urban"
		;;
		(precipitation)                             # 44
			echo "Precipitation"
		;;
		(shortwave_downwelling_radiation)           # 45
			echo "Radiation-ShortWave"
		;;
		(longwave_downwelling_radiation)            # 46
			echo "Radiation-LongWave"
		;;
		(rain_fall)                                 # 47
			echo "RainFall"
		;;
		(rain_pet)                                  # 48
			echo "RainPET"
		;;
		(reservoir_capacity)                        # 49
			echo "Reservoir-Capacity"
		;;
		(rice_crop_fraction)                        # 50
			echo "CropFraction-Rice"
		;;
		(rice_percolation_rate)                     # 51
			echo "Crops-RicePercolationRate"
		;;
		(rooting_depth)                             # 52
			echo "Soil-RootingDepth"
		;;
		(runoff)                                    # 53
			echo "Runoff"
		;;
		(small_reservoir_coefficient)               # 54
			echo "SmallReservoir-Coefficient"
		;;
		(snow_fall)                                 # 55
			echo "SnowFall"
		;;
		(soil_moisture)                             # 56
			echo "SoilMoisture"
		;;
		(soil_moisture_change)                      # 57
			echo "SoilMoistureChange"
		;;
		(surface_air_pressure)                      # 58
			echo "AirPressure"
		;;
		(vegetables_crop_fraction)                  # 59
			echo "CropFraction-Vegetables"
		;;
		(wilting_point)                             # 60
			echo "Soil-WiltingPoint"
		;;
		(wind_speed)                                # 61
			echo "WindSpeed"
		;;
		(*)
			echo "${variable}"
		;;
	esac
}


function _RGISlookupFullName ()
{
	local variable=$(echo "${1}" | tr "[A-Z]" "[a-z]")

	case "${variable}" in
		(air_temperature)                           #  0
			echo "Air Temperature"
		;;
		(max_air_temperature)                       #  1
			echo "Maximum Air Temperature"
		;;
		(min_air_temperature)                       #  2
			echo "Minimum Air Temperature"
		;;
		(diurnal_air_temperature_range)             #  3
			echo "Diurnal AirTemperature Range"
		;;
		(c_litterfall)                              #  4
			echo "C LitterFall"
		;;
		(cell_area)                                 #  5
			echo "Cell Area"
		;;
		(cloud_cover)                               #  6
			echo "Cloud Cover"
		;;
		(continents)                                #  7
			echo "Continents"
		;;
		(cropland_fraction)                         #  8
			echo "Cropland Fraction"
		;;
		(cropping_intensity)                        #  9
			echo "Cropping Intensity"
		;;
		(din_areal_loading)                         # 10
			echo "DIN Areal Loading"
		;;
		(din_point_loading)                         # 11 
			echo "DIN Point Loading"
		;;
		(discharge)                                 # 12
			echo "Discharge"
		;;
		(don_areal_loading)                         # 13
			echo "DON Areal Loading"
		;;
		(doc_point_loading)                         # 14
			echo "DOC Point Loading"
		;;
		(doc_areal_loading)                         # 15
			echo "DOC Areal Loading"
		;;
		(don_point_loading)                         # 16
			echo "DON Point Loading"
		;;
		(daily_precipitation_fraction)              # 17
			echo "Daily Precipitation Fraction"
		;;
		(elevation)                                 # 18
			echo "Elevation"
		;;
		(max_elevation)                             # 19
			echo "Maximum Elevation"
		;;
		(min_elevation)                             # 20
			echo "Minimum Elevation"
		;;
		(field_capacity)                            # 21
			echo "Field Capacity"
		;;
		(growing_season1)                           # 22 
			echo "Growing Season 1"
		;;
		(growing_season2)                           # 23
			echo "Growing Season 2"
		;;
		(dewpoint_temperature)                      # 24 
			echo "Dewpoint Temperature"
		;;
		(relativec_humidity)                        # 25 
			echo "Relative Humidity"
		;;
		(specific_humidity)                         # 26 
			echo "Specific Humidity"
		;;
		(vapor_pressure)                            # 27
			echo "Vapor Pressure"
		;;
		(irrigated_area_fraction)                   # 28
			echo "Irrigated Area Fraction"
		;;
		(irrigation_efficiency)                     # 29 
			echo "Irrigation Efficiency"
		;;
		(irrigation_gross_demand)                   # 30
			echo "Irrigation Gross Demand"
		;;
		(network)                                   # 31
			echo "STNetwork"
		;;
		(n_litterfall)                              # 32
			echo "N LitterFall"
		;;
		(nh4_areal_loading)                         # 33
			echo "NH4 Areal Loading"
		;;
		(nh4_point_loading)                         # 34
			echo "NH4 Point Loading"
		;;
		(no3_areal_loading)                         # 35
			echo "NO3 Areal Loading"
		;;
		(no3_point_loading)                         # 36
			echo "NO3 Point Loading"
		;;
		(ocean_basins)                              # 37
			echo "Ocean Basins"
		;;
		(other_crop_fraction)                       # 38
			echo "Other Crop Fraction"
		;;
		(perennial_crop_fraction)                   # 39
			echo "Perennial Crop Fraction"
		;;
		(population)                                # 40
			echo "Population"
		;;
		(population_density)                        # 41
			echo "Population Density"
		;;
		(population-rural)                          # 42
			echo "Rural Population"
		;;
		(population-urban)                          # 43 
			echo "Urban Population"
		;;
		(precipitation)                             # 44
			echo "Precipitation"
		;;
		(shortwave_downwelling_radiation)           # 45
			echo "Short Wave Radiation"
		;;
		(longwave_downwelling_radiation)            # 46
			echo "Long Wave Radiation"
		;;
		(rain_fall)                                 # 47
			echo "Rain Fall"
		;;
		(rain_pet)                                  # 48
			echo "Rain Potential ET"
		;;
		(reservoir_capacity)                        # 49
			echo "Reservoir Capacity"
		;;
		(rice_crop_fraction)                        # 50
			echo "Rice Crop Fraction"
		;;
		(rice_percolation_rate)                     # 51
			echo "Rice Percolation Rate"
		;;
		(rooting_depth)                             # 52
			echo "Rooting Depth"
		;;
		(runoff)                                    # 53
			echo "Runoff"
		;;
		(small_reservoir_coefficient)               # 54
			echo "Small-reservoir Coefficient"
		;;
		(snow_fall)                                 # 55
			echo "Snow Fall"
		;;
		(soil_moisture)                             # 56
			echo "Soil Moisture"
		;;
		(soil_moisture_change)                      # 57
			echo "Soil Moisture Change"
		;;
		(surface_air_pressure)                      # 58
			echo "Air Pressure"
		;;
		(vegetables_crop_fraction)                  # 59
			echo "Vegetables Crop Fraction"
		;;
		(wilting_point)                             # 60
			echo "Wilting Point"
		;;
		(wind_speed)                                # 61
			echo "Wind Speed"
		;;
		(*)
			echo "${variable}"
		;;
	esac
}

function RGISlookupShadeset ()
{
	local variable=$(echo "${1}" | tr "[A-Z]" "[a-z]")
	
	case "${variable}" in
		(air_temperature|max_air_temperature|min_air_temperature) # 0 1 2
			echo "blue-to-red"
		;;
		(diurnal_air_temperature_range)             #  3
			echo "grey"
		;;
		(c_litterfall)                              #  4
			echo "grey"
		;;
		(cell_area)                                 #  5
			echo "grey"
		;;
		(cloud_cover)                               #  6
			echo "grey"
		;;
		(continents)                                #  7
			echo "grey"
		;;
		(cropland_fraction)                         #  8
			echo "grey"
		;;
		(cropping_intensity)                        #  9
			echo "grey"
		;;
		(daily_precipitation_fraction)              # 10
			echo "grey"
		;;
		(din_areal_loading)                         # 11
			echo "grey"
		;;
		(din_point_loading)                         # 12
			echo "grey"
		;;
		(discharge)                                 # 13
			echo "blue"
		;;
		(don_areal_loading)                         # 14
			echo "grey"
		;;
		(don_point_loading)                         # 15
			echo "grey"
		;;
		(doc_areal_loading)                         # 16
			echo "grey"
		;;
		(doc_point_loading)                         # 17
			echo "grey"
		;;
		(elevation|max_elevation|min_elevation)     # 18 19 20 
			echo "elevation"
		;;
		(field_capacity)                            # 21
			echo "grey"
		;;
		(growing_season1)                           # 22 
			echo "grey"
		;;
		(growing_season2)                           # 23
			echo "grey"
		;;
		(dewpoint_temperature)                      # 24
			echo "blue"
		;;
		(relative_humidity)                         # 25
			echo "blue"
		;;
		(specific_humidity)                         # 26
			echo "blue"
		;;
		(vapor_pressure)                            # 27
			echo "blue"
		;;
		(irrigated_area_fraction)                   # 28
			echo "grey"
		;;
		(irrigation_efficiency)                     # 29
			echo "grey"
		;;
		(irrigation_gross_demand)                   # 30
			echo "grey"
		;;
		(network)                                   # 31
			echo "grey"
		;;
		(n_litterfall)                              # 32
			echo "grey"
		;;
		(nh4_areal_loading)                         # 33
			echo "grey"
		;;
		(nh4_point_loading)                         # 34
			echo "grey"
		;;
		(no3_areal_loading)                         # 35
			echo "grey"
		;;
		(no3_point_loading)                         # 36
			echo "grey"
		;;
		(ocean_basins)                              # 37
			echo "grey"
		;;
		(other_crop_fraction)                       # 38
			echo "grey"
		;;
		(perennial_crop_fraction)                   # 39
			echo "grey"
		;;
		(population)                                # 40
			echo "grey"
		;;
		(population_density)                        # 41
			echo "grey"
		;;
		(population-rural)                          # 42
			echo "grey"
		;;
		(population-urban)                          # 43
			echo "grey"
		;;
		(precipitation)                             # 44
			echo "blue"
		;;
		(shortwave_downwelling_radiation)           # 45
			echo "grey"
		;;
		(longwave_downwelling_radiation)            # 46
			echo "grey"
		;;
		(rain_fall)                                 # 47
			echo "blue"
		;;
		(rain_pet)                                  # 48
			echo "grey"
		;;
		(reservoir_capacity)                        # 49
			echo "grey"
		;;
		(rice_crop_fraction)                        # 50
			echo "grey"
		;;
		(rice_percolation_rate)                     # 51
			echo "grey"
		;;
		(rooting_depth)                             # 52
			echo "grey"
		;;
		(runoff)                                    # 53
			echo "blue"
		;;
		(small_reservoir_coefficient)               # 54
			echo "grey"
		;;
		(snow_fall)                                 # 55
			echo "grey"
		;;
		(soil_moisture)                             # 56
			echo "grey"
		;;
		(soil_moisture_change)                      # 57
			echo "blue-to-red"
		;;
		(surface_air_pressure)                      # 58
			echo "grey"
		;;
		(vegetables_crop_fraction)                  # 59
			echo "grey"
		;;
		(wilting_point)                             # 60
			echo "grey"
		;;
		(wind_speed)                                # 61
			echo "grey"
		;;
		(*)
			echo "grey"
		;;
	esac
}

function RGISlookupAggrMethod ()
{
	local variable=$(echo "${1}" | tr "[A-Z]" "[a-z]")
	
	case "${variable}" in
		(air_temperature|max_air_temperature|min_air_temperature)  # 0 1 2 
			echo "avg"
		;;
		(diurnal_air_temperature_range)             #  3
			echo "avg"
		;;
		(c_litterfall)                              #  4
			echo "sum"
		;;
		(cell_area)                                 #  5
			echo "avg"
		;;
		(cloud_cover)                               #  6
			echo "avg"
		;;
		(continents)                                #  7
			echo "N/A"
		;;
		(cropland_fraction)                         #  8
			echo "avg"
		;;
		(cropping_intensity)                        #  9
			echo "avg"
		;;
		(daily_precipitation_fraction)              # 10 
			echo "avg"
		;;
		(din_areal_loading)                         # 11 
			echo "sum"
		;;
		(din_point_loading)                         # 12
			echo "sum"
		;;
		(discharge)                                 # 13
			echo "avg"
		;;
		(don_areal_loading)                         # 14
			echo "sum"
		;;
		(don_point_loading)                         # 15
			echo "sum"
		;;
		(doc_areal_loading)                         # 16
			echo "sum"
		;;
		(doc_point_loading)                         # 17
			echo "sum"
		;;
		(elevation|max_elevation|min_elevation)     # 18 19 20 
			echo "avg"
		;;
		(field_capacity)                            # 21
			echo "avg"
		;;
		(growing_season1)                           # 22
			echo "avg"
		;;
		(growing_season2)                           # 23
			echo "avg"
		;;
		(dewpoint_temperature)                      # 24
			echo "avg"
		;;
		(relative_humidity)                         # 25
			echo "avg"
		;;
		(specific_humidity)                         # 26
			echo "avg"
		;;
		(vapor_pressure)                            # 27
			echo "avg"
		;;
		(irrigated_area_fraction)                   # 28
			echo "avg"
		;;
		(irrigation_efficiency)                     # 29
			echo "avg"
		;;
		(irrigation_gross_demand)                   # 30
			echo "sum"
		;;
		(network)                                   # 31
			echo "avg"
		;;
		(n_litterfall)                              # 32
			echo "sum"
		;;
		(nh4_areal_loading)                         # 33
			echo "sum"
		;;
		(nh4_point_loading)                         # 34
			echo "sum"
		;;
		(no3_areal_loading)                         # 35
			echo "sum"
		;;
		(no3_point_loading)                         # 36
			echo "sum"
		;;
		(ocean_basins)                              # 37
			echo "N/A"
		;;
		(other_crop_fraction)                       # 38
			echo "avg"
		;;
		(perennial_crop_fraction)                   # 39
			echo "avg"
		;;
		(population)                                # 40
			echo "avg"
		;;
		(population_density)                        # 41
			echo "avg"
		;;
		(population-rural)                          # 42
			echo "avg"
		;;
		(population-urban)                          # 43
			echo "avg"
		;;
		(precipitation)                             # 44
			echo "sum"
		;;
		(shortwave_downwelling_radiation)           # 45
			echo "avg"
		;;
		(longwave_downwelling_radiation)            # 46
			echo "avg"
		;;
		(rain_fall)                                 # 47
			echo "sum"
		;;
		(rain_pet)                                  # 48
			echo "sum"
		;;
		(reservoir_capacity)                        # 49
			echo "avg"
		;;
		(rice_crop_fraction)                        # 50
			echo "avg"
		;;
		(rice_percolation_rate)                     # 51
			echo "avg"
		;;
		(rooting_depth)                             # 52
			echo "avg"
		;;
		(runoff)                                    # 53
			echo "sum"
		;;
		(small_reservoir_coefficient)               # 54
			echo "avg"
		;;
		(snow_fall)                                 # 55
			echo "avg"
		;;
		(soil_moisture)                             # 56
			echo "avg"
		;;
		(soil_moisture_change)                      # 57
			echo "avg"
		;;
		(surface_air_pressure)                      # 58
			echo "avg"
		;;
		(vegetables_crop_fraction)                  # 59
			echo "avg"
		;;
		(wilting_point)                             # 60
			echo "avg"
		;;
		(wind_speed)                                # 61
			echo "avg"
		;;
		(*)
			echo "avg"
			echo "Defaulting aggregation method: ${variable}" > /dev/stderr
		;;
	esac
}

function RGISlookupTimeStep ()
{
	local timeStep=$(echo "${1}" | tr "[A-Z]" "[a-z]")
	
	case "${timeStep}" in
		(daily)
			echo "day"
		;;
		(monthly)
			echo "month"
		;;
		(annual)
			echo "year"
		;;
	esac
}

function RGIStimeNumberOfDays ()
{
	local    year="${1}"
	local   month=$((${2} - 1))
	local century="${year%??}"

	local monthLength[0]=31
	local monthLength[1]=28
	local monthLength[2]=31
	local monthLength[3]=30
	local monthLength[4]=31
	local monthLength[5]=30
	local monthLength[6]=31
	local monthLength[7]=31
	local monthLength[8]=30
	local monthLength[9]=31
	local monthLength[10]=30
	local monthLength[11]=31

	if (( month == 1))
	then
		if [[ "${year}" == "${century}00" ]]
		then
			local leapYear=$(( (${century} & 0xffffe) == ${century} ? 1 : 0))	
		else
			local leapYear=$(( (${year}    & 0xffffe) == ${year}    ? 1 : 0))
		fi
	else
		local leapYear=0
	fi
	echo $((${monthLength[${month}]} + ${leapYear}))
}

function _RGISvariableDir ()
{
	local      archive="${1}"
	local       domain="${2}"
	local     variable="${3}"

	local       varDir=$(RGISlookupSubject "${variable}")

	if [ -e "${archive}/${domain%+}/${varDir}" ]
	then
		echo "${domain%+}/${varDir}"
		return 0
	else
		if [ "${domain%+}" == "${domain}" ] # Exact domain
		then
			echo "Missing ${archive}/${domain}/${varDir}" > /dev/stderr
			echo ""
			return 1
		else # Dynamic domain
			local parent="${archive}/${domain%+}/parent"
			if [ -e "${parent}" ]
			then
				_RGISvariableDir "${archive}" "$(cat ${archive}/${domain%+}/parent)+" "${variable}" || return 1
			else
				echo "Missing ${parent}" > /dev/stderr
				echo ""
				return 1
			fi
		fi
	fi
	return 0
}

function _RGISresolutionDir ()
{
	local      archive="${1}"
	local       domain="${2}"
	local     variable="${3}"
	local      product="${4}"
	local   resolution="${5}"

	local varDir=$(_RGISvariableDir "${archive}" "${domain}" "${variable}")
	if [ "${varDir}" == "" ]
	then
		return
	else
		if [ -e "${archive}/${varDir}/${product}/${resolution%+}" ]
		then
			echo "${varDir}/${product}/${resolution%+}"
		else
			if [ "${resolution%+}" == "${resolution}" ] # Exact resolution
			then
				echo "Missing ${archive}/${varDir}/${product}/${resolution}" > /dev/stderr
				echo ""
				return 1
			else # Dynamic resolution
				if [ "${resolution%km+}" == "${resolution}" ] # Geographic
				then
					local geogNum=0
					local geogRes[${geogNum}]="15sec";  (( ++geogNum ))
					local geogRes[${geogNum}]="30sec";  (( ++geogNum ))
					local geogRes[${geogNum}]="01min";  (( ++geogNum ))
					local geogRes[${geogNum}]="03min";  (( ++geogNum ))
					local geogRes[${geogNum}]="05min";  (( ++geogNum ))
					local geogRes[${geogNum}]="06min";  (( ++geogNum ))
					local geogRes[${geogNum}]="10min";  (( ++geogNum ))
					local geogRes[${geogNum}]="15min";  (( ++geogNum ))
					local geogRes[${geogNum}]="30min";  (( ++geogNum ))
					local geogRes[${geogNum}]="60min";  (( ++geogNum ))
					local geogRes[${geogNum}]="90min";  (( ++geogNum ))
					local geogRes[${geogNum}]="150min"; (( ++geogNum ))

					for (( num = 0; num < ${geogNum}; ++num ))
					do
						if [ "${geogRes[${num}]}" == "${resolution%+}" ]; then break; fi
					done
					if (( num < geogNum))
					then
						_RGISresolutionDir "${archive}" "${domain}" "${variable}"  "${product}" "${geogRes[((${num} + 1))]}+" || return 1
					else
						echo "No coarser resolution ${domain%+} ${variable} ${product} ${resolution%+}" > /dev/stderr
						return 1
					fi
				else # Cartesian
					local cartNum=0
					local cartRes[${cartNum}]="1km";    (( ++cartNum ))
					local cartRes[${cartNum}]="2km";    (( ++cartNum ))
					local cartRes[${cartNum}]="5km";    (( ++cartNum ))
					local cartRes[${cartNum}]="10km";   (( ++cartNum ))
					local cartRes[${cartNum}]="25km";   (( ++cartNum ))
					local cartRes[${cartNum}]="50km";   (( ++cartNum ))

					for (( num = 0; num < ${cartNum}; ++num ))
					do
						if [ "${cartRes[${num}]}" == "${resolution%+}" ]; then break; fi
					done
					if (( num < cartNum))
					then
						_RGISresolutionDir "${archive}" "${domain}" "${variable}"  "${product}" "${cartRes[((${num} + 1))]}+" || return 1
					else
						echo "No coarser resolution ${domain%+} ${variable} ${product} ${resolution%+}" > /dev/stderr
						return 1
					fi
				fi
			fi
		fi
	fi
	return 0
}
function _RGIStStepDir ()
{
	local tStepType="${1}"
	local     tStep="${2}"

	case "${tstepType}" in
		(TS)
			case "${tstep}" in
				(hourly)
					echo "Hourly"
				;;
				(3hourly)
					echo "3Hourly"
				;;
				(6hourly)
					echo "6Hourly"
				;;
				(daily)
					echo "Daily"
				;;
				(monthly)
					echo "Monthly"
				;;
				(annual)
					echo "Annual"
				;;
				(*)
					echo "${tstep}"
				;;
			esac
		;;
		(LT|LTmin|LTmax|LTslope|LTrange|LTstdDev|Stats|static)
			echo "Static"
		;;
	esac
	return 0
}

function RGISdirectoryPath ()
{
	local    archive="${1}"
	local     domain="${2}"
	local   variable="${3}"
	local    product="${4}"
	local resolution="${5}"
	local  tstepType="${6}"
	local      tstep=$(echo "${7}" | tr "[A-Z]" "[a-z]")

	local        dir=$(_RGIStStepDir ${tstepType} ${tstep})
	local     varDir=$(RGISlookupSubject "${variable}")

	echo "${archive}/${domain}/${varDir}/${product}/${resolution}/${dir}"
}

function RGISdirectory ()
{
	local    archive="${1}"
	local     domain="${2}"
	local   variable="${3}"
	local    product="${4}"
	local resolution="${5}"
	local  tstepType="${6}"
	local      tstep=$(echo "${7}" | tr "[A-Z]" "[a-z]")

	local dir=$(_RGIStStepDir ${tstepType} ${tstep})

	local resDir=$(_RGISresolutionDir "${archive}" "${domain}" "${variable}" "${product}" "${resolution}")
	if [ "${resDir}" == "" ]
	then
		return 1
	else
		echo "${archive}/${resDir}/${dir}"
	fi
	return 0
}

function RGISfilePath ()
{
	local      archive="${1}"
	local       domain="${2}"
	local     variable="${3}"
	local      product="${4}"
	local   resolution="${5}"
	local    tstepType="${6}"
	local        tstep=$(echo "${7}" | tr "[A-Z]" "[a-z]")
	local    timeRange="${8}"

	case "${tstep}" in
		(hourly)
			local tstepStr="h"
		;;
		(3hourly)
			local tstepStr="3h"
		;;
		(6hourly)
			local tstepStr="6h"
		;;
		(daily)
			local tstepStr="d"
		;;
		(monthly)
			local tstepStr="m"
		;;
		(annual)
			local tstepStr="a"
		;;
		("")
			local tstepStr=""
		;;
		(*)
			echo "Unknown time step ${tstep}" > /dev/stderr
			return 1
		;;
	esac

	case "${variable}" in
		(network)
			local extension="gdbn"
		;;
		(continents)
			local extension="gdbd"
		;;
		(ocean_basins)
			local extension="gdbd"
		;;
		(*)
			local extension="gdbc"
		;;
	esac

	local rgisDirectory=$(RGISdirectoryPath  "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "${tstepType}" "${tstep}")
	local      fileName=$(RGISdirectoryPath            "" "${domain}" "${variable}" "${product}" "${resolution}" "${tstepType}" "${tstep}")
	local      fileName=$(echo ${fileName} | sed "s:/::" | sed "s:/:_:g" )
	local      fileName=${fileName%_*}
	if [ "${rgisDirectory}" == "" ]
	then
		echo ""
		return 1
	fi
	if [[ "${tstepType}" == "static" ]]
	then
		local tstepType="Static"
		local tstepStr=""
	fi

#	local  variableName=$(RGISlookupSubject "${variable}")
	echo "${rgisDirectory}/${fileName}_${tstepStr}${tstepType}${timeRange}.${extension}${__RGIS_GZEXT}"
}

function RGISfile ()
{
	local      archive="${1}"
	local       domain="${2}"
	local     variable="${3}"
	local      product="${4}"
	local   resolution="${5}"
	local    tstepType="${6}"
	local        tstep=$(echo "${7}" | tr "[A-Z]" "[a-z]")
	local    timeRange="${8}"

	case "${tstep}" in
		(hourly)
			local tstepStr="h"
		;;
		(3hourly)
			local tstepStr="3h"
		;;
		(6hourly)
			local tstepStr="6h"
		;;
		(daily)
			local tstepStr="d"
		;;
		(monthly)
			local tstepStr="m"
		;;
		(annual)
			local tstepStr="a"
		;;
		("")
			local tstepStr=""
		;;
		(*)
			echo "Unknown time step ${tstep}" > /dev/stderr
			return 1
		;;
	esac

	case "${variable}" in
		(network)
			local extension="gdbn"
		;;
		(continents)
			local extension="gdbd"
		;;
		(ocean_basins)
			local extension="gdbd"
		;;
		(*)
			local extension="gdbc"
		;;
	esac

	local rgisDirectory=$(RGISdirectory      "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "${tstepType}" "${tstep}")
	local      fileName=$(_RGISresolutionDir "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" | sed "s:/:_:g" )
	if [ "${rgisDirectory}" == "" ]
	then
		echo ""
		return 1
	fi
	if [[ "${tstepType}" == "static" ]]
	then
		local tstepType="Static"
		local tstepStr=""
	fi

#	local  variableName=$(RGISlookupSubject "${variable}")
	echo "${rgisDirectory}/${fileName}_${tstepStr}${tstepType}${timeRange}.${extension}${__RGIS_GZEXT}"
}

function RGIStitle ()
{
	local     domain="${1}"
	local   variable="${2}"
	local    product="${3}"
	local resolution="${4}"
	local  tstepType="${5}"
	local      tstep=$(echo "${6}" | tr "[A-Z]" "[a-z]")
	local  timeRange="${7}"
	local    version="${8}"

	
	local variableFullName=$(_RGISlookupFullName "${variable}")

	if [[ "${tstepType}" == "static" ]]
	then
		local tstepString=""
	else
		case "${tstep}" in
			(hourly)
				local tstepStr="Hourly"
			;;
			(3hourly)
				local tstepStr="3Hourly"
			;;
			(6hourly)
				local tstepStr="6Hourly"
			;;
			(daily)
				local tstepStr="Daily"
			;;
			(monthly)
				local tstepStr="Monthly"
			;;
			(annual)
				local tstepStr="Annual"
			;;
			(*)
				echo "Unknown time step ${tstep}"  > /dev/stderr
				return 1
			;;
		esac
		if [[ "${timeRange}" == "" ]]
		then
			local tstepString=", ${tstepStr}${tstepType}"
		else
			local tstepString=", ${tstepStr}${tstepType}, ${timeRange}"
		fi
	fi
	echo "${domain}, ${product} ${variableFullName} (${resolution}${tstepString}) V${version}"
	return 0
}

function RGISAppend ()
{
   local    archive="${1}"
   local     domain="${2}"
   local   variable="${3}"
   local    product="${4}"
   local resolution="${5}"
   local    version="${6}"
	local  startyear="${7}"
	local    endyear="${8}"
   local      tstep="${9}"

 	local      files=""
	local  separator=" "

	for (( year = ${startyear}; year <= ${endyear}; ++year ))
	do
		local  filename=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "TS" "${tstep}" "${year}")
		local     files="${files}${separator}${filename}"
		local separator=" "
	done

	local filename=$(RGISfile  "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "TS" "${tstep}" "${startyear}-${endyear}")
	local    title=$(RGIStitle              "${domain}" "${variable}" "${product}" "${resolution}" "TS" "${tstep}" "${startyear}-${endyear}" "${version}")
	local  subject=$(RGISlookupSubject  "${variable}")
   local shadeset=$(RGISlookupShadeset "${variable}")

	grdAppendLayers -t "${title}" -d "${domain}" -u "${subject}" -v "${version}" -o "${filename}" ${files}
}

function RGISAggregateTS ()
{
	local    archive="${1}"
	local     domain="${2}"
	local   variable="${3}"
	local    product="${4}"
	local resolution="${5}"
	local    version="${6}"
	local  startyear="${7}"
	local    endyear="${8}"
	local  fromTStep="${9}"
	local    toTStep="${10}"

   local     files=""
   local separator=""

   for ((year = ${startyear}; year <= ${endyear} ; ++year))
   do
      local fromFile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "TS" "${fromTStep}" "${year}")
      local   toFile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "TS" "${toTStep}"   "${year}")
      local    title=$(RGIStitle "${domain}" "${variable}" "${product}" "${resolution}" "TS" "${toTStep}" "${year}" "${version}")
      local  subject=$(RGISlookupSubject    "${variable}")
      local shadeset=$(RGISlookupShadeset   "${variable}")
		local   method=$(RGISlookupAggrMethod "${variable}")

      grdTSAggr -a "${method}" -e "$(RGISlookupTimeStep ${toTStep})" -t "${title}" -d "${domain}" -u "${subject}" -s "${shadeset}" "${fromFile}" "${toFile}" || return 1
   done
}

function RGISClimatology ()
{
	local    archive="${1}"
	local     domain="${2}"
	local   variable="${3}"
	local    product="${4}"
	local resolution="${5}"
	local    version="${6}"
 	local  startyear="${7}"
	local    endyear="${8}"

	local     ltDir=$(RGISdirectory "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "LT" "monthly")
	local    tsFile=$(RGISfile      "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "TS" "monthly" "${startyear}-${endyear}")
	local    ltFile=$(RGISfile      "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "LT" "monthly" "${startyear}-${endyear}")
	local     title=$(RGIStitle                  "${domain}" "${variable}" "${product}" "${resolution}" "LT" "monthly" "${startyear}-${endyear}")
	local   subject=$(RGISlookupSubject  "${variable}")
	local  shadeset=$(RGISlookupShadeset "${variable}")
	
	[ -e "${ltDir}" ] || mkdir -p "${ltDir}" || return 1
	grdCycleMean	-t "${title}" -d "${domain}" -u "${subject}" -v "${version}" -s "${shadeset}" -n 12 "${tsFile}" - |\
	grdDateLayers   -e "month" - "${ltFile}" || return 1
	return 0
}

function RGISCellStats ()
{
	local    archive="${1}"
	local     domain="${2}"
	local   variable="${3}"
	local    product="${4}"
	local resolution="${5}"
	local    version="${6}"
 	local  startyear="${7}"
	local    endyear="${8}"

	local  statsDir=$(RGISdirectory  "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "Stats" "annual")
	local    tsFile=$(RGISfile       "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "TS"    "annual" "${startyear}-${endyear}")
	local statsFile=$(RGISfile       "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "Stats" "annual" "${startyear}-${endyear}")
	local     title=$(RGIStitle                   "${domain}" "${variable}" "${product}" "${resolution}" "Stats" "annual" "${startyear}-${endyear}" "${version}")
	local   subject=$(RGISlookupSubject "${variable}")

	[ -e "${statsDir}" ] || mkdir -p "${statsDir}" || return 1
	grdCellStats    -t "${title}" -u "${variable}" -d "${domain}" -v "${version}" "${tsFile}" "${statsFile}" || return 1

	local  annualLTfile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "LT"      "annual"  "${startyear}-${endyear}")
	local         title=$(RGIStitle             "${domain}" "${variable}" "${product}" "${resolution}" "LT"      "annual"  "${startyear}-${endyear}" "${version}")
	grdExtractLayers -t "${title}" -f "Average" -l "Average" -d "${domain}" -u "$(RGISlookupSubject ${variable})" "${statsFile}" |\
	grdDateLayers -e "year" - "${annualLTfile}" || return 1

	local     maxLTfile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "LTmax"    "annual"  "${startyear}-${endyear}")
	local         title=$(RGIStitle             "${domain}" "${variable}" "${product}" "${resolution}" "LTmax"    "annual"  "${startyear}-${endyear}" "${version}")
	grdExtractLayers -t "${title}" -f "Maximum" -l "Maximum" -d "${domain}" -u "$(RGISlookupSubject ${variable})" "${statsFile}" |\
	grdDateLayers -e "year" - "${maxLTfile}" || return 1

	local     minLTfile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "LTmin"    "annual"  "${startyear}-${endyear}")
	local         title=$(RGIStitle             "${domain}" "${variable}" "${product}" "${resolution}" "LTmin"    "annual"  "${startyear}-${endyear}" "${version}")
	grdExtractLayers -t "${title}" -f "Minimum" -l "Minimum" -d "${domain}" -u "$(RGISlookupSubject ${variable})" "${statsFile}" |\
	grdDateLayers -e "year" - "${minLTfile}" || return 1

	local   rangeLTfile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "LTrange"  "annual" "${startyear}-${endyear}")
	local         title=$(RGIStitle             "${domain}" "${variable}" "${product}" "${resolution}" "LTrange"  "annual" "${startyear}-${endyear}" "${version}")
	grdExtractLayers -t "${title}" -f "Range"   -l "Range"   -d "${domain}" -u "$(RGISlookupSubject ${variable})" "${statsFile}" |\
	grdDateLayers -e "year" - "${rangeLTfile}" || return 1

	local   slopeLTfile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "LTslope"  "annual" "${startyear}-${endyear}")
	local         title=$(RGIStitle             "${domain}" "${variable}" "${product}" "${resolution}" "LTslope"  "annual" "${startyear}-${endyear}" "${version}")
	grdExtractLayers -t "${title}" -f "SigSlopeB1" -l "SigSlopeB1" -d "${domain}" -u "$(RGISlookupSubject ${variable})" "${statsFile}" |\
	grdDateLayers -e "year" - "${slopeLTfile}" || return 1

	local  stdDevLTfile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "LTstdDev" "annual" "${startyear}-${endyear}")
	local         title=$(RGIStitle             "${domain}" "${variable}" "${product}" "${resolution}" "LTstdDev" "annual" "${startyear}-${endyear}" "${version}")
	grdExtractLayers -t "${title}" -f "StdDev" -l "StdDev" -d "${domain}" -u "$(RGISlookupSubject ${variable})" "${statsFile}" |\
	grdDateLayers -e "year" - "${stdDevLTfile}" || return 1

#	rm "${statsFile}"
	return 0
}

function RGISStatistics ()
{
	local    archive="${1}"
	local     domain="${2}"
	local   variable="${3}"
	local    product="${4}"
	local resolution="${5}"
	local    version="${6}"
	local  startyear="${7}"
	local    endyear="${8}"

	RGISAppend "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "${version}" "${startyear}" "${endyear}" "monthly" || return 1
	RGISAppend "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "${version}" "${startyear}" "${endyear}" "annual"  || return 1

	RGISClimatology "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "${version}" "${startyear}" "${endyear}"      || return 1
	RGISCellStats   "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "${version}" "${startyear}" "${endyear}"      || return 1
	local  annualTSfile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "TS"    "annual"  "${startyear}-${endyear}")
	local monthlyTSfile=$(RGISfile "${archive}" "${domain}" "${variable}" "${product}" "${resolution}" "TS"    "monthly" "${startyear}-${endyear}")
	[ -e  "${annualTSfile}" ] && rm  "${annualTSfile}"
	[ -e "${monthlyTSfile}" ] && rm "${monthlyTSfile}"
	return 0
}
