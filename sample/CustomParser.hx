/**
	A custom parser is allowed to interpret CSS values.
	It is used both at compile-time to check static attributes and at runtime to parse CSS stylesheet values
**/
class CustomParser extends uikit.CssValue.ValueParser {

	public function parseColorAlpha( css : uikit.CssValue ) {
		return switch( css ) {
		case VGroup([color,alpha]): { color : parseColor(color), alpha : parseFloat(alpha) };
		default: invalidProp("Invalid color/alpha value");
		}
	}

}