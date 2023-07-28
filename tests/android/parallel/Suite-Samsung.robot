*** Settings ***
Library    AppiumLibrary
Resource   ../../common/KeywordsFile.robot

*** Test Cases ***
Test Wiki app
    Open app
    Search for keyword in wiki app
    Validate wiki test
    Close app

*** Keywords ***
Open app
    open application  remote_url=${REMOTE_URL} name=parallel_test_samsung
    IMPLICIT WAIT    5