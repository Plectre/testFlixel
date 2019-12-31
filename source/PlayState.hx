package;

import flixel.group.FlxGroup;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.FlxState;

class PlayState extends FlxState
{
	var player:Player;
	var bg:Background;
	var cam:FlxCamera;
	var platform:Platform;
	var plat:FlxSprite;

	override public function create():Void
	{

		player = new Player(150, 150);
		platform = new Platform(100, 800);
		bg = new Background();
		//cam = new FlxCamera(0, 0, 120, 120, 0);
		plat = platform.createPlatform(0, flixel.FlxG.height-50);
		//cam.target = player;
		//cam.shake(0.09, 0.2);
		
		add(bg);
		add(plat);
		add(player);
		add(cam);

		super.create();
	}

	override public function update(elapsed:Float):Void
	{

		FlxG.collide(player, plat);
		super.update(elapsed);
	}
}
