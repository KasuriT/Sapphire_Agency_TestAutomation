*** Settings ***
Library        SeleniumLibrary
Resource        Resorces.robot

*** Variables ***
${INPUT_LOCATOR}        xpath://input[@id='title']

*** Test Cases ***
[Set up]        Start browser and maximize



Verify the Mandatory Field Validations

    [Documentation]        Test to verify mandatory field validation during announcement creation.
    # Click Announcement
    Click Element        ${Announcement_Button}
    Click Element        ${AddAnnouncement_Button}
    # Verify that Mandatory fields has validated properly
    Scroll Element Into View        ${Announcement_Submit}
    Wait Until Element Is Visible        ${Announcement_Submit}        timeout=20
    Click Element        ${Announcement_Submit}

    #Verify the alert message for mandatory fields.
    #Handle Alert        ACCEPT
    Alert Should Be Present        Please enter announcement title.
    
Verify Account Creation
    # Enter Title
    Input Text        ${Announcement_Title}        TestAnnouncement
    
    # Fetch the value of the input field
    ${field_value}=        Get Value        ${INPUT_LOCATOR}
    # Log the value to the console
    Log        The value of the input field is:        ${field_value}
    


    Click Element        ${Creator_Dropdown}
    Click Element        ${Send_Selection}
    Click Element        ${Announcement_ContentPopup}
    
    Click Element        ${Announcement_Content1}
    Click Element        ${Announcement_Content2}


    Wait Until Element Is Visible        ${Announcement_Submit}       timeout=20
    Click Element        ${Announcement_Submit}
    
    

    # Handle Creator Dropdown
    #Click Element        xpath://button[@id='creatorDropdown']
    #Click Element

    # Select Category
    #Click Element        xpath://div[@id='category-dropdown-wrapper']
    #Wait Until Element Is Visible        xpath://li[@class='py-1 px-4 my-2 select-category cursor-pointer']//span[contains(text(), 'Agency Update')]
    #Click Element        xpath://li[@class='py-1 px-4 my-2 select-category cursor-pointer']//span[contains(text(), 'Agency Update')]

    # Pick Due Date
    #Click Element        xpath://span[@id='due-date-pick']
    #Wait Until Element Is Visible        xpath://div[contains(@class, 'calendar')]
    #Click Element        xpath://div[contains(@class, 'calendar')]//td[contains(@class, 'today')]/following-sibling::td[1]  # Select Tomorrow

    # Submit Announcement
    #Wait Until Element Is Visible        xpath://span[contains(text(),'Submit')]        timeout=20
    #Click Element        xpath://span[contains(text(),'Submit')]

    # Verify Success Message
    #Wait Until Page Contains    Announcement created successfully    timeout=10







