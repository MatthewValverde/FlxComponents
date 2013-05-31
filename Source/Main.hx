package;

import flash.display.BitmapData;
import flash.events.MouseEvent;
import flx.component.FlxBitmap;
import flx.core.FlxComponent;
//import flx.component.FlxText;
import flx.display.FlxViewer;
import flx.component.FlxGraphic;
import flx.component.FlxContainer;
import flx.interfaces.IFlxComponent;

@:bitmap("nme.png") class Image extends BitmapData {}
 
class Main extends FlxViewer 
{
	public function new () 
	{	
		super();
	}
	
	override public function createUI():Void 
	{		
		var container:FlxContainer = new FlxContainer( { widthByPercent:100, heightByPercent:100, horizontalCenter:0, verticalCenter:0 } );
		
		var graphic:FlxGraphic = new FlxGraphic( { id:"graphic", viewer:container, color:Math.random() * 0xffffff, widthByPercent:90, heightByPercent:90, horizontalCenter:0, verticalCenter:0, click:clickHandler} );
		
		//new FlxGraphic( { viewer:container, color:Math.random() * 0xffffff, widthByPercent:45, heightByPercent:45, click:clickHandler, id:"RASTA" } );
		
		//new FlxGraphic( { viewer:container, color:0x222222, widthByPercent:90, heightByPercent:90, horizontalCenter:0, verticalCenter:0 } );
		
		//new FlxBitmap( { viewer:container, source : new Image (0, 0), width:200, height:200, x:100, y:100 } );
		
		
		
		/*
		var text:FlxText = new FlxText( { text:"hello world", size:27, color:0x000000, width:200, x:20, y:20, fontName:"Katamotz Ikasi" } );
		
		var text:FlxText = new FlxText( { text:"Rastafari", size:27, color:0xcccccc, width:200, x:160, y:20, fontName:"Open Sans" } );
		*/
		
	}
	
	private function clickHandler(event:MouseEvent):Void
	{
		var comp:FlxComponent = cast event.target;
		comp.color = cast (Math.random() * 0xffffff);
	}
}