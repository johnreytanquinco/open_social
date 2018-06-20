Feature: Test chart data via REST per content
    In order to read data from chart
    As an anonymous user
    I want to be able to perform REST API request on chart items

    Scenario: GET request that check specific field value
    	Given I request "api/stream?_format=json"
    	Then the response code is 200
    	Then the response body contains JSON:
		    """
		    [
          {
              "field_pattern": "\n\n\n\n\n\n\n\n\n{\"resist_start_x\":\"1528277100\",\n\"resist_start_y\":\"1.1766800000\",\n\"resist_end_x\":\"1528280100\",\n\"resist_end_y\":\"1.17708000\",\n\"support_start_x\":\"1528276800\",\n\"support_start_y\":\"1.1745900000\",\n\"support_end_x\":\"1528282920\",\n\"support_end_y\":\"1.1738400000\",\n\"symbol\":\"EURUSD\",\n\"timeframe\":\"1M\",\n\"id\":\"TPNzlfRVVSVVNEX00xXzE1MjgyNjk2MDA\"}\n\n\n\n\n\n"
          }
      	]
		    """