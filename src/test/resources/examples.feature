@ignore
Feature: Prueba de API de usuarios

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  @smoke
  Scenario: Obtener todos los usuarios
    Given path '/users'
    When method GET
    Then status 200
    And match response[0].id == 1
    And match response[0].name contains 'Leanne'
    And assert response.length > 0

  Scenario: Obtener un usuario específico
    Given path '/users/1'
    When method GET
    Then status 200
    And match response.name == 'Leanne Graham'
    And match response.email == '#regex [a-z]+@[a-z]+\\.tv'
    And match response.id == 1

  Scenario Outline: Buscar múltiples usuarios
    Given path '/users/<userId>'
    When method GET
    Then status 200
    And match response.id == <userId>
    And match response.name == '#present'

    Examples:
      | userId |
      | 1      |
      | 2      |
      | 3      |

  Scenario: Crear un usuario
    Given path '/users'
    And request { name: 'John Doe', email: 'john@example.com', username: 'johndoe' }
    When method POST
    Then status 201
    And match response.id == '#number'
    And match response.name == 'John Doe'