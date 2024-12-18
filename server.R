library(shiny)
library(ggplot2)
library(datasets)

data("iris")

function(input, output, session) {
  output$dataTable <- renderTable({
    if (input$showData) iris else NULL
  })
  
  output$histPlot <- renderPlot({
    ggplot(iris, aes_string(x = input$variable)) +
      geom_histogram(binwidth = 0.3, fill = "blue", color = "black") +
      theme_minimal() +
      labs(title = paste("Distribution de", input$variable))
  })
  
  output$pairPlot <- renderPlot({
    pairs(iris[1:4], col = iris$Species)
  })
}
