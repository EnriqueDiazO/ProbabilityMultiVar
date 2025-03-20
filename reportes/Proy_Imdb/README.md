# 🎬 Análisis Exploratorio y Probabilidad en *IMDb Movies Dataset*

Este repositorio contiene un análisis detallado del conjunto de datos **IMDb Movies**, que recopila información sobre películas, incluyendo su puntuación, género, presupuesto, ingresos y otros factores clave en la industria cinematográfica.

El objetivo principal del análisis es identificar patrones en la producción de películas, evaluar la relación entre diferentes factores y realizar cálculos de probabilidad condicional sobre el desempeño de las películas.

---

## 📌 Descripción del Dataset

El dataset incluye información clave sobre cada película, organizada en las siguientes categorías:

### 1️⃣ Información General  

📌 Contiene información básica sobre cada película registrada en IMDb.

| **Variable**   | **Descripción**                   | **Tipo**     | **Ejemplo de Valores** |
|---------------|----------------------------------|-------------|------------------------|
| `names`       | Título de la película           | Categórica  | *Inception, Titanic, Avatar* |
| `date_x`      | Fecha de estreno                | Numérica    | 1994, 2010, 2022 |
| `orig_title`  | Título original                 | Categórica  | *Le Fabuleux Destin d'Amélie Poulain* |
| `status`      | Estado de la película           | Categórica  | Released, Post Production, In Production |

---

### 2️⃣ Clasificación y Género  
📌 Detalles sobre la evaluación y el tipo de contenido de la película.

| **Variable**  | **Descripción**                  | **Tipo**     | **Ejemplo de Valores** |
|--------------|---------------------------------|-------------|------------------------|
| `score`      | Puntuación de la película en IMDb | Numérica   | 1 - 10 |
| `genre`      | Género cinematográfico          | Categórica  | Action, Comedy, Drama, Horror |

---

### 3️⃣ Producción y Recaudación  
📌 Información sobre el presupuesto y los ingresos en taquilla.

| **Variable**   | **Descripción**                  | **Tipo**     | **Ejemplo de Valores** |
|---------------|---------------------------------|-------------|------------------------|
| `budget_x`    | Presupuesto de producción (USD) | Numérica    | 1,000,000 - 300,000,000 |
| `revenue`     | Ingresos de taquilla (USD)      | Numérica    | 5,000,000 - 2,000,000,000 |

---

### 4️⃣ Equipo de Producción  
📌 Información sobre el equipo detrás de la película.

| **Variable**  | **Descripción**                  | **Tipo**     | **Ejemplo de Valores** |
|--------------|---------------------------------|-------------|------------------------|
| `crew`       | Lista de personas en el equipo de producción | Categórica | Director, productor, guionistas |

---

### 5️⃣ Idioma y País de Origen  
📌 Detalles sobre el idioma y la nacionalidad de la película.

| **Variable**   | **Descripción**                  | **Tipo**     | **Ejemplo de Valores** |
|---------------|---------------------------------|-------------|------------------------|
| `orig_lang`   | Idioma original de la película | Categórica  | English, Spanish, French, Korean |
| `country`     | País de producción             | Categórica  | USA, UK, France, Japan |

---

## 🔬 Objetivos del Análisis

Este análisis busca responder preguntas clave relacionadas con la industria cinematográfica:

✅ **Factores de Éxito**: ¿Qué elementos influyen en una película altamente calificada en IMDb?  
✅ **Ingresos y Presupuesto**: ¿Existe una relación entre el presupuesto de producción y los ingresos de taquilla?  
✅ **Popularidad por Género**: ¿Qué géneros son los más votados y mejor calificados?  
✅ **Influencia del Equipo de Producción**: ¿Cómo afecta la participación de ciertos directores o guionistas al éxito de una película?  

---

## 🛠️ Requisitos para Ejecutar el Análisis

Para replicar este análisis en tu máquina, asegúrate de tener **R y RStudio** instalados, junto con las siguientes librerías:

```r
install.packages(c("tidyverse", "ggplot2", "dplyr", "readr", "plotly"))
