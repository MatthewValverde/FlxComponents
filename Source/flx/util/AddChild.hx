package flx.util;

import flx.display.FlxViewer;
import flash.display.Sprite;
import flash.display.DisplayObject;
/**
 * ...
 * @author Matthew C. Valverde
 */
class AddChild
{

	public static function to(displayObject:Dynamic, propertyObject:Dynamic):DisplayObject
	{
		if ( propertyObject != null && propertyObject.viewer != null )
		{
			propertyObject.viewer.addChild(displayObject);
			return propertyObject.viewer;
		}
		else
		{
			if (FlxViewer.mainViewer != null)
			{
				FlxViewer.mainViewer.addChild(displayObject);
				return FlxViewer.mainViewer;
			}
		}	
		
		return null;
	}
}