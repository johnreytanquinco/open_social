@api
Feature: Generating and checking REST API request in json format
  In order to check REST API content
  As an anonymous user
  I need to be able to display the data in json format

  Scenario: Check jsonapi content of post
	  Given I set the "Content-Type" header to be "application/json"
	  When I request "GET /node/10278?_format=json"
	  Then the response status code should be with value 200
	  And the "nid" property exists
	  Then the "uuid" property should contain "a00f1fda-dc5b-411e-82f8-4f459bbf76fe"

	Scenario: Check jsonapi content of post
	  Given I set the "Content-Type" header to be "application/json"
	  #When I request "GET /api/stream/6c9d2363-3dd2-4797-b9df-c6a6c9851f48?_format=json"
	  #When I request "GET /jsonapi/node/article/bee15146-dcd7-4a11-be41-13a20f61d2c0"
	  When I request "GET /jsonapi/post/post/a883b720-7eb2-4745-8a5c-7ad99dcf8944"
	  #And print last responses
	  Then the response status code should be with value 200
	  And scope into the "data" property
		  And the "type" property exists
		  Then the "id" property should contain "a883b720-7eb2-4745-8a5c-7ad99dcf8944"
		  And the "attributes.id" property should equal "233"
	  #And the following properties should exist:
    #"""
    #user_id
    #"""
	  #Then the "user_id" property should be an array
	  #And the "created" property should equal "1527083209"
	  #Then the "user_id" property should contain "superuser"
	  #And the "Content-Type" header should be "application/json"


	Scenario: Check user photo
	  Given I set the "Content-Type" header to be "application/json"
	  When I request "GET /jsonapi/post/post/a883b720-7eb2-4745-8a5c-7ad99dcf8944"
	  And print last responses
	  Then the response status code should be with value 200
	  And scope into the "data" property
		  And the "type" property exists
		  Then the "id" property should contain "a883b720-7eb2-4745-8a5c-7ad99dcf8944"
		  And the "attributes.id" property should equal "233"
	  #And the following properties should exist:
    #"""
    #user_id
    #"""
	  #Then the "user_id" property should be an array
	  #And the "created" property should equal "1527083209"
	  #Then the "user_id" property should contain "superuser"
	  #And the "Content-Type" header should be "application/json"