package;

import flixel.group.FlxGroup;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxSprite;


class Platform extends FlxSprite {
    
    private var group:FlxGroup;
    
    public function new(?X:Float, ?Y:Float) {
        super(X, Y);
    }

    public function createPlatform(x:Float, y:Float):FlxSprite {

        makeGraphic(FlxG.width, 50, FlxColor.GREEN);
        this.x = x;
        this.y = y;
        this.immovable = true;
        return this;
    }
}