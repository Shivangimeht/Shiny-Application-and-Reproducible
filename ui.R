library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Price predictor for Diamonds"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            helpText("This application is a predictor for the price of the diamonds based on characteristics."),
            h3(helpText("Select:")),
            numericInput("car",label = h4("carat"), step = 0.01, value = 1.5),
            selectInput("cut",label = h4("cut"),
                        choices = list("Unknown" = "*","Fair" = "Fair","Good" = "^Good",
                                       "Very Good" = "Very Good", "Premium" = "Premium",
                                       "Ideal" = "Ideal")),
            selectInput("col", label = h4("color"),
                        choices = list("Unknow" = "*", "D" = "D", "E" = "E", "F" = "F",
                                       "G" = "G", "H" = "H", "I" = "I", "J" = "J")),
            selectInput("clar", label = h4("clarity"),
                        choices = list("Unknown" ="*", "I1" = "I1", "SI2" = "SI2",
                                       "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1",
                                       "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF" ))
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            h4("Predicted value of this diamond is:"),
            h3(textOutput("result"))
        )
    )
))
