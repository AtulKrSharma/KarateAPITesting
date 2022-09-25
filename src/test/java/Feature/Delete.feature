Feature: to show the use of Delete

Background:

 * url  'https://reqres.in/'
 * header Accept = 'application/json'

Scenario: Test with path
Given path 'api/users?page=2'
When method GET
Then status 200
#And match response contains { page: 2, per_page: 6}

Scenario: Test with params
Given path 'api/users'
And param page = 2
When method GET
Then status 200
And print responseStatus
And print responseHeaders
And assert response.data.length == 6
And match response contains { page: 2, per_page: 6}

