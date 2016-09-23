## sourcing from radiant.data
options(radiant.path.data = system.file(package = "radiant.data"))
source(file.path(getOption("radiant.path.data"), "app/global.R"), encoding = getOption("radiant.encoding", default = "UTF-8"), local = TRUE)

ifelse (grepl("radiant.text", getwd()) && file.exists("../../inst") , "..", system.file(package = "radiant.text")) %>%
  options(radiant.path.model = .)

## setting path for figures in help files
addResourcePath("figures_text", "tools/help/figures/")

## loading urls and ui
source("init.R", encoding = getOption("radiant.encoding"), local = TRUE)
options(radiant.url.patterns = make_url_patterns())
