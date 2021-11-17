HU01: Como Manager de OMLife requiero un sistema que permita dar acceso a la sucursal a la interfaz de la empresa que le corresponda.
    Scenario: Asignación de sucursal
    Given la sucursal entre por primera vez a la app
    When la sucursal logre autenticarse en la app
    Then el sistema guardará sus datos en la sección que corresponda
    And mostrará un mensaje de autenticación exitosa

    Examples:
    | UserLogin | password |      button    |            output          |
    | sucursal01    |  ******  | Login.button() | LoginSuccessful.Message() |

        
