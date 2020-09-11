# Hecho A Mano

Es una aplicación Rails, que genera un catálago en base a datos obtenidos desde Instagram.

Puedes visitar la versión online en [HAM](https://evening-everglades-77037.herokuapp.com/)

### Screenshots

![Landing](https://i.ibb.co/wc8n6sH/Captura-de-pantalla-2020-09-11-a-la-s-18-04-19.png "Optional title")

![Principal](https://i.ibb.co/mcmyt9g/Captura-de-pantalla-2020-09-11-a-la-s-18-05-20.png
 "Optional title")

### Características y Gemas

- La información es obtenida desde instagram.
- ActiveStorage manejo de imágenes.
- Rails Admin para administración.
- Facebook Login.
- CanCanCan
- font-awesome-rails
- cloudinary
- chartkick
- bootstrap

### Requisitos

Los requisitos mínimos para ejecutar el proyecto son

- Ruby 2.6.3
- Rails 5.2.4
  
### 1. Descargar repositorio

```bash
git clone git@github.com:lontuku/railscatalogue.git
```

### 2. Crear la base de datos y correr migraciones

```ruby
rails db:create
rails db:migrate
```

### 3. Levantar el servidor

```ruby
rails s
```

Acceder al sitio en http://localhost:3000
