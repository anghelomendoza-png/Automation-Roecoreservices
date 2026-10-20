
@ignore
Feature: Obtener Bearer Token

  Scenario: Autenticar usuario

    * def usuario = __arg.authUser
    * def password = __arg.authPassword

    * def payload = read('classpath:data/login-request.json')

    Given url __arg.baseUrl
    And path __arg.endpoints.login
    And header Content-Type = 'application/json'
    And request payload
    When method post
    Then status 200

    * match response.access_token == '#string'
    * match response.access_token != ''
    * def accessToken = response.access_token
