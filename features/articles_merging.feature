Feature: Merge Articles
  As a blog administrator
  In order to merge similar articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Articles"
    And the following articles exist
      | id  | title     | body         |
      | 2   | Article1  | ArticleBody1 |
      | 3   | Article2  | ArticleBody2 |

  Scenario: Successfully merge articles
    Given I am on the new article page
    When I fill in "article_title" with "Article1"
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should see "ArticleBody1 ArticleBody2"
