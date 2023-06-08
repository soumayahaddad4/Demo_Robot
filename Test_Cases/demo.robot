*** Comments ***
#suite de tests


*** Settings ***
Documentation       Ma premiere suite de tests avec RobotFramework
...                 ceci est un exemple de documentation
...                 ******************************************************************************

Resource            ../Ressources/ressources1.robot


*** Test Cases ***
tc01 login_test
    [Documentation]    Ce test est pour tester la fonctionnalité login_test
    ...    tester le happy path    ou sunny day ou nominal
    se connecter au site demo orange
    remplir le formulaire de login
    valider l'affichagee de la page d'acceuil
    fermer le Navigateur

tc02 logout_test
    se connecter au site demo orange
    remplir le formulaire de login
    valider l'affichagee de la page d'acceuil
    se deconnecter de l'application orange demo
    fermer le Navigateur
