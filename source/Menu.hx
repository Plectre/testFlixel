package;

import flixel.FlxG;
import haxe.display.JsonModuleTypes.JsonTypeParameters;
import flixel.FlxState;
import flixel.ui.FlxButton;

class Menu extends FlxState {

    var btn:FlxButton;

    override function create() {
        btn = new FlxButton(50, 50, "Click", mainState);
        btn.setGraphicSize(200, 130);
        btn.screenCenter();
        btn.text = "Reclick";
        add(btn);
        super.create();
    }

    public function mainState():Void {
        FlxG.switchState(new PlayState());
    }
}