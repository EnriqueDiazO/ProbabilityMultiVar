# 📊 Análisis Exploratorio y Probabilidad en *Airbnb Listings Dataset*

Este repositorio contiene un análisis detallado del conjunto de datos **Airbnb Listings**, el cual explora la oferta de alojamientos en la plataforma de Airbnb.  
El objetivo principal del análisis es identificar patrones en precios, tipos de propiedades, disponibilidad y factores que influyen en la popularidad de los alojamientos.

## 📌 Descripción del Dataset

El dataset incluye información sobre precios, tipo de alojamiento, ubicación, políticas del anfitrión y disponibilidad.  
Para facilitar su análisis, las variables han sido agrupadas en las siguientes categorías:

---

## **1️⃣ Información General del Alojamiento**  

📌 Información básica sobre los alojamientos listados en Airbnb.

| **Variable** | **Descripción** |**Tipo**|**Rango de Valores**|
|-------------|----------------|-------------|----------------|
| `listing_id` | Identificador único del alojamiento | Categórica | Variado |
| `name` | Nombre del alojamiento | Categórica | Texto |
| `listing_url` | URL del anuncio en Airbnb | Categórica | Texto |
| `neighbourhood_cleansed` | Zona específica dentro de la ciudad | Categórica | Variado |
| `latitude` | Coordenada de latitud | Numérica | -90 a 90 |
| `longitude` | Coordenada de longitud | Numérica | -180 a 180 |

---

## **2️⃣ Características de la Propiedad**  
📌 Factores relacionados con el tipo y capacidad de los alojamientos.

| **Variable** | **Descripción** | **Tipo** | **Rango de Valores** |
|-------------|----------------|----------|----------------------|
| `property_type` | Tipo de propiedad (casa, apartamento, etc.) | Categórica | Apartment, House, Loft, etc. |
| `room_type` | Tipo de habitación disponible | Categórica | Entire home/apt, Private room, Shared room |
| `accommodates` | Capacidad máxima de huéspedes | Numérica | 1 - 16 |
| `bedrooms` | Número de habitaciones | Numérica | 0 - 10 |
| `beds` | Número de camas | Numérica | 1 - 20 |
| `bathrooms_text` | Cantidad de baños en texto | Categórica | 1 bath, 2 shared baths, etc. |

---

## **3️⃣ Precio y Disponibilidad**  
📌 Factores relacionados con el costo del alojamiento y su disponibilidad.

| **Variable** | **Descripción** | **Tipo** | **Rango de Valores** |
|-------------|----------------|----------|----------------------|
| `price` | Precio por noche en dólares | Numérica | $10 - $10,000 |
| `minimum_nights` | Número mínimo de noches requeridas | Numérica | 1 - 365 |
| `maximum_nights` | Número máximo de noches permitidas | Numérica | 1 - 1000 |
| `availability_365` | Número de días disponibles en un año | Numérica | 0 - 365 |

---

## **4️⃣ Anfitrión y Políticas**  
📌 Información sobre el anfitrión y sus prácticas de gestión.

| **Variable** | **Descripción** | **Tipo** | **Rango de Valores** |
|-------------|----------------|----------|----------------------|
| `host_url` | URL del perfil del anfitrión | Categórica | Texto |
| `host_response_time` | Tiempo de respuesta del anfitrión | Categórica | Within an hour, Within a day, etc. |
| `host_acceptance_rate` | Tasa de aceptación de solicitudes | Numérica | 0% - 100% |
| `host_verifications` | Métodos de verificación del anfitrión | Categórica | Email, ID, Phone, etc. |

---

## **5️⃣ Amenidades y Servicios**  
📌 Servicios adicionales ofrecidos en el alojamiento.

| **Variable** | **Descripción** | **Tipo** | **Ejemplo de Valores** |
|-------------|----------------|----------|----------------------|
| `amenities` | Lista de servicios disponibles | Categórica | Wifi, Kitchen, Pool, Air conditioning |

---

## 🔬 Objetivos del Análisis

El análisis del dataset busca responder las siguientes preguntas:

1️⃣ **Factores de Precio**: ¿Qué características afectan el precio de un alojamiento en Airbnb?  
2️⃣ **Disponibilidad y Demanda**: ¿Cómo varía la disponibilidad según el tipo de propiedad y la ubicación?  
3️⃣ **Políticas de los Anfitriones**: ¿Cómo influyen las prácticas de los anfitriones en la experiencia de los huéspedes?  
4️⃣ **Popularidad y Competencia**: ¿Cuáles son las propiedades con mayor demanda y qué factores las diferencian?  

---

## 🛠️ Requisitos para Ejecutar el Análisis

Para replicar el análisis, asegúrate de tener **R y RStudio** instalados, junto con las siguientes librerías:

```r
install.packages(c("tidyverse", "ggplot2", "dplyr", "readr", "plotly"))
