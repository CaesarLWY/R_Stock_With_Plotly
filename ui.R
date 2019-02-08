
library(shiny)
library(plotly)

shinyUI(fluidPage(
  sidebarLayout(
    sidebarPanel(
      h3("Documentation:"),
      p("1. Enter the stock ID."),
      p("2. Enter the date Range."),
      p("3. Press the 'Submit' button below."),
      p("4. Then the stock candlestick will be plotted."),
      textInput("id", "Stock ID:", value= "MSFT"),
      dateRangeInput("date", "Date:", "2019-01-01"),
      submitButton("Submit")
      ),

    mainPanel(
      h1("Stock Performance"),
      plotlyOutput("plot")
      
    ))
  )
)

