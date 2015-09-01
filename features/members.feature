Feature: Member Actions
  To onboard a member, they must provide basic details including
  name, email, skills. A peer from AD can be reccomended for onboarding also.
  Members can have skills retrieved and votes assigned to various skills

  Background:
    Given I am not already onboarded

  Scenario: Onboard new member
    When I create new member with details and attributes
    Then the response should be:
    """
    member: {
      id: 1,
      name: 'Spencer Goh'
      email: 'spencer.goh@credit-suisse.com'
    }
    """

  Scenario: List all members
    When I list all members
    Then the response should be:
    """
    {
      index: [
        {id: 1, name: 'Spencer Goh', email: 'spencer.goh@credit-suisse.com'},
        {id: 2, name: 'John Smith', email: 'nobody@credit-suisse.com'},
        {id: 3, name: 'Someone Else', email: 'someone@credit-suisse.com'}
      ]
    }
    """

