Feature: Happy Flow
  Is there a happy flow on cs.uu.nl/education?

  Scenario Outline: Can i navigate from the homepage to the 'Studentensite' directly?
    Given I am on "Homepage"
    When I click on link <link>
    Then The page title should start with <title>

		Examples:
			| link | title |
			| "Informatica" | "Informatica" |
			| "Informatiekunde" | "Informatiekunde" |
			| "Kunstmatige intelligentie" | "Kunstmatige intelligentie" |
			| "A-Eskwadraat" | "A-Eskwadraat" |
			| "Applied games" | "Applied games" |
			| "Artifical&nbsp;Intelligence" | "Artifical&nbsp;Intelligence" |
