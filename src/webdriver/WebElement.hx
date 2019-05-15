package webdriver;

import #if haxe4 js.lib.Promise #else js.Promise #end;
import haxe.extern.Rest;

extern interface WebElement { 
  function getDriver():WebDriver;
  function findElement(locator:Locator):WebElementPromise;

  function isElementPresent(locator:Locator):Promise<Bool>;

  function findElements(locator:Locator):Promise<Array<WebElement>>;
  function click():Promise<Void>;
  function getTagName():Promise<String>;

  function sendKeys(keys:Rest<String>):Promise<Void>;
  function getCssValue(cssStyleProperty:String):Promise<String>;
  function getAttribute(attributeName:String):Promise<String>;

  function getText():Promise<String>;
  function getSize():Promise<{w:Float, h:Float}>;
  function getLocation():Promise<{x:Float, y:Float}>;
  function isEnabled():Promise<Bool>;
  function isSelected():Promise<Bool>;

  function submit():Promise<Void>;
  function clear():Promise<Void>;

  function isDisplayed():Promise<Bool>;
  function getOuterHtml():Promise<String>;

  function getInnerHtml():Promise<String>;
  
  static function equals(a:WebElement, b:WebElement):Promise<Bool>;

}
