#import <Foundation/Foundation.h>
#import <Twitter/Twitter.h>

namespace testextension {
    bool Tweet(const char* message){
        // Sorry about this Objective-C block,
        // A quick and dirty dump of another project,
        // We should check that Twitter can be used but
        // that's another problem you will have to solve alone :)
        NSString* str = [[NSString alloc] initWithUTF8String:message];
        TWTweetComposeViewController* tweetView = [[TWTweetComposeViewController alloc] init];
        [tweetView setInitialText:str];
        TWTweetComposeViewControllerCompletionHandler completionHandler =
            ^(TWTweetComposeViewControllerResult result) {
            [[[[UIApplication sharedApplication] keyWindow] rootViewController] dismissModalViewControllerAnimated:YES];
        };
        [tweetView setCompletionHandler:completionHandler];
        [[[[UIApplication sharedApplication] keyWindow] rootViewController]  presentModalViewController:tweetView animated:YES];
        return true;
    }
}
