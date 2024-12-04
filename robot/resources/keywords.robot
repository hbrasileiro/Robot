*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Open Google
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${SEARCH_FIELD}    timeout=10s

Search For Term
    [Arguments]    ${term}
    Input Text    ${SEARCH_FIELD}    ${term}
    Press Keys    ${SEARCH_FIELD}    ENTER
    Wait Until Element Is Visible    ${FIRST_RESULT_TEXT}    timeout=10s

Validate First Result Text
    [Arguments]    ${expected_text}
    ${result}=    Get Text    ${FIRST_RESULT_TEXT}
    Should Contain    ${result}    ${expected_text}

Validate Search Results Not Found
    Wait Until Page Contains    No results found    timeout=10s
