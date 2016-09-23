help_text <- c("Describe text" = "text.Rmd")
output$help_text_menu <- reactive(append_help("help_text", file.path(getOption("radiant.path.text"),"app/tools/help/"), Rmd = TRUE))
observeEvent(input$help_text_all, {help_switch(input$help_text_all, "help_text")})
observeEvent(input$help_text_none,{help_switch(input$help_text_none, "help_text", help_on = FALSE)})

help_text_panel <- tagList(
  wellPanel(
    HTML("<label>Text menu: <i id='help_text_all' title='Check all' href='#' class='action-button glyphicon glyphicon-ok'></i>
    <i id='help_text_none' title='Uncheck all' href='#' class='action-button glyphicon glyphicon-remove'></i></label>"),
    checkboxGroupInput("help_text", NULL, help_text,
       selected = state_group("help_text"), inline = TRUE)
  )
)
