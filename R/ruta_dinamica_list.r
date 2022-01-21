#' Ruta de carpetas
#'
#  Permite capturar información sobre ruta de manera dinámica
#' @param Ninguno No se requieren parametros
#' @return Ruta de carpetas en una lista
#' @export

ruta_dinamica_list <- function (){
    setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
    stringr::str_locate(rstudioapi::getSourceEditorContext()$path,"02. Procedimientos")
    final = stringr::str_locate(rstudioapi::getSourceEditorContext()$path,"02. Procedimientos")[ ,1]
    Ruta = stringr::str_sub(rstudioapi::getSourceEditorContext()$path,start=1, end=(final-1))


    Insumos = paste0(Ruta, "01. Insumos/")
    Procedimientos = paste0(Ruta, "02. Procedimientos/")
    Productos = paste0(Ruta, "03. Productos/")
    
    list(Insumos,
        Procedimientos,
        Productos
    )
}