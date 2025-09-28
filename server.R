# Shiny App Server Logic
# This server script handles all the reactive functions and data processing
# It responds to user inputs and generates outputs for the UI

library(shiny)
library(ggplot2)

# Define server logic for the MTCars Data Explorer application
shinyServer(function(input, output) {
  
  # Create a greeting message using the user's name input
  # This output responds reactively when user_name changes
  output$greeting <- renderText({
    if (input$user_name == "") {
      "Welcome to the MTCars Data Explorer!"
    } else {
      paste("Hello", input$user_name, "! Welcome to the MTCars Data Explorer!")
    }
  })
  
  # Generate a histogram plot of the selected variable
  # This plot updates automatically when the user selects a different variable
  output$variable_plot <- renderPlot({
    # Get the selected variable from the UI selectInput
    selected_var <- input$variable
    
    # Create a histogram using ggplot2 for better visualization
    # We use mtcars dataset which is built into R
    ggplot(mtcars, aes_string(x = selected_var)) +
      geom_histogram(bins = 10, 
                     fill = "steelblue", 
                     color = "white", 
                     alpha = 0.7) +
      labs(title = paste("Distribution of", selected_var, "in MTCars Dataset"),
           x = selected_var,
           y = "Frequency") +
      theme_minimal() +
      theme(plot.title = element_text(hjust = 0.5, size = 14))
  })
  
  # Display summary statistics for the selected variable
  # This provides users with key statistical information
  output$summary_stats <- renderPrint({
    # Get the selected variable from the UI selectInput
    selected_var <- input$variable
    
    # Extract the data for the selected variable
    var_data <- mtcars[[selected_var]]
    
    # Create a comprehensive summary with user-friendly labels
    cat("Summary Statistics for", selected_var, ":\n")
    cat("================================\n")
    cat("Count:", length(var_data), "\n")
    cat("Mean:", round(mean(var_data), 2), "\n")
    cat("Median:", round(median(var_data), 2), "\n")
    cat("Standard Deviation:", round(sd(var_data), 2), "\n")
    cat("Minimum:", min(var_data), "\n")
    cat("Maximum:", max(var_data), "\n")
    cat("Range:", range(var_data)[1], "to", range(var_data)[2], "\n")
    
    # Add quartile information
    quartiles <- quantile(var_data)
    cat("\nQuartiles:\n")
    cat("Q1 (25%):", quartiles[2], "\n")
    cat("Q3 (75%):", quartiles[4], "\n")
    cat("IQR:", round(IQR(var_data), 2), "\n")
  })
})