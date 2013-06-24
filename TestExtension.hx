package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end


class TestExtension {


	private static var testextension_sample_method = Lib.load ("testextension", "testextension_sample_method", 1);

    public static function sampleMethod (inputValue:Int):Int {
		return testextension_sample_method(inputValue);
    }

    private static var testextension_tweet = Lib.load("testextension", "testextension_tweet", 1);

    public static function tweet(message:String) : Bool {
        return testextension_tweet(message);
    }

}