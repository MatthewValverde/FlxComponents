package flx.util;
import flash.display.DisplayObjectContainer;
import flx.interfaces.IFlxComponent;

/**
 * ...
 * @author Matthew C. Valverde
 */
class UpdateChildrenProperties
{

	public static function of(displayObject:DisplayObjectContainer):Void
	{
		for (i in 0...displayObject.numChildren) 
		{
			if (Std.is (displayObject.getChildAt(i), IFlxComponent)) 
			{
				var component:IFlxComponent = cast displayObject.getChildAt(i);
				component.updateProperties();
				//trace(component);
			}
		}
	}
	
}