*** Settings ***
Library    AppiumLibrary
Resource   ../../common/KeywordsFile.robot

*** Variables ***
${APP_ID}=     %{BROWSERSTACK_APP_ID}

*** Test Cases ***
Test Wiki app
    Open app
    Search for keyword in wiki app
    Validate wiki test
    Close app

*** Keywords ***
Open app
    open application  remote_url=${REMOTE_URL} name=parallel_test_oneplus
    IMPLICIT WAIT    5