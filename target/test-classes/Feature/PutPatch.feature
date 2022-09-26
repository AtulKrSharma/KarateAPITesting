Feature: to show the use of Put n Patch

Background:

 * url  'https://reqres.in/'
 * header Accept = 'application/json'
 * def payLoad = 
 """
 { "Fname": "Atul",
   "Lname": "Sharma",
   "County": "Mississauga",
   "Country":"Canada" 
 }
 """

Scenario: Test with path
Given path 'api/users'
And request payLoad
And print payLoad
When method POST
Then status 201
And match $.data[1].id == '2'
And match response == {"name":"AtulSam","job":"test leader","id":"#string","createdAt":"#ignore"}

