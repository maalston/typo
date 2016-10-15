Feature: Create a Category
  As a blog administrator
  In order to add a blogging category
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully edit a category
    Given I am on the admin page
    When I follow "Categories"
    Then I should see "Categories"
    When I fill in "category_name" with "Breaking News"
    And I fill in "category_keywords" with "news"
    And I fill in "category_description" with "breaking news"
    When I press "Save"                                       
    Then I should see "Category was successfully saved."
