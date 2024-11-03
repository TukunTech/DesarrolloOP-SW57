Feature: Obtener números de emergencia

  Scenario: Obtener números de emergencia correctamente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/numeros-emergencia" está disponible
    When se envía una solicitud GET para un adulto mayor específico
    Then se recibe una respuesta con el estado 200
    And se incluyen los números de emergencia del adulto mayor en el cuerpo de la respuesta.

  Scenario: No se puede obtener los números de emergencia porque el adulto mayor no existe
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/numeros-emergencia" está disponible
    When se envía una solicitud GET para un adulto mayor que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que el adulto mayor no fue encontrado.