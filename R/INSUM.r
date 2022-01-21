#' Ruta de 01. Insumos
#'
#  Permite capturar informacion sobre ruta de manera dinamica
#' @param Ninguno No se requieren parametros
#' @return Ruta de carpeta 01. Insumos
#' @export

INSUM <- function() {

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

stringr::str_locate(rstudioapi::getSourceEditorContext()$path,"02. Procedimientos")
final = stringr::str_locate(rstudioapi::getSourceEditorContext()$path,"02. Procedimientos")[ ,1]
Ruta = stringr::str_sub(rstudioapi::getSourceEditorContext()$path,start=1, end=(final-1))

Insumos = paste0(Ruta, "01. Insumos/")

Insumos

}