@createuser
Feature: Create user
Create a Test User

	Scenario: Create User - Successful		
		Given an endpoint "/api/users" and expected response "201" and POST with:

		"""
		{
			"name": "morpheus",
			"job": "leader"
		}

		"""
		Then the HTTP status should be "201"
		And the field "name" should be "morpheus"		
		And the field "job" should be "leader"
    
	
	Scenario: Login failed - invalid header type
		Given an endpoint "/api/users" and invalid header and expected response "500" and terminalid "3IWP0001" and POST with:

		"""
		{
				"username": "newbie@qapm.com",
				"Password": ""
		}

		"""
		Then the HTTP status should be "500"
		And the field "ResponseCode" should be "10001"
	