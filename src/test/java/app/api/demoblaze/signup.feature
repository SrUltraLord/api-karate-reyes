Feature: user signup
  Background:
    * def urlBase = 'https://api.demoblaze.com/signup'

  Scenario: create an existing user
    * url urlBase
    * request { username: 'asd', password: '123' }
    * method post
    * status 200
    * match response.errorMessage == 'This user already exist.'

  Scenario: create a non-existing user
    * def username = java.util.UUID.randomUUID().toString()
    * url urlBase
    * request { username: '#(username)', password: '123' }
    * method post
    * status 200
    * match response contains ''
