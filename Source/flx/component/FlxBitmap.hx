package flx.component;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flx.util.AddProperties;
import flx.util.AddChild;

/**
 * ...
 * @author Matthew C. Valverde
 */
class FlxBitmap extends Bitmap
{
	public var source:BitmapData;
	
	public function new(object:Dynamic = null) 
	{
		var imageData:BitmapData = null;
		
		if (object.source != null )
		{
			imageData = object.source;  
		}
		
		super(imageData);
		
		AddProperties.to(this, object);
		
		AddChild.to(this, object);
	}
}