*** Settings ***
Library    AppiumLibrary
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
Test Dropdown
    Lunch Application
    Login To App
    Go to Boiling Detail Page
    Select OT Plan Table
    Open Add OT Request
    Dropdown
    Click Text    เลือกพนักงานด้วยตนเอง
    # Click Element    xpath=///android.view.ViewGroup[@content-desc="เลือกพนักงานด้วยตนเอง"]/android.view.ViewGroup/android.view.ViewGroup

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
    Wait Until Page Contains    สำเร็จในเวลา
Select OT Plan Table
    Wait Until Page Contains    OT Plan
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.View/android.view.ViewGroup[2]
Open Add OT Request
    Click Element  xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.Button/android.view.ViewGroup/android.widget.Button/android.view.ViewGroup
    Wait Until Page Contains    เพิ่มงานล่วงเวลา
Dropdown
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    Wait Until Page Contains    ทุกคนในกะ