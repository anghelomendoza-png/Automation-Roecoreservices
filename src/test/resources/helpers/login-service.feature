
@ignore
Feature: Servicio de autenticacion

  Scenario: Ejecutar login

    * def casos = read('classpath:data/login-cases.json')
    * def datos = casos[idCaso]
    * match datos != null

    * def usuario = datos.usuario == 'VALID_USER' ? authUser : datos.usuario
    * def password = datos.password == 'VALID_PASSWORD' ? authPassword : datos.password
    * def payload = read('classpath:data/login-request.json')

    Given url baseUrl
    And path endpoints.login
    And header Content-Type = 'application/json'
    And request payload
    When method post
    Then match responseStatus == datos.expectedStatus