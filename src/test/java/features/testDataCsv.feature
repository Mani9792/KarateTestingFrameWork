Feature: scenario outline using a dynamic table
    from a csv file	
    
 @regression
Scenario Outline: page:
    * print page
    * print baseUrl
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    Examples:
    | read('testDataCsv.csv') |     
    
@regression    
Scenario Outline: cat name: <name>
    * print name
    * print age
    * print baseUrl
    Given url 'https://reqres.in/api/users?page=2'
    #And request { name: '#(name)', age: '#(age)' }
    When method GET
    Then status 200
    #And match response == { id: '#number', name: '#(name)' }
    # the single cell can be any valid karate expression
    # and even reference a variable defined in the Background
    Examples:
    | read('kittens.csv') |     
