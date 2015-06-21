####################################
#### Calculator Fun - server.R ####
####################################

library(shiny)
library(datasets)



calcValue <- function(value1, value2, operator) {
        ## Parse the arithmetic operator to perform calculations
        ## In case of 1/x use the Value 1 as x and ignore Value 2
        if (operator == "%") {
                operator <- '*'
                value1 <- value1 / 100
        }
        else if (operator == "1/x") {
                value2 <- val1
                value1 <- 1
                operator <- ' / '
        }
        
        ## Handle Square Root operation by direct application of function on Value 1
        if (operator == "sqroot")
                sqrt(value1)
        else
                eval(parse(text=paste(as.character(value1), operator, as.character(value2))))
}
shinyServer(
        function(input, output) {
                
                
                output$inputValue1 <- renderPrint({input$value1})
                output$inputOperator <- renderPrint({input$operator})
                output$inputValue2 <- renderPrint({input$value2})
                output$result <- renderPrint({calcValue(input$value1, input$value2, input$operator)})
                
                
        }
)