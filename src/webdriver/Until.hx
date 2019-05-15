package webdriver;

@:jsRequire('selenium-webdriver', 'until')
extern class Until {
	static function titleIs(title:String):Condition<Bool>;
	static function titleContains(title:String):Condition<Bool>;
	static function titleMatches(regex:EReg):Condition<Bool>;
	static function urlIs(title:String):Condition<Bool>;
	static function urlContains(title:String):Condition<Bool>;
	static function urlMatches(regex:EReg):Condition<Bool>;
	static function elementLocated(locator:Locator):Condition<WebElement>;
	static function elementsLocated(locator:Locator):Condition<Array<WebElement>>;
	
}