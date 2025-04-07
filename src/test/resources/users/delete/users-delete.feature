Feature: Delete user on request

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    
  Scenario: Delete a user
    Given path "api/users/2"
    When method delete
    Then status 204