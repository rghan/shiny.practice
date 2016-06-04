# Define UI for application that draws a histogram
ui <- fluidPage(

  titlePanel("Buttons and widgets and things"),

  HTML("The buttons and widgets and things found within this app,", 
        "do not actually serve any function or offer any value, but if",
        "selecting, entering or otherwise interacting with the content herein,",
        "you may learn how to make a shiny app someday."),
  
  br(),
  br(),

  fluidRow( 
    column(3,
    HTML("<code>actionButton</code>"),  
    h3("Buttons"),      
      br(),
      actionButton("action", label = "Some Action"),
      br(),
      br(), 
      submitButton("Submit here")),
    
    column(3,
      HTML("<code>checkboxInput</code>"),
      h3("Single checkbox"),      
      checkboxInput("checkbox", label = "Choice A", value = TRUE)),
    
    column(3,
    HTML("<code>checkboxGroupInput</code>"), 
      checkboxGroupInput("checkGroup", 
        label = h3("Checkbox group"), 
        choices = list("Choice 1" = 1, 
           "Choice 2" = 2, "Choice 3" = 3),
        selected = 1)),
    
    column(3,
    HTML("<code>dateInput</code>"),  
      dateInput("date", 
        label = h3("Date input"), 
        value = "2014-01-01"))   
  ),
  
  fluidRow(
    
    column(3,
      br(),
      HTML("<code>dateRangeInput</code>"),  
      dateRangeInput("dates", label = h3("Date range"))),
    
    column(3,
      HTML("<code>fileInput</code>"), 
      fileInput("file", label = h3("File input"))),
    
    column(3, 
      HTML("<code>helpText</code>"),
      h3("Help text"),
      helpText("Note: help text isn't a true widget,", 
        "but it provides an easy way to add text to",
        "accompany other widgets.")),
    
    column(3, 
      HTML("<code>numericInput</code>"),
      numericInput("num",
        label = h3("Numeric input"), 
        value = 1))   
  ),
    
  fluidRow(
    
    column(3,
      HTML("<code>radioButtons</code>"), 
      radioButtons("radio", label = h3("Radio buttons"),
        choices = list("Choice 1" = 1, "Choice 2" = 2,
                       "Choice 3" = 3),selected = 1)),
    
    column(3,
      HTML("<code>selectInput</code>"), 
      selectInput("select", label = h3("Select box"), 
        choices = list("Choice 1" = 1, "Choice 2" = 2,
                       "Choice 3" = 3), selected = 1)),
    
    column(3, 
      HTML("<code>sliderInput</code>"), 
      sliderInput("slider1", label = h3("Sliders"),
        min = 0, max = 100, value = 50),
      sliderInput("slider2", "",
        min = 0, max = 100, value = c(25, 75))
      ),
    
    column(3, 
      HTML("<code>textInput</code>"), 
      textInput("text", label = h3("Text input"), 
        value = "Enter text..."))   
  )

)

server <- function(input, output) {
    ## this is not the server you were looking for, but it does fool R.
}

# Run the application
shinyApp(ui = ui, server = server)