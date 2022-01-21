# Ruta
devtools::load_all()
library(tidyverse)
library(rstudioapi)
devtools::install()
devtools::document()
library(vgotest)
 
?PRODU()
devtools::document("C:/Users/vgall/Dropbox/MIDE/UA05 Desarrollos/2111 Migraci�n R/2201 VGO-ATP/Packages/vgotest/R/INSUM.r")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# 00. Rutas
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

INSUM <- function(Insumos){

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

str_locate(getSourceEditorContext()$path,"02. Procedimientos")
final = str_locate(getSourceEditorContext()$path,"02. Procedimientos")[ ,1]
Ruta = str_sub(getSourceEditorContext()$path,start=1, end=(final-1))

Insumos = paste0(Ruta, "01. Insumos/")

Insumos

}

PROCE <- function(Procedimientos){

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

str_locate(getSourceEditorContext()$path,"02. Procedimientos")
final = str_locate(getSourceEditorContext()$path,"02. Procedimientos")[ ,1]
Ruta = str_sub(getSourceEditorContext()$path,start=1, end=(final-1))

Procedimientos = paste0(Ruta, "02. Procedimientos/")

Procedimientos

}

PRODU <- function(Productos){

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

str_locate(getSourceEditorContext()$path,"02. Procedimientos")
final = str_locate(getSourceEditorContext()$path,"02. Procedimientos")[ ,1]
Ruta = str_sub(getSourceEditorContext()$path,start=1, end=(final-1))

Productos = paste0(Ruta, "03. Productos/")

Productos

}

ruta_dinamica <- function () 
{
    setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
    str_locate(getSourceEditorContext()$path, "02. Procedimientos")
    final = str_locate(getSourceEditorContext()$path, "02. Procedimientos")[, 
        1]
    Ruta = str_sub(getSourceEditorContext()$path, start = 1, 
        end = (final - 1))
    Insumos = paste0(Ruta, "01. Insumos/")
    Procedimientos = paste0(Ruta, "02. Procedimientos/")
list(Insumos,
Procedimientos,
Productos)
}

devtools::uninstall()