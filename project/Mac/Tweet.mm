#import <Foundation/Foundation.h>
//#import <Twitter/Twitter.h>

namespace testextension {
      bool Tweet(const char* message){
          /*
           NSString* str = [[NSString alloc] initWithUTF8String:message];
           TWTweetComposeViewController* tweetView = [[TWTweetComposeViewController alloc] init];
           [tweetView setInitialText:str];
           TWTweetComposeViewControllerCompletionHandler completionHandler =
               ^(TWTweetComposeViewControllerResult result) {
                   [[[[UIApplication sharedApplication] keyWindow] rootViewController] dismissModalViewControllerAnimated:YES];
               };
           [tweetView setCompletionHandler:completionHandler];
           [[[[UIApplication sharedApplication] keyWindow] rootViewController]  presentModalViewController:tweetView animated:YES];
          */
          return false;
      }
}
