*** Settings ***
Library     Browser
Resource    ${EXECDIR}/pages/Dashboard.robot
Resource    ${EXECDIR}/pages/Sign_up.robot
Resource    ${EXECDIR}/pages/Main.robot
Resource    ${EXECDIR}/pages/Log_in.robot
Resource    ${EXECDIR}/pages/Settings.robot
Variables   ${EXECDIR}/variables.yaml
Test Setup  Open Browser                        ${main_page_url}

*** Test Cases ***
Sign Up
    Open Sign in Page
    Open Sign up page
    Sign up new user
    Open Dashboard
    User is authenticated    
    Sign Out User    
    Open Sign in Page
    Log In      ${email}      ${password}      
    Open Settings page
    Upload profile photo
