# The app_ui.R file defines how the application is displayed in the browser


# First tab: Greets the user
greeting <- tabPanel(
  "Greetings",
  h1("Welcome to Luiz Fernando's Shiny demo!"),  # *Static* element (does not change as the user interacts with the page),
  br(), # line-break element
  textInput(inputId = "username", label="What is your name?"),  # Dynamic *input* element (provide input to the server)
  textOutput(outputId = "message"),  # Dynamic *output* element (reactive output, the displayed content changes)
)

# Second tab: Calculates a cost based on user's inputs on price and quantity
cost <- tabPanel(
  "Adios, money",
  titlePanel("Price * Quantity"),
  br(),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "price", label = "Price (in $)", value = 20, min = 0),
      sliderInput(inputId = "quantity", label = "Quantity", min = 0, max = 20, value = 5),
    ),
    mainPanel(
      textOutput(outputId = "cost"),
      br(),
      img(src="money_flying_away.jpg") # To insert an image, you need to put into a folder called 'www'
    )
  )
)

# Creates a page with a top navigation bar to toggle the tab panels above
ui <- navbarPage(
 "Shiny Demo INFO 201 AD",
 greeting,
 cost
)