
shinyServer(
  function(input, output) {
    output$gamma <- renderPlot({
      alpha<-input$alpha
      beta<-input$beta
      x<-seq(0.01,5,0.002)
      gamma<-dgamma(x,alpha,beta)
      plot(gamma, xlab='x', col='blue',main='Gamma Distribution')
    
    })
    
  }
)