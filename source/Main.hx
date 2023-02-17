package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	var gameWidth:Int = 1280; // Game Width in pixels
	var gameHeight:Int = 720; // Game Height in pixels
	var framerate:Int = 60; // Game framerate
	var initialState:Class<FlxState> = TitleScreen; // Initial State of the game
	var skipSplashScreen:Bool = false; // Toggle to true if you want to skip the flixel splash screen
	var startFullScreen:Bool = false; // Toggle to true if you want to start the game in fullscreen

	public function new()
	{
		super();
		addChild(new FlxGame(gameWidth, gameHeight, initialState, framerate, framerate, skipSplashScreen, startFullScreen));
	}
}
