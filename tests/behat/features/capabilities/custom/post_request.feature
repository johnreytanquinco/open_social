Feature: Test REST API POST request
    In order to test POST request
    As an anonymous user
    I want to be able to perform REST API POST request

	  Scenario: Sending POST request with Article body
			Given I add "content-type" header equal to "application/json"
			When I send a POST request to "entity/node?_format=json" with body:
			"""
			{
				"type": [
					{
						"target_id": "article"
					}
				],
				"title": [
					{
						"value": "My custom title"
					}
				],
				"body": [
					{
						"value": "Lorem ipsum dolor set amet."
					}
				],
				"field_url": [
					{
						"uri": "http:\/\/www.businessinsider.com\/crypto-academic-dr-garrick-hileman-interview-joining-blockchain-paul-krugman-and-nouriel-roubini-and-bitcoin-2018-5"
					}
				]
			}
      """
      Then the response status code should be in 201
      And the JSON node "type[0].target_id" should be equal to "article"