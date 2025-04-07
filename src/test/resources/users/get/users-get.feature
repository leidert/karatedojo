Feature: Get user on request

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  Scenario: Get a user
    Given path "/api/users" + "2"
    When method get
    Then status 200