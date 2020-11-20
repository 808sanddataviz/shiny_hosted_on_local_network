library(shiny)

# Running a Shiny app object
app <- shinyApp(
    ui = bootstrapPage(
        numericInput('n', 'Number of obs', 100),
        plotOutput('plot')
    ),
    server = function(input, output) {
        output$plot <- renderPlot({ hist(runif(input$n)) })
    }
)
runApp(app, host = getOption("shiny.host", "192.168.1.71"))
    
