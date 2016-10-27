Feature: Merge Articles
  As a blog administrator
  In order to merge similar articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up

    And the following users exist:
      | login  | password  | email   | name   | state  | profile_id |
      | admin | password1 | a@me.com | admin1 | active | 1          |
      | user1 | password2 | b@me.com | user1  | active | 2          |
      | user2 | password3 | c@me.com | user2  | active | 3          |

    And the following articles exist
      | id |   type  |  title    | body         | allow_comments | published_at        |
      | 2  | Article | Article1  | ArticleBody1 | true           | 2007-01-26 15:21:00 |
      | 3  | Article | Article2  | ArticleBody2 | true           | 2004-09-19 15:21:00 |
      | 4  | Article | Article3  | ArticleBody3 | true           | 2016-02-21 15:21:00 |

  Scenario: Successfully merge articles
    Given I am logged into the admin panel
    And I follow "Articles"
    And I follow "Article1"
    Then I should see "Merge Articles"

    When I fill in "Article ID" with "3"
    And I press "Merge"
    Then I should see "ArticleBody1\nArticleBody2"
