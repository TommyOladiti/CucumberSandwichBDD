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
    Then the next number should be 8
    
  Scenario: Sequence is initialized and next is called and then next number is checked
    Given a fibonacci sequence initialized to 2
    When next is called 3 times
    Then the next number should be 13
  
  Scenario: Sequence is initialized and skipped several times then next number is checked
    Given a fibonacci sequence initialized to 3
    When the sequence is skipped 3 times
    And the sequence is skipped 4 times
    Then the next number should be 89

  Scenario: Initialized with a large legitimate fibonacci number
    Given a fibonacci sequence initialized to 137347080577163115432025771710279131845700275212767467264610201
    Then the next number should be 222232244629420445529739893461909967206666939096499764990979600
    
