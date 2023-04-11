# Analisis de imagenes con Vision API y Cloud Run
Sistema hecho en GCP que permite el analisis de imagenes para detectar y ofuscar una imagen si esta es considerada ofensiva por medio del analisis por medio de IA

## Clonar el repositorio
```
git clone <repo-name>
```

## Requisitos

- Terraform ~> v1.3.6
- docker ~> v20.10.23
- gcloud ~> v1.0.0

## Instalación

1. Clonar el repositorio desde GitHub.
2. Abrir la terminal y navegar a la carpeta del proyecto.
3. Agregar variables requeridas en local.tf
4. Hacer login hacia tu cuenta de GCP `gcloud auth application-default login`.
5. Construir y subir la imagen de docker a un registry en GCP `gcloud builds submit --tag gcr.io/<gcp-project-Id>/pubsub`
6. Terraform plan y apply.

## Uso

Se generaran 2 buckets subir una foto al que tenga el prefix input y esta aparecera en el que tiene el prefix output.

## Contribución

El proyecto se encuentra como un ejemplo en GCP
https://cloud.google.com/run/docs/tutorials/image-processing

## Licencia

GCP
