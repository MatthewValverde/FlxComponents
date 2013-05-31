package flx.component;

import flx.core.FlxComponent;
import flash.display.Sprite;

/**
 * ...
 * @author Matthew C. Valverde
 */
class FlxButton extends FlxComponent
{	
	public function new(?object:Dynamic) 
	{
		super(object);
	}
		
	override public function updateUI():Void 
	{
		this.graphics.clear();
		this.graphics.beginFill(color);
		this.graphics.drawRect(0, 0, width, height);
		this.graphics.endFill();
	}
		
}