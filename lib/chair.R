Chair <- function (legs) {
  chair <- list(legs = legs)
  class(chair) <- "Chair"
  chair$get_legs <- function(){legs}
}

