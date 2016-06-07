# Define UI for application that draws a histogram
ui <- fluidPage(

  titlePanel("CensusVis"),

  HTML("<p>App interface based on the <a href='http://shiny.rstudio.com/tutorial/lesson3/', target='blank'>Rstudio tutorial-3</a>.</p>"),

  br(),

  fluidRow(
    column(4,
      h3("Help text"),
      helpText("Create demographic maps with information from the,
        2010 US Census."),
      selectInput("select", label = h3("Choose a variable to display"), 
        choices = list("Percent White" = 1, "Percent Black" = 2,
                       "Percent Hispanic" = 3, "Percent Asian" = 4), selected = 1),
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