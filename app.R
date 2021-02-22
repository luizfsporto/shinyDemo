# Loads shiny
library(shiny)

# Loads the ui and server R files
source("app_ui.R")
source("app_server.R")

# Create a Shiny app object with the 'ui' and 'server' portions
shinyApp(ui = ui, server = server)