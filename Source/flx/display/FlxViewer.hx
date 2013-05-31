package flx.display;

import flash.display.Sprite;
import flx.text.Fonts;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.display.StageDisplayState;
import flash.events.Event;
import flx.interfaces.IFlxComponent;
import flx.core.FlxCore;
import flx.util.UpdateChildrenProperties;

/**
 * ...
 * @author Matthew C. Valverde
 * avaiable fonts
 *  - Katamotz Ikasi
 *  - Open Sans
 *  - Open Sans Bold
 */

class FlxViewer extends FlxCore
{
	private static var _mainViewer:Dynamic;
			
	public function new() 
	{
		super();
		
		Fonts.register();
		
		FlxViewer.mainViewer = this;
	}
	
	override public function addedToStage():Void 
	{
		stage.align = StageAlign.TOP_LEFT;
		stage.scaleMode = StageScaleMode.NO_SCALE;
		
		width = stage.stageWidth;
		height = stage.stageHeight;
		
		stage.addEventListener(Event.RESIZE, resizeStageHandler);
	}
	
	public function resizeStageHandler(event:Event):Void
	{
		width = stage.stageWidth;
		height = stage.stageHeight;
		
		UpdateChildrenProperties.of(this);
	}
	
	private static function get_mainViewer():Dynamic 
	{
		return _mainViewer;
	}
	
	private static function set_mainViewer(value:Dynamic):Dynamic 
	{
		return _mainViewer = value;
	}
	
	static public var mainViewer(get_mainViewer, set_mainViewer):Dynamic;
	
}