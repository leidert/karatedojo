Feature: Post user on request

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  Scenario: Post a user
    Given path "/api/users"
    And request { "name": "leider", "job": "QA" }
    When method post
    Then status 201