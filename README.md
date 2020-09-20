# Generador de usuarios para GSuite desde Séneca

## Introducción

Esta herramienta es una nueva implementación, en _Dart_, del software de migración de usuarios de _Séneca_ a _GSuite_, que ya implementé y se puede encontrar en el siguiente [repositorio](https://github.com/jramireziesgb/gsusuarios) de _Github_.

El programa crea un listado _CSV_ para importar usuarios a _GSuite_ a partir de un fichero _CSV_ generado por _Séneca_. Cuando se genere dicho listado se deben incluir todos los campos.

El programa espera que el fichero de entrada esté codificado en _UTF-8_. Téngase en cuenta que Séneca genera el fichero con la codificación _Windows-1252_ Para convertir el fichero _CSV_ generado por _Séneca_ a _UTF-8_ se puede utilizar el siguiente comando _Linux_:

```bash
$ iconv -f "windows-1252" -t "UTF-8" RegAlum.csv > RegAlum.utf8.csv
```

## Uso

Generador de usuarios para GSuite desde Séneca

```bash
userstogsuite -f <fichero.csv> [-d <dominio>] [-x <sufijo>] [-u <unidad>] [-v]

-f, --file       Nombre del fichero .csv exportado de Séneca con todos los campos.
-d, --domain     Domino de las cuentas.
                 (defaults to "@iesgbrenan.com")
-x, --suffix     Sufijo para los nombres de usuarios en las cuentas de correo electónico.
-u, --unidad     Unidad organizativa de las cuentas.
                 (defaults to "/Alumnos")
-p, --passwd     Contraseña por defecto para los alumnos que no tienen DNI.
                 (defaults to "12345678A")
-v, --version    Versión del programa.
````

Ejemplo:

- RegAlum.csv: es el fichero que genera Séneca con los alumnos que vamos a importar.

- listado-gsuite.csv: es el fichero que importaremos en GSuite.

```bash
$ userstogsuite -f RegAlum.utf8.csv -d "midominio.com" -x eso -u "/Alumnos/ESO" > listado-gsuite.csv
```
