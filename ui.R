library(shiny)

shinyUI(
  navbarPage("Gamma Distribution  Explorer",
  tabPanel("Plot",
    sidebarPanel(
      sliderInput('alpha', 'Chose the alpha value',value = 0.5, min = 0, max = 1, step = 0.01),    
      sliderInput('beta', 'Chose the value of beta',value = 0.5, min = 0, max = 1, step = 0.01)
    ),
   
    mainPanel(
      plotOutput('gamma')
    )
  ),
  tabPanel("About",
           mainPanel(
            h3('Gamma Distribution Explorer'),
            
            p('This application illustrates the gamma distribution. 
              You can adjust the alpha and beta parameters using the sliders at the left side. ')
           )
  )
))
