
@api @consentimiento
Feature: Consultar consentimientos por paciente

  Background:
    * def servicio = read('classpath:helpers/consentimiento-service.feature')

  @smoke @regression
  Scenario Outline: CP-CONSENTIMIENTO - Validar <descripcion>
    * call servicio { idCaso: '<idCaso>' }

    Examples:
      | idCaso   | descripcion                    |
      | CONS_001 | consulta de paciente 3807073  |
