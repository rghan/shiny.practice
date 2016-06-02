# shiny.practice

This is my introduction and education of shiny apps in R. My shiny apps are based upon the tutorials by the kind folks at [Rstudio](http://shiny.rstudio.com/).

## Tutorials

Video [tutorials](http://shiny.rstudio.com/tutorial/) and [written](http://shiny.rstudio.com/tutorial/lesson1/)!

I have chosen to wrap both the `ui.R` and `server.R` scripts into one function that are called at the end of the script.

*e.g.*
```R
shinyApp(ui = ui, server = server)
```