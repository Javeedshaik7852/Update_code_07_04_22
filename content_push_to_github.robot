*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***

${url}     https://www.google.com/
${browser}      chrome
${url1}     https://www.github.com/
${text}


*** Test Case ***
Creating_File

    create file     C:/Users/shajavee/PycharmProjects/Robotframework/testing11
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
     log to console  ${LinkText}
     append to file   C:/Users/shajavee/PycharmProjects/Robotframework/testing11  ${LinkText}
     END
     click element   xpath://*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3
     sleep   5
DATA_FROM_SITE
    ${web}=    get text     xpath://*[@id="app"]/div[5]/div[1]
    FOR    ${i}   IN  RANGE   ${web}
             log to console  ${i}
        APPEND TO FILE    C:/Users/shajavee/PycharmProjects/Robotframework/testing11    ${i}


     END
     capture page screenshot     C:/Users/shajavee/PycharmProjects/Robotframework/logo.png



#    ${li}=     get element count     xpath://ul[@role='listbox']//li/descendant::div[@class='wM6W7d WggQGd']
#    log to console   ${li}

     close browser
github_Valid_Login
     open browser    ${url1}     ${browser}
     maximize browser window
     click element  xpath:/html/body/div[1]/header/div/div[2]/div[2]/div[2]/a
     input text      id:login_field      javeedshaik7852@gmail.com
     input text      id:password     Javeed@9700
     click button    name:commit
     sleep  10
     input text      name:q      javeedshaik7852
     click element   xpath://*[@id="repos-container"]/ul/li[2]/div/div/a
     click element   xpath://*[@id="repo-content-pjax-container"]/div/div/div[3]/div[1]/div[2]/details/summary/span[2]/svg
     click element   xpath:
#    Press Keys          ${element} CTRL+A+DELETE
#    click element       xpath:/html/body/div[1]/header/div[6]/details/summary/svg
