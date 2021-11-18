HU11: Como gerente de almacén quiero solicitar el recojo de la colección de contenedores para no acumular los desechos producidos por la empresa.
Scenario: Contenedores llenos
Given que me encuentro en la seccion de los contenedores
When los contenedores se encuentren llenos o cerca de su limite
And seleccione la opcion de solicitar recojo
Then el sistema me mostrar un mensaje "Solicitud exitosa"
Examples:
    |  User   |  ContainerStatus   |         button        |           output           |
    | User01  |    Status:90%      | SolicitarRecojo.btn() | SolRecojoExitoso.Message() |

Scenario: Contenedores por debajo de la mitad de su limite
Given que me encuentro en la seccion de los contenedores
When los contenedores se encuentren con menos de la capacidad limite 
And seleccione la opcion de solicitar recojo
Then el sistema me mostrar un mensaje de aviso "El contenedores no esta lleno del todo, ¿desea continuar?"
Examples:
    |  User   |  ContainerStatus   |         button        |           output         |
    | User01  |    Status:35%      | SolicitarRecojo.btn() | SolRecojoAviso.Message() |