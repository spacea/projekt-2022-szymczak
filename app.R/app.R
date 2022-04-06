library(shiny)
library(readxl)
library(imager)

ui <- fluidPage(
  
  titlePanel("Taktyka doboru opon w F1"),
  
  radioButtons("tor", "Wybierz tor",
               c("Circuit de Monako" = "monako",
                 "Autodromo Natzionale Monza" = "monza",
                 "Spa Francorchamps" = "spa")),
  imageOutput("taktyka")
)

server <- function(input, output) {
  output$taktyka = renderPlot({
    tor = switch(input$tor,
                 monako = source("shiny/funkcja_Monako.R"),
                 monza = source("shiny/funkcja_Monza.R"),
                 spa = source("shiny/funkcja_Spa.R"))
  })
}

shinyApp(ui, server)
