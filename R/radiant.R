#' Launch radiant.text in the default browser
#'
#' @details See \url{http://radiant-rstats.github.io/docs} for documentation and tutorials
#'
#' @importFrom shiny runApp
#'
#' @export
radiant.text <- function() {
  if (!"package:radiant.text" %in% search())
    if (!require(radiant.text)) stop("Calling radiant.text start function but radiant.model is not installed.")
  runApp(system.file("app", package = "radiant.text"), launch.browser = TRUE)
}
