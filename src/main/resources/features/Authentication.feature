Feature: Authentication

Scenario: Login with valid OTP
Given: User is in Login page
And: User enters his phone number
And: User enters correct OTP
When: User clicks on the "Submit" button
Then: User should be able to login to the application

Scenario: Login with Invalid OTP
Given: User is in Login page
And: User enters his phone number
And: User enters Incorrect OTP
When: User clicks on the "Submit" button
Then: User should not be able to login to the application
And User should see the error "Invalid OTP"

Scenario: Sign with New Phone Number
Given: User is in Login page
And: User does not have any account in the application
And: User enters his phone number
And: User enters correct OTP
When: User clicks on the "Submit" button
Then: User Account should be created in the application
And User should be able to login to the application

Scenario: User should be able to use Resend OTP option
Given User is in Login Page
And User enters his phone Number
And User enters Incorrect OTP
When User clicks on the "Submit" button
Then User should not be able to login
And "Resend OTP" should be enabled
When User clicks on "Resend OTP" button
Then User should get a new OTP
When User enters the new correct OTP
Then User should be able to Login
