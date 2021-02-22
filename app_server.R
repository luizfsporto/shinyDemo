# The app_server.R file defines and processes the data to be displayed by the UI

server <- function(input, output) {
  # Creates a welcoming greeting to the user
  output$message <- renderText({
    msg <- paste0("How's it going, ", input$username, "?")
    return(msg) 
  })

  # # Creates a message displaying the total cost
  output$cost <- renderText({
    return(paste0('The total cost is: $', input$price * input$quantity))
  })
}