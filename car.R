
#' Class Car
#' 
#' Stores details of car and contains method for mpg per dollar.


#' Constructor for class 'Car' 
#' 
#' @param model A string
#' @param mpg A number
#' @param cost A number
#' @examples
#' car("focus", 20, 30000)

car <- function(model, mpg, cost){
  value <- list(model = model, mpg = mpg, cost = cost)
  
  # class can be set using class() or attr() function
  attr(value, "class") <- "car"
  value
}


#' Return mpg per dollar
#' 
#' @examples
#' my_car <- car("focus", 20, 30000)
#' my_car.mpg_per_dollar()


mpg_per_dollar <- function(obj) {
  return(obj$mpg / obj$cost)
}
