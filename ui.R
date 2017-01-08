library(shiny)

fluidPage(
  
  title = 'Lab Result Viewer',
  
  h1('Lab Results'),
  
  hr(),
  
  #sidebarLayout(
    
    #sidebarPanel(
    #  DT::dataTableOutput('x1'),
    #  actionButton('clear1', 'Clear Rows'),
    #  width = 7
    #),
    
    #mainPanel(
    #  plotOutput("distPlot"),
    #  plotOutput("histPlot")
    #)
  #)
    # "height:800px;background-color: yellow;", "Topleft"
  #fluidRow(
  #  column(6, actionButton('clear1', 'Clear Rows'))),
  fluidRow(
    column(6, DT::dataTableOutput('x1'), div(style = "height:400px;")),
    column(6, plotOutput("distPlot")),
    column(6, plotOutput("histPlot")))
    
  #fixedRow(
  #    column(6, actionButton('clear1', 'Clear Rows')))# clear button
      #,
      #column(3, verbatimTextOutput('s'))
  
  
)