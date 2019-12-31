package;

import flixel.addons.display.FlxBackdrop;
import flixel.FlxSprite;

class Background extends FlxSprite {

   var speed:Float = 3;
   var bg:FlxBackdrop = new FlxBackdrop("assets/images/mil.jpg");

   private function move() {
      //bg.x -= speed;
      bg.draw();
   }
   override public function draw():Void {
      move();
   }
}