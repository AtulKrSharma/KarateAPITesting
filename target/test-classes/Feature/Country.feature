#Author: sharma.atulkumar29@yahoo.com

Feature: check the responses returned by API

Background:
  * url 'https://swapi.dev/'
  * header Accept = 'application/json'
  
  Scenario: get the list
  
  Given path 'api/people/1/'
  When method get
  Then status 200
  And match response contains any {name: 'Luke Skywalker', height: '172'}
