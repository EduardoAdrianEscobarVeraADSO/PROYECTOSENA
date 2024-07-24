# Proyecto Exchange

Este es el repositorio del proyecto **Exchange**. Para que el proyecto funcione correctamente, es necesario instalar y configurar la base de datos.

## Requisitos previos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

- [MySQL](https://www.mysql.com/downloads/) o cualquier otro sistema de gestión de bases de datos que estés utilizando.
- [Java JDK](https://www.oracle.com/java/technologies/javase-jdk16-downloads.html) (si el proyecto es en Java).
- [Apache Maven](https://maven.apache.org/install.html) (si estás utilizando Maven).

## Instalación de la Base de Datos

Sigue estos pasos para instalar y configurar la base de datos:

1. **Descargar e instalar MySQL:**

   Si aún no tienes MySQL instalado, descárgalo e instálalo desde el [sitio oficial de MySQL](https://www.mysql.com/downloads/).

2. **Crear la base de datos:**

   Inicia sesión en MySQL con un usuario que tenga permisos para crear bases de datos. Luego, crea una nueva base de datos para el proyecto:
   
4. Dentro del ide donde este manejando la base de datos exporte la base de datos en el puerto 3306 y que lleve el nombre de proyect para su correcto funcionamiento
   ```sql
   CREATE DATABASE proyect;
