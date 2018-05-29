Feature: Test REST API request
    In order to test my API
    As an anonymous user
    I want to be able to perform REST API request

    Scenario: Sending GET request to non existing ressource should lead to 404
      When I send a GET request to "simpson.json"
      Then the response status code should be in 404

    Scenario: Sending GET request to existing resource should lead to 200 and checking array
    	Given I request "api/stream/f388232c-4887-441b-8744-b4e252f239e5?_format=json"
    	Then the response code is 200
    	#Then the response body is an empty JSON array
    	Then the response body is a JSON array of length 1

    Scenario: GET request to check all content in the newsfeed
    	Given I request "api/stream?_format=json"
    	Then the response code is 200
    	#Then the response body is an empty JSON array
    	#Then the response body is a JSON array of length 237

    Scenario: GET request that check specific field value
    	Given I request "api/stream/f388232c-4887-441b-8744-b4e252f239e5?_format=json"
    	Then the response code is 200
    	Then the response body contains JSON:
		    """
		    [
          {
              "uuid": "f388232c-4887-441b-8744-b4e252f239e5"
          }
      	]
		    """

    Scenario: GET request for specific content/node and check field value
      When I send a GET request to "node/10300?_format=json"
      Then the response status code should be in 200
      And the JSON node "nid[0].value" should be equal to "10300"