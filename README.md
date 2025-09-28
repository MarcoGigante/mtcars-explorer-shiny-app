# MTCars Data Explorer: Interactive Visualization App

This repository contains the source code and materials for an interactive Shiny application and reproducible pitch presentation, created as the final course project for Coursera’s “Developing Data Products”.

## Contents

- `ui.R` and `server.R`: Shiny app source files
- `pitch_presentation.Rmd`: R Markdown source for the pitch presentation
- `pitch_presentation.html`: Rendered HTML version of the slides
- `README.md`: This file
- `CodeBook.md`: Documentation for app logic, dataset, and presentation

## Features

- **User input:** Dynamic variable selector and personalized greeting
- **Reactive output:** Plot and summary table for variables in the mtcars dataset
- **Clear documentation:** User instructions within the app and supporting files
- **Pitch presentation:** Five-slide pitch, including a demo of live R code

## Getting Started

To run the Shiny app locally:
1. Download or clone this repository.
2. Open RStudio and set your working directory here.
3. Make sure you have the `shiny` and `ggplot2` packages installed.
4. Use “Run App” in RStudio to launch locally.
5. To deploy online, use ShinyApps.io and run `rsconnect::deployApp()` after registering your account.

To view the pitch presentation:
- Open `pitch_presentation.html` in your web browser.
- Or knit `pitch_presentation.Rmd` to HTML and publish to RPubs/GitHub Pages.

## Author

Marco Gigante  
Created for Coursera Developing Data Products (Peer-Graded Assignment)
