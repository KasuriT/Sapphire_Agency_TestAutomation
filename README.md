Selenium Robot Framework Test Suite

This repository contains a suite of test cases developed using the Robot Framework and SeleniumLibrary. The tests cover various functionalities, including login, client management, pagination, search, and filtering within the Sapphire Studios platform.

🛠️ Prerequisites

Ensure the following are installed on your system:

Python 3.7+
Robot Framework
SeleniumLibrary
Necessary web drivers (e.g., ChromeDriver, GeckoDriver)
robotframework-excellibrary (for Excel file handling)

Install required libraries:

pip install robotframework-seleniumlibrary
pip install robotframework-excellibrary

📂 Project Structure

.
├── TestCases
│   ├── Login.robot
        Announcement.robot
        DirectMessages.robot
        Campaign.robot
│   ├── ClientManagement.robot
│   ├── CreatorFunctionality.robot
├── Resources
│   ├── UserKeywords.robot
│   ├── CampaignUserKeywords.robot
├── TestData
│   ├── ReadData.py
│   ├── ReadCampaignData.py

TestCases: Contains all the Robot Framework test cases.
Resources: Includes reusable keywords and variable files.
TestData: Contains Python scripts and Excel files for data-driven testing.

🚀 How to Execute Tests

1. Clone the Repository
   
git clone <repository_url>
cd <repository_folder>

3. Configure Test Data
Update TestData/TestData.xlsx with valid test data (e.g., URLs, credentials, etc.).
Modify variable placeholders (e.g., ${url}, ${browser}) in Variables.robot.

5. Run Tests
Execute specific test cases or all tests:

# Run all test cases
robot TestCases/

# Run a specific test file
robot TestCases/Login.robot

4. View Test Results
Test results will be generated in:

output.xml: Detailed results in XML format.
report.html: A user-friendly report.
log.html: Comprehensive test execution logs.

✨ Test Cases Overview

1. Login with Valid Credentials
   
Opens the browser and navigates to the login page.
Reads credentials from an Excel file.
Verifies successful login and redirects to the homepage.

2. Campaign Management
   
Create campaigns from an Excel file.
Verifies Successful campaign creation.

3. Message Portal
   
Verifies Successful messages send to selected creators
Message Edit/ Deleted functionality

4. Client Management
   
Create a New Client: Adds a new client and verifies its availability in the list.
Pagination: Tests pagination functionality.
Search: Verifies search functionality within the client list.
Mandatory Field Validation: Ensures proper validation messages for missing fields.

5. Creator Functionality
   
View Creator Information: Checks visibility of creator details.
Search and View Creator: Verifies accurate search results for creators.
Casting List: Validates casting list functionalities, including viewing and filtering.
Filters: Tests applying, clearing, and verifying filtered results.
Pagination: Ensures next-page navigation works correctly.

📖 Keywords

Reusable keywords are defined in the Resources/UserKeywords.robot file, enabling modular and readable test cases. Examples include:

Input Text
Click Element
Wait Until Element Is Visible
Scroll Element Into View

🧪 Test Data

Test data is read dynamically from an Excel file (TestData/TestData.xlsx) using custom Python scripts (TestData/ReadData.py). This enables data-driven testing for:

Login credentials
Campaign Creation

🌟 Key Features

Modular and reusable test structure
Data-driven testing using Excel
Integration with Selenium for browser automation
Comprehensive validation for UI elements and workflows

📜 License

This project is licensed under the MIT License. Feel free to use, modify, and distribute it as needed.
