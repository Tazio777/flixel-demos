package;

import flixel.FlxSprite;
import flixel.util.FlxRandom;

class Glitch extends FlxSprite
{
	public var frame1:Int;
	public var color1:Int;
	public var frame2:Int;
	public var color2:Int;
	public var color3:Int;
	
	public function new()
	{
		super();
		loadGraphic("assets/glitch.png", true, false, 32, 16, true);
	}
	
	override public function reset(X:Float, Y:Float):Void
	{
		super.reset(X,Y);
		
		color1 = Colors.random();
		color2 = Colors.random();
		color3 = Colors.random();
		
		frame1 = Std.int(1 + FlxRandom.float() * 20);
		frame2 = Std.int(1 + FlxRandom.float() * 20);
	}
	
	override public function draw():Void
	{
		color = color2;
		frame = frame1;
		super.draw();
		color = color3;
		frame = frame2;
		super.draw();
	}
}