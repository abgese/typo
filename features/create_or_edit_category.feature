Feature: Write Articles
  As a blog administrator
  In order to be able to group the blog articles logically
  I want to be able to create and edit the categories.

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create a new category
    Given I am on the categories page
    When I fill in "category_name" with "dummy_category"
    And I fill in "category_keywords" with "dummy_keywords"
    And I fill in "category_description" with "dummy_description"
    And I press "Save"
    Then I should see "dummy_category"
    And I should see "dummy_description"
    And I should see "dummy_keywords"

  Scenario: Successfully edit a category
    Given I am on the categories page
    When I fill in "category_name" with "dummy_category"
    And I fill in "category_keywords" with "dummy_keywords"
    And I fill in "category_description" with "placeholder description for testing"
    And I press "Save"
    When I follow "dummy_category"
    When I fill in "category_name" with "dummy_category_edited"
    And I fill in "category_keywords" with "dummy_keywords_edited"
    And I fill in "category_description" with "dummy_description_edited"
    And I press "Save"
    Then I should see "dummy_category_edited"
    And I should see "dummy_description_edited"
    And I should see "dummy_keywords_edited"