Feature: Start script

  Scenario: without any argument
    When I run `build-pp` 
    Then it should pass with:
      """
      Tasks:
      """

  Scenario: with unknown arguments
    When I run `build-pp xyz` 
    Then it should pass with:
      """
      Could not find task "xyz".
      """

