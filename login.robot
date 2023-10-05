*** Settings ***

Library        SeleniumLibrary

Suite Setup    Open Browser    ${url}    ${browser}

*** Variables ***
${url}        https://connect.dev.ittron.co.id/login
${browser}    chrome

*** Test Cases ***

Login dengan akun tidak terdaftar
    akun tidak terdaftar
    password akun tidak terdaftar
    Click Button Login

Login memasukkan username terdaftar saja
    akun terdaftar
    Click Button Login

langsung klik login tanpa memasukkan user dan password
    Click Button Login

Login dengan akun terdaftar
    akun terdaftar
    password akun terdaftar
    Click Button Login
    
*** Keywords ***

akun terdaftar
    Input Text    //*[@id="username"]    081217948205

akun tidak terdaftar
    Input Text    //*[@id="username"]    088888880088

password akun terdaftar
    Input Text    //*[@id="password"]    Koyuji6661!

password akun tidak terdaftar
    Input Text    //*[@id="password"]    passwordsembarangan

Click Button Login
    Click Button    //*[@id="wpFormLogin"]/div/div[3]/div[2]/button
    Sleep    1s