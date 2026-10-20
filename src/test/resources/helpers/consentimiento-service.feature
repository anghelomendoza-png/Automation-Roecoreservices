
@ignore
Feature: Servicio de consulta de consentimientos

  Scenario: Consultar consentimiento por paciente

    * def casos = read('classpath:data/consentimiento-cases.json')
    * def datos = casos[idCaso]
    * match datos != null

    Given url baseUrl
    And path endpoints.consultarConsentimiento
    And param idPaciente = datos.idPaciente
    And header Authorization = 'Bearer ' + accessToken
    And header Accept = 'application/json'
    When method get

    Then match responseStatus == datos.expectedStatus
    And match response != null
