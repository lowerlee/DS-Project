library(shiny)
library(shinyBS)
library(shinydashboard)
library(shinythemes)
library(Seurat)
library(tidyverse)
library(ggplot2)

ui <- dashboardPage(
  dashboardHeader(title = "BDRL Down Syndrome Project", titleWidth = 350), #Need to make the textbox bigger only showing "BDRL Down"
  dashboardSidebar(selectizeInput("genes", "Gene Symbols", choices = NULL, multiple = TRUE)),
  dashboardBody(
    plotOutput("selected_gene_featureplot"),
    plotOutput("selected_gene_dotplot")
  )
)
