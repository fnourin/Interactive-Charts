
#install.packages('rsconnect')


# Load packages
library(shiny)
library(shinythemes)
library(dplyr)
library(ggplot2)

# Load data
trend_data <- read.csv("DallasnPolkTable.csv")

colnames(trend_data)[1] <- "year"
col_names <- colnames(trend_data)[2:10] 

# Define UI
ui <- fluidPage(
  titlePanel("Polk and Dallas County Eviction Data by Year"),
  
  
  
  sidebarLayout(position = "right",
                sidebarPanel(
                  selectInput("year", label = strong("Select Year"), choices = unique(trend_data$year))
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
    ggplot(df, aes(x = col_names, y = X1, face = "bold")) + geom_bar(position = 'dodge', stat = "identity")+
      xlab("Outcome") + ylab("No. of Eviction Cases") + theme(axis.text.x = element_text(angle = 45, hjust = 1))+
      geom_text(aes(label= X1), position=position_dodge(width=0.9), vjust=-0.25)
  })
  
}


shinyApp(ui = ui, server = server)
