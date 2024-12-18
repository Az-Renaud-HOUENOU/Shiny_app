library(shiny)
library(ggplot2)
library(datasets)

fluidPage(
  titlePanel("Exploration de la base de données IRIS"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Choisissez la variable à analyser :", 
                  choices = names(iris)[1:4], selected = names(iris)[1]),
      checkboxInput("showData", "Afficher les données ?", TRUE)
    ),
    
    mainPanel(
      tableOutput("dataTable"),
      plotOutput("histPlot"),
      plotOutput("pairPlot")
    )
  )
)
