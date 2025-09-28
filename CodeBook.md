# CodeBook: MTCars Data Explorer

This codebook documents the logic, dataset, and structure for the "MTCars Data Explorer" project.

## Files

- `ui.R`: Shiny app user interface
    - Contains:
        - `textInput("username", ...)`: Personalized greeting
        - `selectInput("variable", ...)`: Variable selector (from mtcars dataset)
        - `plotOutput("mtcarsPlot")`: Shows selected distribution
        - `verbatimTextOutput("summary")`: Displays summary statistics

- `server.R`: Shiny app server logic
    - Implements:
        - Personalized greeting from textInput
        - Real-time reactive plot for chosen mtcars variable
        - Summary statistics: mean, median, min, max
        - All outputs update instantly with input changes

- `pitch_presentation.Rmd` / `pitch_presentation.html`: Pitch deck
    - Structure:
        1. **Title**: Project name & author
        2. **Overview**: What the app does and dataset info
        3. **How It Works**: Explanation of UI and outputs
        4. **Live Demo**: Shows both code and generated plot from mtcars
        5. **How to Use**: Step-by-step usage guide

## Dataset

- **mtcars** (R built-in dataset):  
    - 32 cars, 11 variables  
    - Key variables: mpg (Miles Per Gallon), cyl (Cylinders), disp (Displacement), hp (Horsepower), etc.

## Usage Guidance

- Instructions are included both in the app and the slides
- Designed for smooth experience—no advanced R required

## Dependencies

- R (>= 4.0.0 recommended)
- shiny
- ggplot2
- rmarkdown (for slides)

## License

This code is provided for educational purposes as part of Coursera’s Developing Data Products specialization.
