# Define UI for application that draws a histogram
ui <- fluidPage(

  titlePanel("CensusVis"),

  br(),
  br(),

  fluidRow(
    column(
      h3("Help text"),
      helpText("Create demographic maps with information from the,
        2010 US Census.")),
    
    column(
      selectInput("select", label = h3("Choose a variable to display"), 
        choices = list("Percent White" = 1, "Percent Black" = 2,
                       "Percent Hispanic" = 3, "Percent Asian" = 4), selected = 1)),
    
    column(
      sliderInput("slider1", label = h3("Range of Interest:"),
        min = 0, max = 100, value = c(0, 100))
      )
    )
)

server <- function(input, output) {
    ## this is not the server you were looking for, but it does fool R.
}

# Run the application
shinyApp(ui = ui, server = server)