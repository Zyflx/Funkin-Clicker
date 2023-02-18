package;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.ui.FlxButton;
import flixel.FlxG;

class TitleScreen extends FlxState
{
    var logo:FlxSprite;
    var playButton:FlxButton;
    var optionsButton:FlxButton;
    
    override public function create()
    {
        super.create();
        
        logo = new FlxSprite(0, -350).loadGraphic(FunkPaths.grabImage('logo'));
        logo.scale.set(0.35, 0.35);
        logo.screenCenter(X);
        add(logo);

        playButton = new FlxButton(0, FlxG.height / 2 + 50, 'Play', function() {
            swapState(new PlayState());
        });
        playButton.scale.set(2, 2);
        playButton.screenCenter(X);
        add(playButton);

        optionsButton = new FlxButton(0, playButton.y + 70, 'Options', function() {
            swapState(new OptionsState());
        });
        optionsButton.scale.set(2, 2);
        optionsButton.screenCenter(X);
        add(optionsButton);
    }
    
    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
    
    function swapState(state:FlxState)
    {
        FlxG.switchState(state);
    }
}
