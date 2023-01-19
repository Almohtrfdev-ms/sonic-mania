import flixel.FlxSprite;

import flixel.FlxText;

import flixel.system.FlxSound;

class IntroState extends FlxState {

    private var _introImage:FlxSprite;

    private var _introVoice:FlxSound;

    private var _introText:FlxText;

    private var _timer:Float;

    override public function create():Void {

        _introImage = new FlxSprite(0, 0, "assets/image/SEGA-intro.png");

        add(_introImage);

        _introText = new FlxText(0, FlxG.height - 50, FlxG.width, "");

        _introText.setFormat(null, 16, 0xffffff, "center");

        add(_introText);

        

        _introVoice = new FlxSound();

        _introVoice.loadEmbedded("sounds/SEGA-voice.mp3", true);

        _introVoice.play();

        _timer = 0;

    }

    override public function update():Void {

        super.update();

        _timer += FlxG.elapsed;

        if(_timer >= 5){

            _introVoice.stop();

            FlxG.switchState(new MainMenuState());

        }

    }

}

