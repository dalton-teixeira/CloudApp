*** Settings ***
Variables       ${EXECDIR}/variables.yaml

*** Variables ***
${Log_in}       (//a[descendant::*[contains(text(), "Log in")]])[1]

*** Keywords ***
Open Sign in page    
    Go To               ${main_page_url}
    Click               ${Log_in}