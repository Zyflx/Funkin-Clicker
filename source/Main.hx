package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	var gameWidth:Int = 1280; // Game Width in pixels
	var gameHeight:Int = 720; // Game Height in pixels
	var framerate:Int = 60; // Game framerate

	public function new()
	{
		super();
		addChild(new FlxGame(gameWidth, gameHeight, PlayState, framerate, framerate, false, false));
	}
}
