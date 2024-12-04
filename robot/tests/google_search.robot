*** Settings ***
Resource          ../resources/locators.robot
Resource          ../resources/keywords.robot
Library           SeleniumLibrary

*** Test Cases ***
# Caso de teste 1
Test Google Search For Robot Framework
    Open Google
    Search For Term    Robot Framework
    Validate First Result Text    Robot Framework
    Close Browser

# Caso de teste 2
Test Google Search For Selenium
    Open Google
    Search For Term    Selenium
    Validate First Result Text    Selenium
    Close Browser

# Caso de teste 3
Test Google Search With Empty Term
    Open Google
    Search For Term    
    Validate Search Results Not Found
    Close Browser

# Caso de teste 4
Test Google Search For Long Query
    Open Google
    Search For Term    Lorem ipsum dolor sit amet consectetur adipiscing elit
    Validate First Result Text    Lorem
    Close Browser

# Caso de teste 5
Test Google Search For Special Characters
    Open Google
    Search For Term    @#$%^&*()_+12345
    Validate Search Results Not Found
    Close Browser

# Caso de teste 6
Test Google Search For Common Term
    Open Google
    Search For Term    Weather
    Validate First Result Text    Weather
    Close Browser

# Caso de teste 7
Test Google Search For Company
    Open Google
    Search For Term    OpenAI
    Validate First Result Text    OpenAI
    Close Browser

# Caso de teste 8
Test Google Search For Specific URL
    Open Google
    Search For Term    https://www.wikipedia.org
    Validate First Result Text    Wikipedia
    Close Browser

# Caso de teste 9
Test Google Search For Popular Technology
    Open Google
    Search For Term    Python programming
    Validate First Result Text    Python
    Close Browser

# Caso de teste 10
Test Google Search For Invalid Term
    Open Google
    Search For Term    zyxwvutsrqponmlkjihgfedcba1234567890
    Validate Search Results Not Found
    Close Browser
