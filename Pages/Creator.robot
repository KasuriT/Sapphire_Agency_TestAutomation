*** Settings ***
Library        SeleniumLibrary
Resource        Resorces.robot

*** Test Cases ***
[Set up]    Start browser and maximize
Verify the functionality of view creator information
    Click Element        ${Creator3_Button}
    Click Element        ${Creator_QuickView}
    Sleep        10seconds
    
    # Verify visibility of creator details
    Scroll Element Into View        ${Creator_RatePV}
    Wait Until Element Is Visible        ${Creator_RatePV}        timeout=20
    Element Should Be Visible        ${Creator_RatePV}

    Scroll Element Into View        ${Creator_Country}
    Wait Until Element Is Visible        ${Creator_Country}
    Element Should Be Visible        ${Creator_Country}
    
    Scroll Element Into View        ${Creator_NativeLanguage}
    Wait Until Element Is Visible        ${Creator_NativeLanguage}
    Element Should Be Visible        ${Creator_NativeLanguage}
    
    Scroll Element Into View        ${Creator_PhoneN}
    Wait Until Element Is Visible        ${Creator_PhoneN}
    Element Should Be Visible        ${Creator_PhoneN}
    
    Scroll Element Into View        ${Creator_Email}
    Wait Until Element Is Visible        ${Creator_Email}
    Element Should Be Visible        ${Creator_Email}

Verify Search and View Functionality
    [Setup]        Start browser and maximize
    Go To        ${Creator_url}

    # Search for a specific creator
    Input Text        ${Search_Creator}        Kithi Tester
    Press Key        ${Search_Creator}        ENTER

    # Verify displayed creator information
    Element Should Be Visible        ${Creator_SearchResult}

Verify Casting List Functionality
    [Setup]        Start browser and maximize
    Go To        ${Creator_url}
    Click Element        ${Creator_CastingList}
    Click Element        ${View_CastingList}
    Title Should Be        Sapphire Studios - Creators

Verify Filters Functionality
    [Setup]        Start browser and maximize
    Go To       ${Creator_url}
    Click Element        ${Creator_CastingList}
    Wait Until Element Is Visible        ${Creator_CastingList}        timeout=10
    Click Element        ${Creator_CastingList}


    # Select option from dropdown instead of checkbox
    Click Element        ${Creator_Filter}
    Wait Until Element Is Visible        ${Creator_ParentsTags}        timeout=10            
    Click Element        ${Creator_ParentsTags}
    
     # Verify filtered results
    Wait Until Element Is Visible        ${ParentsTags_Result}        timeout=10


Verify filter results can clear successfully
    [Setup]        Start browser and maximize
    Go To        ${Creator_url}
    Click Element        ${Creator_CastingList}
    Wait Until Element Is Visible        ${Creator_ExpandTag}        timeout=10
    Click Element        ${Creator_ExpandTag}


    # Select option from dropdown instead of checkbox
    Click Element        ${Creator_Filter}
    Wait Until Element Is Visible        ${Creator_ParentsTags}        timeout=10
    Click Element        ${Creator_ParentsTags}

    # Verify filter result can clear
    Click Element        ${Creator_FilterClear}

Verify to load next Creator Page
    [Setup]        Start browser and maximize
    Go To       ${Creator_url}
    Click Element        ${Creator_CastingList}
    Scroll Element Into View        ${Creator_NextPage}
    Wait Until Element Is Visible        ${Creator_NextPage}        timeout=10s
    Click Element        ${Creator_NextPage}


*** Keywords ***
