Feature: Default permissions
  This feature creates permissions for actions index, show, create,
  update, destroy for each the resources (models) in parent application.

  Background:
    When I generate a new rails application
    And I run `bundle exec rails g voltex:install`
    And I run `bundle exec rails g voltex:resources`
    And I run `bundle exec rake db:migrate`

  Scenario: Creates default permissions
    Given I generate models "Post Comment Product"
    When I run `bundle exec rake voltex`
    Then I have "index show create update destroy" permissions for "Post Comment Product"
