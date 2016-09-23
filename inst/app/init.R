## urls for menu
r_url_list <- getOption("radiant.url.list")
r_url_list[["Describe text"]] <-
  list("tabs_text" = list("Summary" = "model/regress/",
                          "Plot"    = "model/regress/plot/"))
options(radiant.url.list = r_url_list); rm(r_url_list)

## model menu
options(radiant.text_ui =
	tagList(
    navbarMenu("Text",
      "Describe",
      tabPanel("Describe text", uiOutput("text_describe")),
      "----", "Estimate",
      tabPanel("Estimate text", uiOutput("text_estimate"))
    )
  )
)
