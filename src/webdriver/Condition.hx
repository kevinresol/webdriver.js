package webdriver;

import #if haxe4 js.lib.Promise #else js.Promise #end;

@:jsRequire('selenium-webdriver', 'Condition')
extern class Condition<T> {
	function new(message:String, fn:WebDriver->Promise<T>);
}