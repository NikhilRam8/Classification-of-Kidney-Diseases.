library(shiny)

# Source the UI and server components
source("app_ui.R")
source("app_server.R")

# Create and run the Shiny app using the sourced ui and server objects
shinyApp(ui = ui, server = server)

