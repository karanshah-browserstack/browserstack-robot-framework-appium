*** Settings ***
Library    AppiumLibrary
Resource   ../common/KeywordsFile.robot
Library    String

*** Test Cases ***
Test Wiki app
    Start Local testing
    Open app
    Handle popup
    Test connection
    Validate output
    Close app
    Stop Local testing

*** Keywords ***
Open app
    open application  remote_url=${REMOTE_URL}  name=local_test autoGrantPermissions=true
    IMPLICIT WAIT    5
Handle popup
    click element    id=android:id/button1

Test connection
    click element    id=com.example.android.basicnetworking:id/test_action

Validate output
    ${output}=      get text    xpath=//android.widget.ScrollView//android.widget.TextView
    ${parsed_output}=    get lines containing string    ${output}    Up and running
    run keyword and return if    "${parsed_output}"!=""   mark test status    passed  Test passed!
    run keyword and return    mark test status    failed   Test failed!