HU04: Como gerente de almacén quiero un reporte mensual de los tipos de residuos almacenados en mi inventario para conocer cuales deben ser desechados
Scenario: Fecha válida
Given me encuentro en la sección de reportes,
When Selecione un rango de fecha donde ya se haya elaborado el reporte
Then el sistema me dará la opción de poder descargar el archivo donde se enceuntra el reporte
Examples:
    |   User  |  DateOption   |       Output       |
    |  User01 | SelectedDate  | Download.button()  |

Scenario: Fecha inválida
Given Me encuentro en la sección de reportes,
When seleccione un rango de fecha en donde los reportes aun no hayan sido elaborados
Then el sistema me mostrará un mensaje de error "Aun no se ha creado reportes"
Examples:
    |   User  |       DateOption    |     Date    |           Output          |
    |  User01 |      SelectedDate   | 30/09/2099  |    InvalidDate.Message()  |