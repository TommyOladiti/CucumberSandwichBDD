Feature: Fibonacci number sequences

  Scenario: Default sequence initiated
    When a fibonacci sequence is started
    Then the next number should be 1

  Scenario: Initialized with a legitimate fibonacci number
    Given a fibonacci sequence initialized to 8
    Then the next number should be 13
    
  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the state should be "The current number is 8"
    And the next number should be 13

  # Scenario: Sequence is initialized and then current number is checked
  #   Given a fibonacci sequence initialized to 21
  #   Then the current number should be 21

  Scenario: Sequence is initialized and skipped then next number is checked
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the next number should be 13
    
  Scenario: Sequence is initialized and next is called and then next number is checked
    Given a fibonacci sequence initialized to 3
    When next is called 3 times
    Then the next number should be 21
  
  Scenario: Sequence is initialized and skipped several times then next number is checked
    Given a fibonacci sequence initialized to 3
    When the sequence is skipped 3 times
    And the sequence is skipped 4 times
    Then the next number should be 144

  Scenario: Initialized with a large legitimate fibonacci number
    Given a fibonacci sequence initialized to 7778742049
    Then the next number should be 12586269025
    
