Feature: user login
  Background:
    * def urlBase = 'https://api.demoblaze.com/login'

  Scenario: login with incorrect credentials
    * url urlBase
    * request { username: 'davidreyes', password: '1234' }
    * method post
    * status 200
    * match response.errorMessage == 'Wrong password.'

  Scenario: login with correct credentials
    * url urlBase
    * request { username: 'davidreyes', password: '123' }
    * method post
    * status 200
    * match response contains 'Auth_token:'
