
@api @security @login
Feature: Validar autenticacion de usuarios

  Background:
    * def loginService = read('classpath:helpers/login-service.feature')

  @smoke @regression
  Scenario Outline: Validar <descripcion>
    * call loginService { idCaso: '<idCaso>' }

    Examples:
      | idCaso    | descripcion                    |
      | LOGIN_001 | login exitoso                 |
