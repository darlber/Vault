1. Generar Jar
2.  Comando _keytool_:
```sh
keytool -genkeypair -alias PSP06 -keyalg RSA -keysize 2048 -validity 365 -keystore keystore.jks -
storepass 123123 -keypass 123123
```
3.  Generamos las claves con el siguiente comando:
```sh
keytool -genkeypair -alias PSP06 -keyalg RSA -keysize 2048 -validity 365 -keystore keystore.jks -
storepass 123123 -keypass 123123
```
> En las versiones antiguas de java, se usaba genkey, actualmente se realiza el proceso con genkeypair. El alias es el nombre de la clave generada dentro del conjunto de claves «keystore.jks». Podremos comprobar las claves mediante el siguiente código:
```sh
keytool -list -keystore keystore.jks -storepass 123123
```
4. Procedemos con la firma del fichero .jar:
```sh
jarsigner -keystore keystore.jks -storepass 123123 -keypass 123123 -signedjar psp_firmado.jar
PSP06.jar psp06
```
5. Verificamos
```sh
jarsigner -verify -verbose -certs psp_firmado.jar
```

Para finalizar, vamos a cambiar la policy, para que solo se puedan leer datos desde c:/datos.

Antiguamente se ejecutaba policytool, pero actualmente se realiza desde un documento de texto. Creamos el documento en la misma carpeta donde tenemos los archivos .jar y utilizamos el alias de la clave guardada en la keystore.

Vamos a introducir el «registro_actividad» dentro de las políticas de lectura, para que se puedan seguir generando los informes:
```java
grant {
    permission java.io.FilePermission "C:/datos/-", "read";
    permission java.io.FilePermission "C:/datos/registro_actividad.log", "write";
};
```

Para poder aplicar las políticas de seguridad, en una aplicación local, debemos activar el Security Manager utilizando la opción –Djava.security.manager, por lo que ejecutaremos:
```sh
java -Djava.security.manager -Djava.security.policy=politica.policy -jar psp_firmado.jar
```