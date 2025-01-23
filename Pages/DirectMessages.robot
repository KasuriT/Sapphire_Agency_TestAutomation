*** Settings ***
Library        SeleniumLibrary
Resource        Resorces.robot

*** Variables ***


*** Test Cases ***
[Set up]    Start browser and maximize
Verify Direct Messages
    [Documentation]        Verify that Agency can send a message successfully.
    Click Element        ${messages_button}
    # Display Direct Messages tab
    Click Element        ${direct_messages_button}
    # Select one sender from the list
    Wait Until Element Is Visible        ${Cane_Smith}        timeout=10
    Click Element        ${Cane_Smith}
    # Send a message
    Wait Until Element Is Visible        ${message_placeholder}       timeout=10

    Input Text        ${message_placeholder}        Hello, This is a test Message From Agency
    Click Element        ${send_button}
    Wait Until Page Contains        Hello, This is a test Message From Agency        timeout=10
    Wait Until Element Is Visible        xpath://span[text()='Hello, This is a test Message From Agency']
    Element Text Should Be        xpath://span[text()='Hello, This is a test Message From Agency']        Hello, This is a test Message From Agency
    

Edit a Sent Message
    [Documentation]        Verify that user can edit the sent message

    Wait Until Element Is Visible        ${more_action}
    Click Element        ${more_action}
    #Wait for "Edit Message" to appear
    Wait Until Element Is Visible        ${edit_message}        timeout=10
    # Verify "Edit Message" text is displayed
    Element Text Should Be        ${edit_message}        Edit Message
    Click Element        ${edit_message}
    Clear Element Text        ${message_placeholder}
    Input Text        ${message_placeholder}        This is Edited Message
    Wait Until Element Is Visible        ${send_button}
    Scroll Element Into View        ${send_button}
    Click Element        ${send_button}
    Wait Until Element Is Visible        xpath://span[text()='This is Edited Message']        timeout=10
    Element Text Should Be        This is Edited Message        timeout=10
                
    

Delete a Sent Message
    [Documentation]        Verify that a user can delete a sent message

# Retry clicking "More Action" if needed
    Click Element        ${more_action}
    Sleep                2s
    Wait Until Element Is Visible        ${delete_message}        timeout=30
    Element Text Should Be        ${delete_message}        Delete Message
    Click Element        ${delete_message}

    # Verify Alert Message
    
    Wait Until Element Is Visible        ${delete_alertbox}        timeout=10
    Wait Until Page Contains Element        ${delete_alertbox}        timeout=30
    #Element Should Contain                Please confirm, are you sure you want to delete this message?

    # Verify the modal footer is present
    Wait Until Element Is Visible        ${alertbox_footer}    timeout=10



    # Interact with Okay button
    
    Handle Alert        ACCEPT
    #Wait Until Element Is Visible        ${delete_confirmation}        timeout=30
    #Wait Until Element Is Visible        ${delete_confirmation}
    #Scroll Element Into View        ${delete_confirmation}
    #Click Element        ${delete_confirmation}

    #Execute JavaScript        document.getElementById('deleteMsg').click()

    # Verify message is deleted
    Wait Until Element Is Not Visible        xpath://span[text()='Hello, This is a test Message From Agency']        timeout=10
    #Log To Console        Message successfully deleted
            
