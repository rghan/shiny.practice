# Define UI for application that draws a histogram
ui <- fluidPage(

  # Application title
  titlePanel("Hello Histograms!"),

  h4("My first shiny app that creates an interactive histogram."),
  
  HTML("<p>The <strong>Hello Shiny app</strong> plots a histogram of R’s <code>faithful</code> dataset with a configurable number of bins. Users can change the number of bins with a slider bar, and the app will immediately respond to their input. You’ll use <strong>Hello Shiny</strong> to explore the structure of a Shiny app and to create your first app.</p>"),

   HTML("<p>App interface based on the <a href='http://shiny.rstudio.com/tutorial/lesson3/', target='blank'>Rstudio tutorial-1</a>.</p>"),

  br(),


  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 5,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot

  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'skyblue', border = 'white')
  })
}

# Run the application
shinyApp(ui = ui, server = server)