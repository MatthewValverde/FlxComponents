package flx.component;

import flash.text.TextField;
import flash.text.TextFormat;
import flx.util.AddProperties;
import flx.util.AddChild;
import flx.interfaces.IFlxComponent;

/**
 * ...
 * @author Matthew C. Valverde
 */
class FlxLabel extends TextField
{
	public var fontName:String = "Open Sans";
	public var size:Int = 12;
	public var color:UInt = 0x000000;
	
	public function new(object:Dynamic = null) 
	{
		super();
						
		AddProperties.to(this, object);
		
		var format = new TextFormat();
		embedFonts = true;
		selectable = false;
				
		format.font = fontName;
		format.size = size;
		format.color = color;
		defaultTextFormat = format;
				
		AddProperties.to(this, object);
		
		AddChild.to(this, object);
	}
}