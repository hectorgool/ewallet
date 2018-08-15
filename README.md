# eWallet

### Creación del proyecto

Se crea la carpeta "ewallet" con el proyecto y se inicia el servidor.

```sh
$ rails new ewallet --api -S -d mysql 
$ cd ewallet
$ rails s
```

Se agregar las siguientes Variables de entorno al archico ~/.baschrc

```sh
export EWALLET_DEVELOPMENT=ewallet_development
export EWALLET_TEST=ewallet_test
export EWALLET_PRODUCTION=ewallet_production

export EWALLET_USERNAME=ewallet_production
export EWALLET_PASSWORD=asdfasdf
```

Se cargan las variables con el comando:

```sh
source ~/.baschrc
```

Se configuran las siguientes variables en el archivo, config/database.yml, para leer las variables de entorno

```ruby
<%= ENV['EWALLET_DEVELOPMENT'] %>
<%= ENV['EWALLET_TEST'] %>

<%= ENV['EWALLET_PRODUCTION'] %>
<%= ENV['EWALLET_PRODUCTION_USERNAME'] %>
<%= ENV['EWALLET_PRODUCTION_PASSWORD'] %>
```
### Configuración de la base de datos MySQL

Las siguientes instrucciones son para crear las bases de datos los ambientes de desarrollo, prueba y producción así como el usuario de la bases de datos y los respectivos permisos (toas estas instrucciones están dentro del archivo db.sql)

```sql
DROP DATABASE IF EXISTS `ewallet_development`;
CREATE DATABASE ewallet_development CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP DATABASE IF EXISTS `ewallet_test`;
CREATE DATABASE ewallet_test CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP DATABASE IF EXISTS `ewallet_production`;
CREATE DATABASE ewallet_production CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP USER IF EXISTS 'ewallet'@'localhost';
GRANT ALL PRIVILEGES ON *.* to ewallet@localhost identified by 'asdfasdf' WITH GRANT option;
```

Dentro de la carpeta ewallet se encuentra el archivo db.sql, para cargar las bases, el usuario y los permisos se debe ejecutar la siguiente instrucción desde la terminal

```sh
$ mysql -u root -p -v < db.sql
```
