class Main {
    public static function main(){
        var t = new flash.text.TextField();
        t.text = Std.string(TestExtension.sampleMethod(16));
        flash.Lib.current.addChild(t);

        TestExtension.tweet("This is my tweet message");

        #if android
        // This is the java call
        t.text += "\n" + TestExtension.doSomething("This is blah");
        #end

        trace(t.text);
    }
}
