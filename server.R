####################################
#### Climate Fun - server.R ###
####################################

library(shiny)
library(RCurl)
library(caret)

climate <- read.csv(text = climateData.csv)
modFit <- train(Temp ~ Ozone + Solar.R + Wind + Month + Day, method="glm", data=climate)
shinyServer(
        function(input, output) { 
                pred = predict(modFit, climate)
                output$prediction <- renderPrint ({as.string(pred)})
                output$prediction <- renderPrint ({
                        ozone = input$Ozone
                        solar = input$Solar.R
                        wind = input$Wind
                        month = input$month
                        day = input$day
                        predict(modFit,data.frame(ozone, solar, wind, month, day))})
        }
)