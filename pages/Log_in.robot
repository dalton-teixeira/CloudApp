*** Variables ***
${sign_up}                      //a[contains(text(), "Sign up for free")]
${email_input}                  id=email       
${password_input}               id=password       
${login_submit}                 //input[@data-testid="regular-login-submit"]

*** Keywords ***
Open Sign up page
    Click       ${sign_up}

Log in 
    [Arguments]                 ${login_email}              ${login_password}
    Fill Text                   ${email_input}              ${login_email}
    Fill Text                   ${password_input}           ${password}     
    Click                       ${login_submit}
    Wait For Elements State     ${login_submit}             detached