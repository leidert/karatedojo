# karatedojo


proyecto-karate-junit5/
├── build.gradle
├── src/
│   └── test/
│       ├── java/
│       │   └── com/
│       │       └── runner/
│       │           └── TestRunner.java
│       └── resources/
│           ├── karate-config.js
│           └── users/
│               └── get
│                   └── users-get.feature
│               └── post.feature
│                   └── users-post.feature
│               └── delete.feature
│                   └── users-delete.feature
└── gradle/
└── wrapper/
├── gradle-wrapper.jar
└── gradle-wrapper.properties

Instrucciones para usar el proyecto

Crear la estructura del proyecto según el esquema mostrado arriba.
Archivo build.gradle: Este archivo configura las dependencias necesarias para Karate y JUnit 5,
además de tareas para generar reportes.
TestRunner.java: Define cómo se ejecutarán las pruebas de Karate usando JUnit 5. Incluye métodos 
para ejecutar todas las pruebas en paralelo o pruebas específicas.
karate-config.js: Proporciona configuración global para tus pruebas de Karate, permitiendo definir 
diferentes entornos (dev, qa, etc.).
users.feature: Un ejemplo de archivo de características de Karate que contiene escenarios de prueba 
para una API de usuarios.

informacion Api ejemplo
* https://reqres.in/
* https://jsonplaceholder.typicode.com/