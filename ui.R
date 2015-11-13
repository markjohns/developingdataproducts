library(shiny)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Total Interest Calculation"),
                
                sidebarPanel(
                        numericInput('presentvalue', 'USD', 0, min = 0, max = 10000000, step = 1),
                        numericInput('rate', 'Percent Rate', 0, min = 0, max = 1000, step = 0.01),
                        numericInput('nperiods', 'Number of Periods', 1, min = 1, max = 1000, step = 1),
                        submitButton('Submit')
                ),
                
                mainPanel(
                       
                        h3('Results of calculation'),
                        h4('The present value is'),
                        verbatimTextOutput("inputValue"),
                        h4('The percent rate is'),
                        verbatimTextOutput("inputRate"),
                        h4('The number of periods is'),
                        verbatimTextOutput("inputPeriod"),
                        h4('Total interest'),
                        verbatimTextOutput("prediction"),
                        tabsetPanel(
                                tabPanel("Documentation", includeHTML("documentation.html"))
                        )
                )
        )
)