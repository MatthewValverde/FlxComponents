package flx.util;

/**
 * ...
 * @author Matthew C. Valverde
 */

class AddProperties
{
	public static function to(displayObject:Dynamic, propertyObject:Dynamic):Void
	{
		var fields = Reflect.fields(propertyObject);
			
		for (propertyName in fields) 
		{
			if (propertyName == "viewer") 
			{
				continue; 
			}
			
			Reflect.setProperty(displayObject, propertyName, Reflect.getProperty(propertyObject, propertyName)); 		
		}
	}
}