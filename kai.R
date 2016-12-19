# ### snow
# #### Description
# Creates or tests for objects of type "snow".
# #### Usage
# snow(snowfall, area, duration, density)
# #### Arguments
# Snowfall (depth per hour in mm/h)
# Area (in km^2)
# Duration (in hours)
# Density (0.1 – 0.8 g/cm3)
snow <- function(s, a, d, dens){
  value <- list(snowfall = s, area = a, duration = d, density = dens)
  
  # class can be set using class() or attr() function
  attr(value, "class") <- "snow"
  value
}



# ### Depth
# #### Description
# calculate total depth of snow.
# #### Usage
# depth(snow)
# #### Arguments
# a snow object
# #### Details
# depth = snowfall*duration
depth <- function(obj) {
  return(obj$snowfall * obj$duration)
}



# ### Volume
# #### Description
# calculate total volume of snow.
# #### Usage
# volume(snow)
# #### Arguments
# a snow object
# #### Details
# volume = depth(snow) * area
volume <- function(obj) {
  return(depth(obj) * obj$area)
}



# ### Weight
# #### Description
# calculate total weight of snow.
# #### Usage
# weight(snow)
# #### Arguments
# a snow object
# #### Details
# weight = volume(snow) * density
weight <- function(obj) {
  return(volume(obj) * obj$density)
}