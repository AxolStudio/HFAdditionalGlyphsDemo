package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.frames.FlxBitmapFont;
import flixel.text.FlxBitmapText;

class PlayState extends FlxState
{
	private var font:FlxBitmapFont;
	private var text:FlxBitmapText;

	override public function create()
	{
		font = FlxBitmapFont.fromAngelCode("assets/images/small_font.png", "assets/images/small_font.xml");
		font.appendFrames(FlxAtlasFrames.fromSparrow("assets/images/glyphs.png", "assets/images/glyphs.xml"));

		text = new FlxBitmapText(5, 5,
			"Hello, World!\n \nPeep your {{eye}}{{eye}} on this!\n \nDo you know how many {{bomb}}s you have left?\n \nThanks for playing! {{heart}}!", font);
		text.autoSize = false;
		text.fieldWidth = FlxG.width - 10;

		text.wordWrap = true;

		add(text);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
