Feature: Test REST API POST request
  In order create a pattern
  As LIU
  I want to be able to perform REST API POST request

  Scenario: Creating a pattern with field_pattern_index using POST request
    Given I add "content-type" header equal to "application/json"
    And I add "Authorization" header equal to "Basic XXXXX"
    And I send a POST request to "entity/node?_format=json" with body:
		"""
		{
			"field_pattern_index": [
				{
					"value": "TPODdfRVVSVVNEX00xXzE1MjgyNzU3MjA"
				}
			],
			"type": [
				{
					"target_id": "trading_pattern"
				}
			],
			"title": [
				{
					"value": "Symmetrical triangles detected for EURGBP"
				}
			],
			"field_first_detected": [
				{
					"value": 1529912700
				}
			],
			"field_pattern_expired": [],
			"field_pattern_type": [
				{
					"value": "symmetrical_triangles"
				}
			],
			"field_resist_end_x": [
				{
					"value": 1529919900
				}
			],
			"field_resist_end_y": [
				{
					"value": "0.8801200000"
				}
			],
			"field_resist_start_x": [
				{
					"value": 1529912700
				}
			],
			"field_resist_start_y": [
				{
					"value": "0.8787300000"
				}
			],
			"field_resist_uncert": [
				{
					"value": "0.0000597000"
				}
			],
			"field_support_end_x": [
				{
					"value": 1529918100
				}
			],
			"field_support_end_y": [
				{
					"value": "0.8783000000"
				}
			],
			"field_support_start_x": [
				{
					"value": 1529913900
				}
			],
			"field_support_start_y": [
				{
					"value": "0.8781000000"
				}
			],
			"field_support_uncert": [
				{
					"value": "0.0000312000"
				}
			],
			"field_symbol": [
				{
					"target_id": 27
				}
			],
			"field_timeframe": [
				{
					"target_id": 13
				}
			]
		}
    """
    Then the response status code should be in 201
    And the JSON node "field_pattern_index[0].value" should be equal to "TPODdfRVVSVVNEX00xXzE1MjgyNzU3MjA"

  Scenario: Creating a pattern with an empty value in field_pattern_index
    Given I add "content-type" header equal to "application/json"
    And I add "Authorization" header equal to "Basic XXXXX"
    And I send a POST request to "entity/node?_format=json" with body:
		"""
		{
			"field_pattern_index": [],
			"type": [
				{
					"target_id": "trading_pattern"
				}
			],
			"title": [
				{
					"value": "Symmetrical triangles detected for EURGBP"
				}
			],
			"field_first_detected": [
				{
					"value": 1529912700
				}
			],
			"field_pattern_expired": [],
			"field_pattern_type": [
				{
					"value": "symmetrical_triangles"
				}
			],
			"field_resist_end_x": [
				{
					"value": 1529919900
				}
			],
			"field_resist_end_y": [
				{
					"value": "0.8801200000"
				}
			],
			"field_resist_start_x": [
				{
					"value": 1529912700
				}
			],
			"field_resist_start_y": [
				{
					"value": "0.8787300000"
				}
			],
			"field_resist_uncert": [
				{
					"value": "0.0000597000"
				}
			],
			"field_support_end_x": [
				{
					"value": 1529918100
				}
			],
			"field_support_end_y": [
				{
					"value": "0.8783000000"
				}
			],
			"field_support_start_x": [
				{
					"value": 1529913900
				}
			],
			"field_support_start_y": [
				{
					"value": "0.8781000000"
				}
			],
			"field_support_uncert": [
				{
					"value": "0.0000312000"
				}
			],
			"field_symbol": [
				{
					"target_id": 27
				}
			],
			"field_timeframe": [
				{
					"target_id": 13
				}
			]
		}
    """
    Then the response status code should be in 422