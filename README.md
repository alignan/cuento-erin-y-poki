# Erin y Poki en el otro lado del Espejo

Este cuento corto esta escrito para Erin, utilizando `Markdown` y `PanDoc` para compilar en tres diferentes formatos: PDF, HTML5 y ePub.

## Instalar dependencias

Esta guia asume OSX y GIT previamente instalado.

Lo más fácil es instalar [MacTex](http://tug.org/mactex), sin embargo requiere unos 2GB de descarga.

## Compilar el libro

Primero descargue el código fuente:

````
git clone XXX
cd XXX
````

Y luego compile:

````
make
````

El comando anterior creará un directorio `build` con los archivos finales.

Para borrar los archivos generados:

````
make clean
````

