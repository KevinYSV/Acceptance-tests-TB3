HU09: Como gerente de almacén quiero que la app muestre un mensaje automáticamente cuando la capacidad del almacén esté por llenarse para evitar 
congestionamientos en los contenedores.
Scenario: Los almacenes de residuos están por llenarse 
Given que me encuentro en la sección de los contenedores
When el estado de los contenedores sea mayor al 85%
Then el sistema mostrará un mensaje "Capacidad casi llena, solicite un recojo"
Examples:
    |  User   |  ContainerStatus   |       Output       |
    | User01  |    Status:90%      | Message.SolRecojo  |