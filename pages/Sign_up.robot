*** Settings ***
Library     Browser
Resource    Main.robot
Resource    Log_in.robot
Variables   ${EXECDIR}/variables.yaml

*** Variables ***
${email_input}                  id=email       
${password_input}               id=password       
${logo}                         //img[@data-testid="cloudapp-logo"] 
${signup_submit}                //input[@data-testid="regular-signup-submit"]
${account_created_toast}        //div[contains(text(),"Account created successfully")]

*** Keywords ***
Sign up new user    
    ${timestamp}                Get Time                    epoch        
    ${email}                    Set Variable                test_${timestamp}@mailinator.com
    Set Suite Variable          ${email}
    Set Suite Variable          ${password}
    Log                         ${email}
    Fill Text                   ${email_input}              ${email}
    Fill Text                   ${password_input}           ${password}     
    Click                       ${signup_submit}
    Wait For Elements State     ${signup_submit}            detached
    Wait For Elements State     ${account_created_toast}    visible
    Wait For Elements State     ${account_created_toast}    detached