package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end


class TestExtension {
	
	
	public static function sampleMethod (inputValue:Int):Int {
		
		return testextension_sample_method(inputValue);
		
	}
	
	
	private static var testextension_sample_method = Lib.load ("testextension", "testextension_sample_method", 1);
	
	
}