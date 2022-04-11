*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     extracting_file.py

*** Variables ***

${url}     https://www.google.com/
${browser}      chrome
${text}


*** Test Case ***
Creating_File
    create file     C:/Users/shajavee/PycharmProjects/Robotframework/Test_result
Capturing_Links
    open browser    ${url}      ${browser}
    maximize browser window
    input text      name:q    robotframework
    sleep   5
    click button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[5]/center/input[1]
    ${AllLinksCount}=   get element count       xpath://a
    log to console  ${AllLinksCount}

    @{LinkItems}    create list
    log to console    ${text}

     FOR   ${i}    IN RANGE     1   ${AllLinksCount}+1
     ${LinkText}=    get text  xpath:(//a)[${i}]
     append to file   C:/Users/shajavee/PycharmProjects/Robotframework/Test_result.txt  ${LinkText}
     END
Example
    ${result}=   read

     sleep   3
     capture page screenshot     C:/Users/shajavee/PycharmProjects/Robotframework/logo.png
     close browser

