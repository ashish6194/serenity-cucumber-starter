package starter.stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.core.steps.UIInteractionSteps;
import org.junit.Assert;
import starter.pageObjects.WikipediaHomePage;
import starter.pageObjects.WikipediaArticle;

public class SearchStepDefinitions extends UIInteractionSteps {

    WikipediaHomePage wikipediaHomePage;
    WikipediaArticle wikipediaArticle;

    @Given("I am researching things on the internet")
    public void iAmResearchingThingsOnTheInternet() {
        wikipediaHomePage.open();
    }

    @When("I looks up {string}")
    public void searchesFor(String term) {
        wikipediaHomePage.searchField.waitUntilVisible().typeAndEnter(term);
    }

    @Then("I should see information about {string}")
    public void should_see_information_about(String term) {
        String assertionErrorMessage = String.format("The wiki article is not about %s", term);
        Assert.assertTrue(assertionErrorMessage,wikipediaArticle.articleHeading.getText().contains(term));
    }
}
