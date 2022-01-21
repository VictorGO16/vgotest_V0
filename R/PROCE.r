#' Ruta de 02. Procedimientos
#'
#  Permite capturar información sobre ruta de manera dinámica
#' @param Ninguno No se requieren parametros
#' @return Ruta de carpeta 02. Procedimientos
#' @export
PROCE <- function(){

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

stringr::str_locate(rstudioapi::getSourceEditorContext()$path,"02. Procedimientos")
final = stringr::str_locate(rstudioapi::getSourceEditorContext()$path,"02. Procedimientos")[ ,1]
Ruta = stringr::str_sub(rstudioapi::getSourceEditorContext()$path,start=1, end=(final-1))

Procedimientos = paste0(Ruta, "02. Procedimientos/")

Procedimientos

}