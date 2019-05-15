package webdriver;

import #if haxe4 js.lib.Promise #else js.Promise #end;
import haxe.extern.EitherType;

@:remove
extern class WindowHandle {}

@:remove
extern interface WebDriver {

  //function setFileDetector(detector:FileDetector):Void;

  //function getSession():Promise<Session>;

  function quit():Promise<Void>;

  //function actions():ActionSequence;
  function executeScript<T>(script:String):Promise<T>;
  
  function sleep(ms:Int):Promise<Void>;
  function getPageSource():Promise<String>;
  function close():Promise<Void>;
  function get(url:String):Promise<Void>;
  function getCurrentUrl():Promise<String>;
  function getTitle():Promise<String>;
  function findElement(locator:Locator):WebElementPromise;
  function isElementPresent(locator:Locator):Promise<Bool>;
  function findElements(locator:Locator):Promise<Array<WebElement>>;
  function takeScreenshot():Promise<String>;
  function switchTo():SwitchTo;
  function getAllWindowHandles():Promise<Array<WindowHandle>>;
  function wait<T>(cond:EitherType<Condition<T>, Thenable<T>>, ?timeout:Int):Promise<T>;
  function getSession():Promise<Session>;

}

@:remove
extern interface SwitchTo {
  function window( win:WindowHandle ):Promise<Void>;
}
