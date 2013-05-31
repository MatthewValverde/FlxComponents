package flx.text;

import flash.text.Font;

@:font("KatamotzIkasi.ttf") class DefaultFont extends Font { }

@:font("OpensansBold.TTF") class OpenSansBoldFont extends Font { }

@:font("OPENSANS-REGULAR.TTF") class OpenSansFont extends Font { }

/**
 * ...
 * @author Matthew C. Valverde
 */
class Fonts
{
	public static function register():Void
	{
		Font.registerFont(DefaultFont);
		Font.registerFont(OpenSansFont);
		Font.registerFont(OpenSansBoldFont);
	}	
}