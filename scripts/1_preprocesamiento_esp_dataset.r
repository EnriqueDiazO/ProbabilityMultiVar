# 📌 preprocesamiento.R - Limpieza y transformación de datos para todos los proyectos
# Autor: [Tu Nombre]
# Fecha: [Fecha]
# Descripción: Script unificado para cargar y limpiar datasets de distintos proyectos.

library(tidyverse)
library(janitor)

# 📌 Función para preprocesar cualquier dataset
preprocesar_datos <- function(ruta_dataset, proyecto) {
  cat("📥 Cargando datos del proyecto:", proyecto, "\n")
  
  # Leer el dataset
  datos <- read_csv(ruta_dataset, show_col_types = FALSE)
  
  # --- Limpieza General ---
  cat("🧹 Realizando limpieza de datos...\n")
  
  # Eliminar filas con valores faltantes críticos
  datos <- datos %>% drop_na() 
  
  # Limpiar nombres de columnas (elimina paréntesis, espacios y caracteres especiales)
  colnames(datos) <- make_clean_names(colnames(datos))

  # Convertir variables categóricas a factor
  datos <- datos %>%
    mutate_if(is.character, as.factor)

  # Convertir nombres de columnas a formato estándar
  colnames(datos) <- tolower(gsub(" ", "_", colnames(datos)))

  # --- Limpieza Específica por Proyecto ---
  if (proyecto == "Airbnb") {
    cat("📊 Aplicando preprocesamiento específico para Airbnb...\n")
    datos <- datos %>%
      mutate(
        host_response_time = factor(host_response_time, 
                                    levels = c("within and hour","within a few hours","within a day","a few days or more")),
        host_acceptance_rate = as.numeric(host_acceptance_rate),
        host_verifications=factor(host_verifications),
        room_type = factor(room_type),
        property_type = factor(property_type),
        neighbourhood = factor(neighbourhood_cleansed),
        price = as.numeric(gsub("[$,]", "", as.character(price))), # Convertir precios de texto a numérico
        minimum_nights = as.integer(minimum_nights),
        maximum_nights = as.integer(maximum_nights),
        accommodates = as.integer(accommodates),
        bathrooms = as.numeric(bathrooms),
        bedrooms = as.numeric(bedrooms),
        beds = as.numeric(beds)
      ) %>%
      mutate_if(is.numeric, ~ replace(., is.na(.), median(., na.rm = TRUE)))  # Reemplazar NA con mediana
  }

  if (proyecto == "Imdb") {
    cat("📊 Aplicando preprocesamiento específico para IMDb...\n")
    datos <- datos %>%
      mutate(
        date_x = as.Date(date_x, format="%m/%d/%Y"),  # Convertir fecha a formato Date
        genre = factor(genre),
        status = factor(status),
        orig_lang = factor(orig_lang),
        country = factor(country),
        score = as.numeric(score),
        budget_x = as.numeric(budget_x),
        revenue = as.numeric(revenue)
      ) %>%
      mutate_if(is.numeric, ~ replace(., is.na(.), median(., na.rm = TRUE)))  # Reemplazar NA con mediana
  }

  if (proyecto == "Education Success") {
    cat("📊 Aplicando preprocesamiento específico para Education Success...\n")
    datos <- datos %>%
      filter(!is.na(education_level)) %>%
      mutate(
        education_level = factor(education_level),
             
             )
  }

  cat("✅ Preprocesamiento completado para:", proyecto, "\n")
  return(datos)
}

