store-catalog
=============

La idea se basa en un catalogo de paginas facebook indexadas por el tipo de contenido a la venta. 

Hay dos tipos de  usuarios:
* __Vendedor__
* __Comprador__ 

Vendedores
-
Aquellos usuarios que quieran vender deberan agregar sus paginas de facebook a nuestra base de datos mediate una descripcion corta y unos tags.

Compradores
-
El que quiera comprar debe, ya sea por la app en facebook o por nuestra pagina, buscar el tipo de elemento a comprar y la aplicacion listara las paginas que hayan sido dadas de alta y por cada una de ellas algunos elementos que esten dentro de la pagina (albums con nombre o descripcion especial para que sea reconocido).


Ventajas
-
Las ventajas seran para los vendedores la posibilidad de cobrar con tarjeta de credito y la mejora en el posicionamiento de busqueda por un monto. 
Para los compradores una lista confiable y concentrada de vendedores de facebook.


Start the application
=====================

Requirements
------------

* git
* Ruby 1.9.3
* gems

Clone project `git clone git@github.com:machaval/store-catalog.git`, cd into directory and run `bundle`.

Create database with the following commands

```
rake db:setup
rake db:migrate
```

Set environment settings

`cp config/settings.yml.example config/settings.yml`

Finally, to start the application just run `rails s` and open the browser at __http://localhost:3000__

