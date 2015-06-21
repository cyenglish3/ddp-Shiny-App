####################################
#### Calculator Fun - ui.R ########
####################################


library(shiny)

shinyUI(pageWithSidebar(
        headerPanel(""),
        ## Prompt user for input values and type of operation to perform
        sidebarPanel(
                numericInput('value1', "Enter your first value", 0),
                radioButtons("operator", "Arithmetic Operation Type",
                             c("+" = "+",
                               "-" = "-",
                               "*" = "*",
                               "/" = "/",
                               "%" = "%",
                               "1/x" = "1/x",
                               "square root" = "sqroot"
                             )),
                numericInput('value2', "Enter your second value", 0),
                submitButton("CALCULATE"),
                
                h6('The first value is used for 1/x and square root operations; in this case, the second value will be ignored')
        ),
        mainPanel(
                headerPanel('Calculator Fun'),
                
                p("This simple calculator application was designed for the 
Developing Data Products course in the Data Science Specialization on Coursera. 
This application allows a front-end user to perform a simple calculation - to include percentage and sqaure root - 
with user-entered values by pressing the 'CALCULATE' button in the left navigation panel."),
                
       
               
                h3('Results'),
                textOutput("result"),
                
                h2(""),
                
                h5('Code Sources'),
                
                a(href="https://github.com/RanjanParida/DevelopingDataProd",
                  "SourceCode"), p("On GITHUB"),
                
                a(href="http://rpubs.com/rparida/DDP_PA", 
                  "Course Presentation"), p("On ghPages")
                
                
                
        )
)
)