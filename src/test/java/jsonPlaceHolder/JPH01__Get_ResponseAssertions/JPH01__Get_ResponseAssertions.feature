Feature: Get Response Testi

  @api
  Scenario:

    Given url 'https://jsonplaceholder.typicode.com'
    And path "/posts/44"
    When method GET
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match response.userId == 5 
    And assert response.title == 'optio dolor molestias sit'