#' Make a roses are red poem
#'
#' Make a "roses are red ..." poem
#' about an R package.
#'
#' @param pkg A package
#' @param hint extra information to add to the prompt
#' @param emoji Should the poem include emojis ?
#' @param chat A [ellmer::Chat] object, e.g. [ellmer::chat_openai()]. The default uses
#'   the 'gpt-3.5-turbo' model from OpenAI.
#' @inheritParams rlang::args_error_context
#'
#' @return A lovely poem for your package crush
#'
#' @examples
#' prompt("dplyr")
#'
#' \dontrun{
#'   # this needs the OPENAI_API_KEY environment variable
#'   # to be set. Visit https://openai.com/api/
#'   roses("dplyr")
#' }
#'
#' @importFrom glue glue
#' @importFrom ellmer chat_openai
#' @importFrom cli cli_abort
#' @importFrom rlang current_env
#' @export
roses <- function(pkg, hint = "", emoji = TRUE, chat = chat_openai(model = "gpt-3.5-turbo"), error_call = current_env()) {
  error_handler <- function(e) {
    cli_abort(c(
      "Problem creating or communicating with the LLM.",
      i = "See {.fn ellmer::chat_openai} and friends for details on how to create a {.cls Chat} object.}"
    ), parent = e, call = error_call)
  }

  prompt <- prompt(pkg, hint = hint, emoji = emoji)

  chat <- withCallingHandlers(force(chat), error = error_handler)

  if (!inherits(chat, "Chat")) {
    cli_abort(
      c("The {.arg chat} argument must be a {.cls Chat} object, not {.obj_type_friendly {chat}}."),
      call = error_call
    )
  }

  withCallingHandlers(chat$chat(prompt, echo = "text"), error = error_handler)
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
