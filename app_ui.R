library(shiny)

# Define the first tab: Introduction
intro_panel <- tabPanel("Introduction",
                        titlePanel("Income Inequality"),
                        p("The below diagram was created by the New York Times to illustrate the increasing level of inequality in the US."),
                        img(src = "inequality.png"),
                        p(a("Source of the article", href = "https://www.nytimes.com/interactive/2017/08/07/opinion/leonhardt-income-inequality.html")),
                        p("The diagram shows ", strong("a stark contrast"), " between the incomes of the top and bottom earners, ", em("highlighting the growth of inequality over the years."))
)

# Define sidebar content for the second tab
sidebar_content <- sidebarPanel(
  sliderInput("percentile", "Income Percentile", min = 0, max = 100, value = c(0, 100))
)

# Define main content for the second tab
main_content <- mainPanel(
  plotOutput("plot"),
  p(a("Data Source", href = "http://gabriel-zucman.eu/usdina/"))
)

# Define the second tab: Growth Chart
growth_panel <- tabPanel("Growth Chart",
                         titlePanel("Income growth 1980-2014"),
                         sidebarLayout(
                           sidebar_content,
                           main_content
                         )
)

# Define the overall UI using navbarPage
ui <- shinyUI(
  navbarPage("Income Inequality",
             intro_panel,
             growth_panel
  )
)
