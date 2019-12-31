package;

import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxSprite;

class Player extends FlxSprite {

    private var _speed:Float = 80;
    private var _maxSpeed:Float = 1000;
    private var _maxJump:Float = 1000;

    public function new (?X:Float=0, ?Y:Float=0) {
        super(X, Y);

            this.loadGraphic("assets/images/spriteSheet_dbl.png", true, 96, 98);
            //this.setGraphicSize(96, 98);
            this.animation.add("idle", [0, 1,], 3, true);
            this.animation.play("idle");
            this.drag.x = 2200; // Décceleration
            //makeGraphic(48, 49, FlxColor.RED);
    }

    function move():Void {

            var _jump:Bool = false;
            var _right:Bool = false;
            var _left:Bool = false;
            var _isJump:Bool = false;
            
            _jump = FlxG.keys.justPressed.SPACE;
            _right = FlxG.keys.anyPressed([RIGHT, D]);
            _left = FlxG.keys.anyPressed([LEFT, Q]);
        
            if(_left && _right) {
                _left = _right =false; 
            }
        // Jump
        if(_jump) {this.velocity.y -= _maxJump;}
        // Left && Right
        else if (_left) {velocity.x -= _speed; this.flipX=false;}
        else if (_right) {velocity.x += _speed; this.flipX=true;}
        if (this.x >= FlxG.width) this.x = 0;
        else if (this.x <= 0) this.x = FlxG.width;
    }
    private function gravity(){
        this.acceleration.y += 5;
    }
    override public function update(elapsed:Float):Void {
        if(Math.abs(velocity.x) <= _maxSpeed)
        {
            move();
        }
        gravity();
        super.update(elapsed);
    }
}