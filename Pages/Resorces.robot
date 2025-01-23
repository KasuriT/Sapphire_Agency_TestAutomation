*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${url}        https://testing.sapphireapps.com/authentication/login/
${campaign_url}        https://testing.sapphireapps.com/agency/htmx/campaigns/
${browser}        Chrome
${expected_title}        Login - Sapphire Studios
# Locators of Login Page
${email}        xpath://input[@name="username"]
${password}        xpath://input[@name="password"]
${login_button}        xpath://button[@id="login-button"]

# Locators of Campaign Page
${campaign_button}        xpath://span[@class="ml-2 text-white"]
${campaign_form_locator}        xpath://span[@id="select2-id_client_name-container"]
${campaign_name_locator}        xpath://input[@name="name"]
${select_category_locator}        xpath://select[@name="client_category"]
${select_storyboard_locator}        xpath://span[@id="select2-id_storyboard-container"]
${submission_due_date_locator}        xpath://input[@id='id_batch_due_date']
${client_due_date_locator}        xpath://input[@id='id_due_date']
${budget_locator}        xpath://input[@name="budget"]
${creative_talent_locator}        xpath://ul[@class="select2-selection__rendered"]
${account_manager_locator}        xpath:(//ul[@class="select2-selection__rendered"])[2]
${creative_leads_locator}        xpath:(//ul[@class="select2-selection__rendered"])[3]
${submit_button}        xpath://button[@class="btn btn-primary"]
${SapTester_locator}        xpath://li[contains(text(), 'SapTester')]
${AgentJ_locator}        xpath://li[contains(text(), 'Agent J')]
${TesterKasuri_locator}        xpath://li[contains(text(), 'Tester Kasuri')]

# Locators of Direct Message Function
${messages_button}        xpath://span[@class='ml-4 poppins text-black font-medium flex-1']
${direct_messages_button}        xpath://span[@class="poppins text-black font-medium ml-2"]
${Cane_Smith}        xpath://span[normalize-space()='Cane Smith']
${message_placeholder}        xpath://div[@placeholder='Write a message...'] 
${send_button}        xpath://img[@alt='Send msg Icon']
${more_action}        xpath://img[@alt='More action icon']
${edit_message}        xpath://span[text()='Edit Message']
${delete_message}        xpath://span[text()='Delete Message']
${delete_alertbox}        xpath://div[@class='modal-dialog modal-sm']
${alertbox_footer}        xpath://div[@class='modal-footer']
${delete_confirmation}        xpath://button[@id='deleteMsg']
       
# Locators of Client Screen
${IMAGE_PATH}        C:\\Users\\lenovo\\PycharmProjects\\SapphireTestAutomation\\Pages\\ClientPhotos\\a.png
${Client_Screen}        xpath:(//span[@class="ml-2 poppins text-black font-medium"])[2]
${Create_Client}        xpath://span[@class="poppins text-base text-white hover:text-white font-medium"]
${Client_Name}        xpath://input[@name="name"]
${Description}        xpath://textarea[@id='description_id']
${Vertical_Dropdown}        xpath://button[@id='verticalDropdown']//*[name()='svg']
${Health_Wellness_Dropdown}        xpath://li[@class='py-1 px-4 my-2 select-vertical hover:bg-[#F5F6F9] cursor-pointer']//span[@class='flex items-center gap-[8px] poppins text-black hover:text-black text-base font-semibold'][normalize-space()='Health and Wellness']
${Browse_Button}        xpath://span[@class='poppins text-white text-base font-medium']
${Client_Photo}        xpath://input[@name="client_photo"]
${ClientSubmit_Button}        xpath://button[@type='submit']

${Client_URL}        https://testing.sapphireapps.com/agency/htmx/clients/
${Client_List}        css=div[class='flex-1 grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4 gap-[32px] w-full pt-3 px-[16px] lg:px-0 mb-4']
${Next_Button}        xpath://button[3]//*[name()='svg']
${Search_Button}        xpath://input[@placeholder='Search Clients']
${CreateClient_URL}        https://testing.sapphireapps.com/agency/htmx/clients/create/
${ErrorMessage_VerticalData}        xpath://small[@id='vertical_error' and normalize-space()='Please select vertical data']

# Announcement Page

${Announcement_Button}        xpath:(//span[@class="ml-2 poppins text-black font-medium"])[6]
${AddAnnouncement_Button}        xpath://span[@class="ml-2 text-white"]
${Announcement_Submit}        xpath://span[contains(text(),'Submit')]
${Announcement_Title}        xpath://input[@id='title']
${Creator_Dropdown}        xpath://button[@id="creatorDropdown"]
${Send_Selection}        xpath://input[@name="send_to"]
${Announcement_Submit}        xpath://span[contains(text(),'Submit')]
${Announcement_ContentPopup}        xpath://div[@class="flex grid grid-cols-2 md:grid-cols-6"]
${Announcement_Content1}        xpath:(//span[@class="flex items-center gap-[8px] poppins text-black hover:text-black text-base font-semibold"])[8]
${Announcement_Content2}        xpath:(//span[@class="flex items-center gap-[8px] poppins text-black hover:text-black text-base font-semibold"])[10]

# Creator Screen
${Creator3_Button}        xpath:(//span[@class="ml-2 poppins text-black font-medium"])[3]
${Creator_QuickView}        xpath://img[@class="svg-filter-primary-accent-agency relative"]
${Creator_RatePV}        xpath://span[contains(normalize-space(),'Rate Per Video')]
${Creator_Country}        xpath://span[@class='text-md font-semibold text-black leading-[120%]'][normalize-space()='Country']
${Creator_NativeLanguage}        xpath://span[normalize-space()='Native Language']
${Creator_PhoneN}        xpath://span[normalize-space()='Phone']
${Creator_Email}        xpath://span[normalize-space()='Email']
${Creator_url}        https://testing.sapphireapps.com/agency/htmx/creators/
${Search_Creator}        xpath://input[@placeholder='Search Creators']
${Creator_SearchResult}        xpath://img[@class="svg-filter-primary-accent-agency relative"]
${Creator_CastingList}        xpath://button[@id='bulkActions']//*[name()='svg']
${View_CastingList}        xpath://a[@class='flex items-center gap-[5px] hover:text-primary-accent-agency active:text-black']
${Creator_Filter}        xpath://span[normalize-space()='Tags']
${Creator_ParentsTags}        xpath://option[normalize-space()='parents']
${ParentsTags_Result}        xpath:(//a[normalize-space()='#parents'])[1]
${Creator_ExpandTag}        xpath://span[@class='ml-2 poppins text-base lg:block hidden']
${Creator_FilterClear}        xpath://span[@class='poppins text-sm text-primary-accent-agency']
${Creator_NextPage}        xpath://body/div[@class='min-h-rscreen max-h-rscreen lg:grid grid-cols-12 grid-rows-1 gap-0 flex']/div[@class='lg:col-span-9 2xl:col-span-10 flex-1']/div[@class='flex flex-col h-full bg-[#F5F6F9] overflow-y-auto']/div[@class='overflow-y-auto flex flex-1 flex-col relative']/div[@class='flex flex-1']/div[@class='w-full flex flex-col lg:pb-4 lg:px-6 relative']/div[@id='creators']/form[@id='paginator']/div[@class='flex items-center gap-[5px] justify-center']/button[3]//*[name()='svg']


*** Keywords ***
Start browser and maximize
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    Input Text        ${email}        agency@sapphireapps.com
    Input Password        ${password}        j*1N7iEF7T%O
    Scroll Element Into View        ${login_button}
    Wait Until Element Is Visible        ${login_button}        timeout=10s
    Click Button        ${login_button}
