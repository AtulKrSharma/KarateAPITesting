Feature: This is sample GET feature for testing.

Scenario: To test the GET call.
Given configure headers = {Content-Type: 'application/json'}
And url 'https://swapi.dev/'
And path 'api/people/1/'
When method GET
Then status 200
* print response
* print responseHeaders


Scenario: To test fake get call
Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200
And print response
And print responseTime
