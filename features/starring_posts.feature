Feature: Be able to star a post

As a signed-in user I should be able to start a post to show my support

Scenario: As a signed-in user I should be able to star a post
    Given there are two users with posts, Bob and Mary
    And I sign in as Bob
    When I visit the homepage
    And I click "Stars" in Mary's first post
    Then I should have starred the post