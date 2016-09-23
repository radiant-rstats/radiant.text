do.call(navbarPage,
  c("Radiant", getOption("radiant.nav_ui"), getOption("radiant.text_ui"),
    getOption("radiant.shared_ui"), help_menu("help_text_ui"))
)
