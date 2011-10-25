Feature: Generate proxy.pac

  @announce
  Scenario: With no arguments
    When I run `build-pp generate`
    Then it should pass with:
    """
    Generated proxy.pac. Stored at proxy.pac
    """
