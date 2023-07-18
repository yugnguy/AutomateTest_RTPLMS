*** Settings ***
Library    AppiumLibrary
Test Teardown     Close Application  
Library    DateTime
Library    String

*** Variables ***
${REMOTE_URL}   127.0.0.1:4723/wd/hub
${platformName}    Android
${appium:platformVersion}    11
${appium:deviceName}    emulator-5554
${appium:automationName}    UiAutomator2
${appium:ensureWebviewsHavePages}    true
${appium:nativeWebScreenshot}    true
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    true

${username}    ghateley0
${password}    BtNMJU

*** Test Cases ***
Have Department Data
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    Details card is appear
    Log-out

Searching Valid Worker
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    Use Search bar    Mawhang Khompee
    Wait Until Page Contains    Mawhang Khompee
    Log-out
Searching Invalid Worker
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    Use Search bar    Mawhang Khompo
    Log-out


Datepicker shown Current Date
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    ${currentDate}=    Get Current Date    result_format=%d %B %Y
    ${elementText}=    Get Text    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.Button/android.widget.TextView
    Should Be Equal As Strings    ${elementText}    ${currentDate}
    Log-out

Pressing Datepicker
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    Press Datepicker 
    Click Text    CANCEL
    Log-out
Cancle Datepicker Date
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    Press Datepicker 
    Click Text    CANCEL
    Wait Until Page Does Not Contain    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout
    Log-out
Select Tomorrow Date
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    Press Datepicker
    Press Next Day
    Click Text    OK
    # Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    # Click Text    08:00-16:00
    # Click A Point    x=953     y=606
    Log-out
    # Shown Selected Day

# Select Shift
#     Lunch Application
#     # Input Username Text    ${username} 
#     # Input Password Text    ${password}
#     # Press Login
#     # Wait Until Page Contains    Boiling
#     # Go to department details page
#     # Wait Until Page Contains    Boiling
#     Click Element    id=select-shift
#     Click

Select OT Plan Table
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    Click Element    xpath=//android.view.View[@content-desc="OT Plan"]
    Wait Until Page Contains    Hours
    Wait Until Page Contains    Status
    Log-out


Select Worker Plan Table
    Lunch Application
    Input Username Text    ${username} 
    Input Password Text    ${password}
    Press Login
    Go to department details page
    Click Element    xpath=//android.view.View[@content-desc="Work Plan"]
    Wait Until Page Contains    In - Out
    Wait Until Page Contains    Status
    Log-out




*** Keywords ***   
Lunch Application
        Open Application    ${REMOTE_URL}   
        ...    platformName=${platformName}  
        ...    appium:platformVersion=${appium:platformVersion}  
        ...    appium:deviceName=${appium:deviceName}  
        ...    appium:automationName=${appium:automationName}  
        ...    appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  
        ...    appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  
        ...    appium:newCommandTimeout=${appium:newCommandTimeout}  
        ...    appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
Login To App
    Input Text    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.EditText    ghateley0
    Input Password    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText    BtNMJU
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]
Input Username Text
    [Arguments]    ${text}
    Input Text    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.EditText    ${text}
Input Password Text
    [Arguments]    ${text}
    Input Password    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText    ${text}
Press Login
    # Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]
    Click Text    Login
    Wait Until Page Contains    Boiling

Go to department details page
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[2]
    Wait Until Page Contains    ไม่สำเร็จในเวลา
    
Details card is appear
    Wait Until Page Contains   ผลผลิต
Use Search bar
    [Arguments]    ${text}
    Input Text    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText    ${text}   
Press Datepicker 
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.Button/android.widget.TextView
    Wait Until Page Contains Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout
Press Next Day
    ${currentDate}=    Get Current Date    result_format=%d
    ${currentDateWithoutLeadingZero}=    Set Variable    ${currentDate.lstrip('0')}
    ${incrementedDate}=    Evaluate    int('${currentDateWithoutLeadingZero}') + 1
    Click Text    ${incrementedDate} 
Shown Selected Day
    ${currentDate}=    Get Current Date    result_format=%d
    ${cMonth}=    Get Time    result_format=%m
    ${cYear}=    Get Current Date    result_format=%Y
    # ${cHour}=    Get Time    result_format=%m
    # ${cMin}=    Get Time    result_format=%m
    ${currentDateWithoutLeadingZero}=    Set Variable    ${currentDate.lstrip('0')}
    ${incrementedDate}=    Evaluate    int('${currentDateWithoutLeadingZero}') + 1
    ${formattedDate}=    Run Keyword If    ${incrementedDate} < 10    Set Variable    0${incrementedDate}    ELSE    Set Variable    ${incrementedDate}
    ${dateInDesiredFormat}=    Convert Date    ${cYear}-${cMonth}-${formattedDate}    result_format=%m.%d.%Y %H:%M
    # ${dateInDesiredFormat}=    Convert Date    ${formattedDate} ${cMonth} ${cYear}    result_format=%d %B %Y

    # Log To Console    ${dateInDesiredFormat}
    # Click Text    ${formattedDate}


    # ${selectDate} =
    # ${elementText}=    Get Text    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.Button/android.widget.TextView
    # Should Be Equal As Strings    ${elementText}    ${selectDate}


Log-out
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button/android.view.ViewGroup/android.widget.TextView

    