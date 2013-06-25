package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end


class TestExtension {

	private static var testextension_sample_method = Lib.load("testextension", "testextension_sample_method", 1);

    public static function sampleMethod(inputValue:Int) : Int {
		return testextension_sample_method(inputValue);
    }

    private static var testextension_tweet = Lib.load("testextension", "testextension_tweet", 1);

    public static function tweet(message:String) : Bool {
        return testextension_tweet(message);
    }

    #if android
    // We cannot use openfl.utils.JNI right now, it would return trash
    private static var testextension_dosomething : Dynamic;

    // Some docs about method signatures and examples
    // http://dev.kanngard.net/Permalinks/ID_20050509144235.html
    // https://communities.ca.com/web/ca-wily-global-user-community/wiki/-/wiki/Main/JNI+Signatures;jsessionid=499BBB87921D31A3E2803B8ED3F2FDCB.usilap723?&#p_36
    //
    // Here String doSomething(String) translates to this
    private static function init(){
        if (testextension_dosomething != null)
            return;
        testextension_dosomething = openfl.utils.JNI.createStaticMethod("testextension.TestExtension", "doSomething", "(Ljava/lang/String;)Ljava/lang/String;");
    }

    public static function doSomething(str:String) : String {
        init();
        return testextension_dosomething(str);
    }
    #end

}