HU14: Como gerente de al almacén quiero poder cambiar el idioma en el que se encuentra el sistema para que los trabajadores de idioma extranjero pueda usar
las funcionalidades que ofrece la app de OMLife
Scenario: Cambio de idioma
Given que me encuentro en la sección ajustes
When el usuario selecciona la opción "Idioma" 
And selecciona un idioma diferente al actual 
Then el idioma de la interfaz de la aplicación cambiará al idioma seleccionado
Examples:
    |  User   |        Idioma        |         button        |           output         |
    | User01  |    English.Lang      |    ChangeLang.btn()   |     EnglishInterface()   |
