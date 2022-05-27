package;

import flixel.FlxG;

class Options
{
	public static var masterVolume:Float = 1;
}

class AndroidControls extends Option
{
	public function new()
	{
		super();
	}

	public override function press():Bool
	{
		trace("switch");
		FlxG.switchState(new android.AndroidControlsMenu());
		return false;
	}

	private override function updateDisplay():String
	{
		return "Android Controls";
	}
}