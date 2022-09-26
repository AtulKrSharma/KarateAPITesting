Feature: to show the use of Get

  Background: 
    #* header Accept = 'application/json'
    * def reqHead = {Content-Type: 'application/json'}

  Scenario: Test with path
    Given headers reqHead
    And print reqHead
    And url 'https://reqres.in/api/users?page=1'
    And print name
    When method GET
    Then status 200
    And print response
    And def jsonRes = $.data[1].first_name
    And print jsonRes
    And match each $.data contains {id: #number, email: #string, first_name: #string, last_name: #string, avatar: #string}

  Scenario: Test with params
    Given url 'https://reqres.in/api/users?page=2'
    #And param page = 2
    When method GET
    Then status 200
    And print responseStatus
    And print responseHeaders
    And assert response.data.length == 6
    And match response contains { "page":2, "per_page":6,   "total": 12, "total_pages": 2,}
