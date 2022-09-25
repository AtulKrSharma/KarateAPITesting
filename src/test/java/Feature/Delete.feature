Feature: To show the use of Delete and the power of GIT

Background:

 * url  'https://reqres.in/'
 * header Accept = 'application/json'

Scenario: Test with path
Given path 'api/users?page=2'
When method DELETE
Then status 204
And match response contains { page: 2}


