*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# variable scalaire: contient uns seule valeur
# il ya variable liste et variable dictionnaire(cle:'valeur')
${Url}=             https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Navigateur}=      gc
${Username}=        Admin
${Password}=        admin123


*** Keywords ***
se connecter au site demo orange
    Open Browser    ${Url}    ${Navigateur}
    Maximize Browser Window
    Sleep    4

remplir le formulaire de login
    Clear Element Text    name:username
    Input Text    name:username    ${Username}
    Clear Element Text    name:password
    Input Password    name:password    ${Password}
    Click Button    xpath://button[@type='submit']
    Sleep    2

valider l'affichagee de la page d'acceuil
    Page Should Contain    Dashboard
    Sleep    2

se deconnecter de l'application orange demo
    Click Image    xpath:(//img[@alt='profile picture'])[1]
    Sleep    2
    Click Link    Link:Logout
    Sleep    2

fermer le Navigateur
    Close Browser
