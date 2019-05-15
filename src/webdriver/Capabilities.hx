package webdriver;

@:jsRequire('selenium-webdriver', 'Capabilities')
extern class Capabilities {
	static function chrome():Capabilities;
	function set(name:String, opt:Dynamic):Void;
}