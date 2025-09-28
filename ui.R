# Shiny App User Interface
# This UI creates a simple interactive application for exploring mtcars dataset
# Users can select variables and view plots with summaries

library(shiny)

fluidPage(
  titlePanel("MTCars Data Explorer"),
  
  sidebarLayout(
    sidebarPanel(
      # Text input for user to enter their name or title
      textInput("user_name", 
                "Enter your name:", 
                value = "Data Explorer"),
      
      # Select input to choose variable from mtcars dataset
      selectInput("variable", 
                  "Choose a variable to plot:",
                  choices = list(
                    "Miles per Gallon" = "mpg",
                    "Cylinders" = "cyl",
                    "Displacement" = "disp",
                    "Horsepower" = "hp",
                    "Rear axle ratio" = "drat",
                    "Weight" = "wt",
                    "Quarter mile time" = "qsec",
                    "V/S" = "vs",
                    "Transmission" = "am",
                    "Number of gears" = "gear",
                    "Number of carburetors" = "carb"
                  ),
                  selected = "mpg"),
      
      # Instructions for users
      h4("Instructions:"),
      p("1. Enter your name above"),
      p("2. Select a variable from the dropdown"),
      p("3. View the histogram and summary statistics")
    ),
    
    mainPanel(
      # Display user greeting
      h3(textOutput("greeting")),
      
      # Plot output for the selected variable
      plotOutput("variable_plot"),
      
      # Display summary statistics
      h4("Summary Statistics:"),
      verbatimTextOutput("summary_stats")
    )
  )
)