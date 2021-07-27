Feature: Ask for a Loan

  Scenario: testing the Post call for Loan

    Given url 'http://localhost:8080/loans'
    When request { "bankAccount": { "accountNumber": 1234567890, "bankName": "SCRUM_BANK" }, "idNumber": 9901025391080, "name": "Pontsho", "surname": "Molewa"}
    And method post
    Then status 200
    And print 'Response is: ', response