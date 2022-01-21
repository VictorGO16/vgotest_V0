#' Ruta de 03. Productos
#'
#  Permite capturar información sobre ruta de manera dinámica
#' @param Ninguno No se requieren parametros
#' @return Ruta de carpeta 03. Productos
#' @export
PRODU <- function(Productos){

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

stringr::str_locate(rstudioapi::getSourceEditorContext()$path,"02. Procedimientos")
final = stringr::str_locate(rstudioapi::getSourceEditorContext()$path,"02. Procedimientos")[ ,1]
Ruta = stringr::str_sub(rstudioapi::getSourceEditorContext()$path,start=1, end=(final-1))

Productos = paste0(Ruta, "03. Productos/")

Productos

}