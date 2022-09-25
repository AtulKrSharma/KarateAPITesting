Feature: to show the use of Put n Patch

Background:

 * url  'https://reqres.in/'
 * header Accept = 'application/json'

Scenario: Test with path
Given path 'api/users'
And request {   "name": "AtulSam",     "job": "test leader" }
When method POST
Then status 201
And print responseStatus
And print responseHeaders
And match response == {"name":"AtulSam","job":"test leader","id":"#string","createdAt":"#ignore"}

