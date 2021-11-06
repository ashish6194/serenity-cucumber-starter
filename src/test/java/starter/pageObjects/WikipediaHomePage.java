package starter.pageObjects;

import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.annotations.DefaultUrl;

@DefaultUrl("https://wikipedia.org")
public class WikipediaHomePage extends PageObject {

     @FindBy (css = "#searchInput")
    public WebElementFacade searchField;

     public void searchTerm (String term) {

     }

}
