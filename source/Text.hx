package;
 import flixel.text.FlxText;
class Text {

    public function write():FlxText {
        var text = new FlxText(10, 10, 150, "Hello Flixel");
        return text;
        
    }
}