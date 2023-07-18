*** Settings ***
Library    AppiumLibrary
Test Teardown     Close Application  

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

*** Test Cases ***
Remove 1 OT Request 
    Lunch Application
    Login To App
    Go to Boiling Detail Page
    Select OT Plan Table
    Open Remove OT Request
    Select 1 OT Request
    Go to Confirm Page
    Confirm OT Request
    See Notification Text     Remove OT requests successful
    Log-out
Remove OT Requests 
    Lunch Application
    Login To App
    Go to Boiling Detail Page
    Select OT Plan Table
    Open Remove OT Request
    Select OT Requests
    Go to Confirm Page
    Confirm OT Request
    See Notification Text   Remove OT requests successful
    Log-out
Remove Failed
    Lunch Application
    Login To App
    Go to Boiling Detail Page
    Select OT Plan Table
    Open Remove OT Request
    Go to Confirm Page
    Confirm OT Request
    See Notification Text    Remove OT requests failed
    Log-out

Remove and reselect worker
    Lunch Application
    Login To App
    Go to Boiling Detail Page
    Select OT Plan Table
    Open Remove OT Request
    Select 1 OT Request
    Back to Select Worker Page
    Select OT Requests
    Go to Confirm Page
    Confirm OT Request
    See Notification Text    Remove OT requests successful
    Log-out

Remove & use Search-bar
    Lunch Application
    Login To App
    Go to Boiling Detail Page
    Select OT Plan Table
    Open Remove OT Request
    Back to Select Worker Page
    Search Worker by Search-bar    Shalne Rizzi
    Select 1 OT Request
    Go to Confirm Page
    Confirm OT Request
    See Notification Text    Remove OT requests successful
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

Go to Boiling Detail Page
    Wait Until Page Contains   Dashboard
    Wait Until Page Contains   Boiling
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[2]
    Wait Until Page Contains    ไม่สำเร็จในเวลา
Select OT Plan Table
    Wait Until Page Contains    OT Plan
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.View/android.view.ViewGroup[2]

Open Remove OT Request
    # Click Element  id=detail-removeModal
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.Button
    Wait Until Page Contains   ลดงานล่วงเวลา

Select 1 OT Request 
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.widget.CheckBox/android.view.ViewGroup/android.widget.TextView
Select OT Requests
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.widget.CheckBox/android.view.ViewGroup/android.widget.TextView
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup[1]/android.widget.CheckBox/android.view.ViewGroup/android.widget.TextView
Assign OT Time 
    Input Text    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText    4

Go to Confirm Page
    Click Text    Next
    Wait Until Page Contains    Name
    Wait Until Page Contains    Perf.
    Wait Until Page Contains    Hours

Confirm OT Request
    Click Text    Confirm
    # Wait Until Page Contains   Remove OT Requests successful

Back to Select Worker Page
    Click Text    Previous
Search Worker by Search-bar
    [Arguments]    ${text}
    Input Text    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText  ${text}
    Page Should Contain Text    ${text}
See Notification Text
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}
    Page Should Contain Text    ${text}

Log-out
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button/android.view.ViewGroup/android.widget.TextView
