
#install.packages('rsconnect')


# Load packages
library(shiny)
library(shinythemes)
library(dplyr)
library(ggplot2)

# Load data
trend_data <- read.csv("D:/Internship/shinyApp/rsconnect/DallasnPolkTable.csv")

colnames(trend_data)[1] <- "year"
col_names <- colnames(trend_data)[2:10] 

# Define UI
ui <- fluidPage(
  titlePanel("Eviction Data"),
  
  
  
  sidebarLayout(position = "right",
                sidebarPanel(
                  selectInput("year", label = strong("Year to select"), choices = unique(trend_data$year))
                ),
                mainPanel(
                  plotOutput("barPlot")
                )
  )
)


server <- function(input, output) {
  
  filterData <- reactive(
    {trend_data[trend_data$year==input$year, 2:10]}
  )

  output$barPlot <- renderPlot({
    
    df <- data.frame(t(filterData()))
    colnames(df)[1] <- "X1"
    ggplot(df, aes(x = col_names, y = X1)) + geom_bar(stat = "identity")
  })
  
}


shinyApp(ui = ui, server = server)
