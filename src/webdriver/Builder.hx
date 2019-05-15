package webdriver;

@:jsRequire('selenium-webdriver', 'Builder')
extern class Builder {
	function new();
	function withCapabilities(o:Capabilities):Builder;
	function build():WebDriver;
}