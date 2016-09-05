Feature: List articles on landing pages
  As a visitor
  when I visit the application's landing page
  I would like to see a list of articles

Scenario: Viewing list of articles on application's landing pages
  Given I am on the landing pages
  Then I should see "A breaking news item"
  And I should see "Some really breaking action"
  
