package flx.component;

import flx.core.FlxComponent;

/**
 * ...
 * @author Matthew C. Valverde
 */
class FlxContainer extends FlxComponent
{

	private var _children:Array<Dynamic>;
	
	private var _layout:String;
	
	public function new(?object:Dynamic) 
	{
		super(object);
	}
	
	override public function updateUI():Void 
	{
		//trace("--- width : ",width);
	}
	
	private function get_children():Array<Dynamic> 
	{
		return _children;
	}
	
	private function set_children(value:Array<Dynamic>):Array<Dynamic> 
	{
		_children = value;
		trace("cool"+value, children.length);
		return value;
	}
	
	public var children(get_children, set_children):Array<Dynamic>;
	
	private function get_layout():String 
	{
		return _layout;
	}
	
	private function set_layout(value:String):String 
	{
		return _layout = value;
	}
	
	public var layout(get_layout, set_layout):String;
	
}