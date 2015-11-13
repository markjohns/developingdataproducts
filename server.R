TotalInterest <- function(initialvalue,rate, n) {initialvalue * sum((1+rate/100)^(0:(n-1))*rate/100)}

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$presentvalue})
                output$inputRate <- renderPrint({input$rate})
                output$inputPeriod <- renderPrint({input$nperiods})
                output$prediction <- renderPrint({TotalInterest(input$presentvalue,input$rate,input$nperiods)})
        }
)