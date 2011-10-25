Feature: Start script
  Scenario: without any argument
    When I run `build-pp`
    Then it should fail with:
      """
      build-pp [cmd] [opts]
      """
