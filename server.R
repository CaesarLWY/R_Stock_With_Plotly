
shinyServer(function(input,output){
  library(quantmod)
  library(plotly)
  library(dplyr)
  output$plot <- renderPlotly({
    stockid <- input$id
    stock <-getSymbols(input$id, auto.assign = FALSE, from= input$date[1], to= input$date[2])
    df <- data.frame(date= index(stock), coredata(stock))
    plot_org <- df %>% plot_ly(x= df$date,type= "candlestick", open= df[,2],close=df[,5],high=df[,3],low=df[,4])
    plot_org %>% layout(title= stockid)
  })


})
