*** Settings ***
Variables               ${EXECDIR}/variables.yaml       

*** Variables ***
${avatar}               id=avatar
${sign_out}             //a[@data-testid="dropdown-link-sign_out"]
${settings}             //a[contains(text(), "Settings")]

*** Keywords ***
User is authenticated
    Get Element         ${avatar}

Sign Out User
    Click                       ${avatar}
    Click                       ${sign_out}
    Wait For Elements State     ${avatar}                   detached

Open Dashboard
    Go To               ${dashboard_url}

Open Settings page
    Click                       ${avatar}
    Click                       ${settings}
    Wait For Elements State     ${settings}                   detached     