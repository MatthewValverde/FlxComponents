package flx.core;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;

/**
 * ...
 * @author Matthew C. Valverde
 * avaiable fonts
 *  - Katamotz Ikasi
 *  - Open Sans
 *  - Open Sans Bold
 */
class FlxCore extends Sprite
{
	private var _width:Float = 0;
	private var _height:Float = 0;
	
	public function new() 
	{
		super();
		
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		
		addedToStage();
		createUI();
		updateUI();
		
		
	}	
	
	/**
	 * addedToStage
	 */
	public function addedToStage():Void { }
	
	/**
	 * createUI
	 */
	public function createUI():Void{}
	
	/**
	 * updateUI
	 */
	public function updateUI():Void { }
	
	
	
	/**
	 * override function set_width - override function set_height
	 */
	#if cpp
		override function set_width(value:Float):Float 
		{
			_width = value;
			updateUI();
			return value;
		}
		override function get_width():Float 
		{
			return _width;
		}
		
		override function set_height(value:Float):Float 
		{
			_height = value;
			updateUI();
			return value;
		}
		override function get_height():Float 
		{
			return _height;
		}
	#else
		@:getter(width)
		public function getWidth():Float
		{
			return _width;
		}
		@:setter(width)
		public function setWidth(value:Float):Void
		{
			//trace(width);
			_width = value;
			updateUI();
		}
		
		@:getter(height)
		public function getHeight():Float
		{
			return _height;
		}
		@:setter(height)
		 public function setHeight(value:Float):Void
		{
			_height = value;
			updateUI();
		}
	#end
}