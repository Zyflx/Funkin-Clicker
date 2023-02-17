package;

import flixel.FlxState;

class TitleScreen extends FlxState
{
    override public function create()
    {
        super.create();
        
        bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.CYAN);
        add(bg);

        titleText = new FlxText(0, FlxG.height / 2 - 100, 0, "Funkin' Clicker", 20);
        titleText.setFormat(FunkPaths.grabFont('vcr.ttf'), 70, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        titleText.borderSize = 1.2;
        titleText.screenCenter(X);
        add(titleText);

        startButton = new FlxSprite(0, titleText.y + 100).loadGraphic(FunkPaths.grabImage('start'));
        startButton.screenCenter(X);
        add(startButton);
    }
    
    override public function update(elapsed:Float)
    {
        super.update(elapsed);
        
         if (FlxG.mouse.overlaps(startButton) && FlxG.mouse.justPressed) {
            FlxG.switchState(new PlayState());
        }
    }
}
