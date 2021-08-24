Feature: The Internet Guinea Pig Website

  # passing test
  Scenario Outline: As a user, I can log into the secure area: <username>

    Given I am on the login page
    When I login with <username> and <password>
    Then I should see a flash message saying <message>

    Examples:
      | username | password             | message                        |
      | tomsmith | SuperSecretPassword! | You logged into a secure area! |
      | foobar   | barfoo               | Your username is invalid!      |

  # failing test
  Scenario Outline: This test will fail

    Given I am on the login page
    When I login with <username> and <password>
    Then I should see a flash message saying <message>

    Examples:
      | username | password             | message |
      | tomsmith | SuperSecretPassword! | foobar  |

  # broken test
  Scenario: This test is broken

    Given I am on the login page
    When I do a broken step

  # pending test
  Scenario: This test is pending

    Given I have a pending step

  # skipped test
  @skip()
  Scenario: This test should not run but should show in the reporters as "skipped" 

    Given I have a pending step
