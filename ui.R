####################################
#### Climate Fun - ui.R ###
####################################

library(caret)
shinyUI (
        pageWithSidebar (
                # Application title
                headerPanel ("Temperature Forecaster Fun"),
                
                sidebarPanel (
                        numericInput('Ozone', 'Ozone', 4, min = 1, max= 168, step = 1),
                        numericInput('Solar.R', 'Solar.R', 8, min = 1, max= 334, step = 3),
                        numericInput('Wind', 'Wind', 4.6, min = 1.0, max= 20.7, step = .1),
                        numericInput('Month', 'Month', 5, min = 5, max= 9, step = 1),
                        numericInput('Day', 'Day', 1, min = 1, max= 31, step = 1),
                        submitButton('Submit')
                ),
                mainPanel (
                        h3 ('Results of forecast'),
                        h4 ('Predicted Temperature:'),
                        textOutput("prediction")
                )
        )
        
)