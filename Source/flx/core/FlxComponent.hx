package flx.core;

import flx.core.FlxCore;
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flx.util.AddProperties;
import flx.util.AddChild;
import flx.display.FlxViewer;
import flx.interfaces.IFlxComponent;
import flx.util.UpdateChildrenProperties;
import flash.events.MouseEvent;

/**
 * ...
 * @author Matthew C. Valverde
 */

class FlxComponent extends FlxCore implements IFlxComponent
{
	private var _propertyObject:Dynamic;
	private var _heightByPercent:Float;
	private var _widthByPercent:Float;
	private var _top:Float;
	private var _bottom:Float;
	private var _left:Float;
	private var _right:Float;
	private var _horizontalCenter:Float;
	private var _verticalCenter:Float;
	private var _id:String;
	private var _index:Int;
	private var _viewer:Dynamic;
	private var _click:Dynamic;
	private var _color:UInt = 0x000000;
		
	public function new(object:Dynamic = null) 
	{
		super();
		
		propertyObject = object;
		
		if ( propertyObject != null && propertyObject.viewer != null )
		{
			viewer = propertyObject.viewer;
		}
		else
		{
			if (FlxViewer.mainViewer != null) 
			{
				viewer = FlxViewer.mainViewer;
			}
		}	
		
		if (viewer == null) return;
		
		viewer.addChild(this);
	}
		
	public function updateProperties():Void
	{
		AddProperties.to(this, propertyObject);
		AddProperties.to(this, propertyObject);
		
		UpdateChildrenProperties.of(this);
		//trace(width);
	}
	
	override public function addedToStage():Void 
	{
		if (viewer == null)
		{
			viewer = parent;
		}
		
		updateProperties();
	}
				
	/**
	 * widthByPercent
	 */
	public var widthByPercent(get_widthByPercent, set_widthByPercent):Float;
	private function get_widthByPercent():Float {return _widthByPercent;}
	private function set_widthByPercent(value:Float):Float 
	{	
		_widthByPercent = value;
		if (viewer != null)
		{
			width = viewer.width * (_widthByPercent / 100);
		}
				
		return _widthByPercent;
	}
	
	/**
	 * heightByPercent
	 */
	public var heightByPercent(get_heightByPercent, set_heightByPercent):Float;
	private function get_heightByPercent():Float {return _heightByPercent;}
	private function set_heightByPercent(value:Float):Float 
	{
		_heightByPercent = value;
		if (viewer != null)
		{
			height = viewer.height * (_heightByPercent / 100);
		}
		return _heightByPercent;
	}
	
	/**
	 * top
	 */
	public var top(get_top, set_top):Float;
	private function get_top():Float {return _top;}
	private function set_top(value:Float):Float 
	{
		return _top = value;
	}
	
	/**
	 * bottom
	 */
	public var bottom(get_bottom, set_bottom):Float;
	private function get_bottom():Float {return _bottom;}
	private function set_bottom(value:Float):Float 
	{
		return _bottom = value;
	}
	
	/**
	 * left
	 */
	public var left(get_left, set_left):Float;
	private function get_left():Float {return _left;}
	private function set_left(value:Float):Float 
	{
		return _left = value;
	}
	
	/**
	 * right
	 */
	public var right(get_right, set_right):Float;
	private function get_right():Float {return _right;}
	private function set_right(value:Float):Float 
	{
		return _right = value;
	}
	
	/**
	 * horizontalCenter
	 */
	public var horizontalCenter(get_horizontalCenter, set_horizontalCenter):Float;
	private function get_horizontalCenter():Float {return _horizontalCenter;}
	private function set_horizontalCenter(value:Float):Float 
	{
		if (viewer != null)
		{
			x = ((viewer.width - width) / 2) + value;
		}
		return _horizontalCenter = value;
	}
	
	/**
	 * verticalCenter
	 */
	public var verticalCenter(get_verticalCenter, set_verticalCenter):Float;
	private function get_verticalCenter():Float {return _verticalCenter;}
	private function set_verticalCenter(value:Float):Float 
	{
		if (viewer != null)
		{
			y = ((viewer.height - height) / 2) + value;
		}
		return _verticalCenter = value;
	}
	
	/**
	 * id
	 */
	public var id(get, set):String;
	private function get_id():String {return _id;}
	private function set_id(value:String):String 
	{
		return _id = value;
	}
	
	/**
	 * index
	 */
	public var index(get_index, set_index):Int;
	private function get_index():Int {return _index;}
	private function set_index(value:Int):Int 
	{
		return _index = value;
	}
	
	/**
	 * viewer
	 */
	public var viewer(get_viewer, set_viewer):Dynamic;
	
	private function get_viewer():Dynamic { return _viewer; }
	private function set_viewer(value:Dynamic):Dynamic 
	{
		return _viewer = value;
	}
	
	private function get_click():Dynamic 
	{
		return _click;
	}
	
	private function set_click(value:Dynamic):Dynamic 
	{
		//trace(value);
		if (!hasEventListener(MouseEvent.CLICK))
		{
			addEventListener(MouseEvent.CLICK, value);
		}
		//value();
		return _click = value;
	}
	
	public var click(get_click, set_click):Dynamic;
	
	private function get_propertyObject():Dynamic 
	{
		return _propertyObject;
	}
	
	private function set_propertyObject(value:Dynamic):Dynamic 
	{
		return _propertyObject = value;
	}
	
	public var propertyObject(get_propertyObject, set_propertyObject):Dynamic;
	
	private function get_color():UInt 
	{
		return _color;
	}
	
	private function set_color(value:UInt):UInt 
	{
		_color = value;
		updateUI();
		return value;
	}
	
	public var color(get_color, set_color):UInt;
	
	
}