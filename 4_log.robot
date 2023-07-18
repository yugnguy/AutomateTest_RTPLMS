*** Settings ***
Library    AppiumLibrary
Library    DateTime
*** Variables ***
${PACKAGE_NAME}     host.exp.exponent
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
Go to Log page
    Lunch Application
    Login To App
    Wait Until Page Contains    Boiling
    Go to Log Page
    Show Current Date
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
Go to Log Page
    Click Text     Logs
Show Current Date
    ${currentDate}=    Get Current Date    result_format=%d %B %Y
    # Log To Console    ${currentDate}
    Wait Until Page Contains    ${currentDate}
Log-out
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button/android.view.ViewGroup/android.widget.TextView
