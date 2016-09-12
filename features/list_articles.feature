Feature: List articles on landing pages
  As a visitor
  when I visit the application's landing page
  I would like to see a list of articles

  Background:
    Given the following articles exists
      | title                | content                            |
      | A breaking news item | Some really breaking action        |
      | Learn Rails 5        | Build awesome rails applications   |


  Scenario: Viewing list of articles on application's landing pages
    Given I am on the landing pages
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"

  Scenario: Allows visitor to add comment to article
    Given I am on the landing pages
    And I click on "A breaking news item"
    And I fill in "Comment" with "great article"
    And I fill in "Email" with "thomas@random.com"
    And I click on "Create Comment"
    Then I should see "great article"
    Given I am on the landing pages
    And I click on "Learn Rails 5"
    Then I should not see "great article"
