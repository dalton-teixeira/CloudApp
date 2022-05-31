*** Variables ***
${my_self}                      //input[@data-testid="settings-about-you-name-field"]
${company}                      //input[@data-testid="settings-about-you-company-field"]
${role}                         //select[@data-testid="settings-about-you-profile-field"]
${photo}                        id=user_avatar
${save_profile}                 //input[@data-testid="onboarding-submit-about-you-form"]
${account_updated_toast}        //div[contains(text(),"Account updated successfully")]

*** Keywords ***
Upload profile photo
    Sleep    3
    Fill Text                       ${my_self}                  My Self
    Fill Text                       ${company}                  My fantastic company
    Select Options By               ${role}                     value                   engineering
    Upload File By Selector         ${photo}                    ${EXECDIR}/avatar.jpg
    Click                           ${save_profile}
    Wait For Elements State         ${account_updated_toast}    visible
    Wait For Elements State         ${account_updated_toast}    hidden