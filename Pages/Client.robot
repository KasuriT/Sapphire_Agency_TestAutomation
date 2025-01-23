*** Settings ***
Library        SeleniumLibray
Resource        Resorces.robot

*** Variables ***


*** Test Cases ***
[Set up]    Start browser and maximize
Create a new Client
    [Documentation]        The client is created successfully, and the client name appears in the list.
    Click Element        ${Client_Screen}
    Click Element        ${Create_Client}
    
    Input Text        ${Client_Name}        test111111
    Input Text        ${Description}        TestAutomation
    
    Click Element        ${Vertical_Dropdown}
    Click Element        ${Health_Wellness_Dropdown}
    
    # Browse and select a image
    Click Element        ${Browse_Button}
    Choose File        ${Client_Photo}        ${IMAGE_PATH}



    
    Click Element        ${ClientSubmit_Button}

     # Verify that the created client is available in the client list
     Go To        ${Client_URL}
     
     Scroll Element Into View        ${Client_List}
     Wait Until Element Is Visible        ${Client_List}        timeout=10
     Element Should Contain        ${Client_List}        test111
     Close Window

    
Verify Pagination on Client List
    [Documentation]        The pagination navigates correctly, and the title does not change.
    [Setup]        Start browser and maximize
    Go To        ${Client_URL}
    Scroll Element Into View        ${Next_Button}
    Wait Until Element Is Visible        ${Next_Button}        timeout=10
    Click Element        ${Next_Button}
    Title Should Be        Sapphire Studios - Clients

Verify Search for a Client
    [Documentation]        The search client name appears in the search results.
    [Setup]        Start browser and maximize
    Go To        ${Client_URL}

    # Search for a specific client
    Input Text        ${Search_Button}        Test Kasuri
    Press Key        ${Search_Button}        ENTER

    # Verify search results
    Wait Until Element Is Visible        xpath://span[normalize-space()='Test Kasuri']        timeout=10

Verify Mandatory field validation
    [Documentation]        Ensure that mandatory field validation works as expected during client creation.
    [Setup]        Start browser and maximize
    Go To        ${CreateClient_URL}

    Input Text        ${Client_Name}        test111111
    Input Text        ${Description}        TestAutomation

    # Browse and select a image
    Click Element        ${Browse_Button}
    Choose File        ${Client_Photo}        ${IMAGE_PATH}

    Click Element        ${ClientSubmit_Button}

    # Verify validation messages for mandatory fields
    Wait Until Element Is Visible        ${ErrorMessage_VerticalData}        timeout=20
        
    Element Should Contain        ${ErrorMessage_VerticalData}        Please select vertical data

    

