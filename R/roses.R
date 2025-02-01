#' Make a roses are red poem
#'
#' Make a "roses are red ..." poem
#' about an R package.
#'
#' @param pkg A package
#' @param hint extra information to add to the prompt
#' @param emoji Should the poem include emojis ?
#' @param chat A Chat object, e.g. [ellmer::chat_openai()]. The default uses
#'   the 'gpt-3.5-turbo' model from OpenAI.
#'
#' @return A lovely poem for your package crush
#'
#' @importFrom glue glue
#' @examples
#' prompt("dplyr")
#'
#' \dontrun{
#'   # this needs the OPENAI_API_KEY environment variable
#'   # to be set. Visit https://openai.com/api/
#'   roses("dplyr")
#' }
#' @export
roses <- function(pkg, hint = "", emoji = TRUE, chat = ellmer::chat_openai(model = "gpt-3.5-turbo")) {
  prompt <- prompt(pkg, hint = hint, emoji = emoji)

  chat$chat(prompt, echo = "text")
}

#' @rdname roses
#' @export
prompt <- function(pkg, hint = "", emoji = TRUE) {
  emoji_prompt <- if (isTRUE(emoji)) {
    "Include a bunch of emojis"
  } else {
    "Don't include emojis"
  }
  glue('Make a 4 lines subtle "roses are red ..." poem to express your love for the R package "{pkg}". {emoji_prompt}. {hint}')
}
