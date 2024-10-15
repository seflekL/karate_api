Feature: JPH04 Kullanici Json objesi olan test datalarini feature disinda olustura bilmeli
   Background:
    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def pathParams = '/posts/70'
    * def requestBody = read ("requestBody.json")
    * def expectedResponseBody = read ("expectedResponseBody.json")

  @api4
  Scenario: TC04 disardan Json obje Kullanibilmeli
    Given url  baseUrl
    And path  pathParams
    When request  requestBody
    And method Put
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Connection == 'keep-alive'
    And assert response.id == expectedResponseBody.id
    And assert response.title == expectedResponseBody.title
    And assert response.body == expectedResponseBody.body
    And assert response.userId == expectedResponseBody.userId