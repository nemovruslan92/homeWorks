//
//  AppDelegate.m
//  Month
//
//  Created by Admin on 26.10.14.
//  Copyright (c) 2014 Ruslan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    int rand = arc4random_uniform(2)+1;
    
    enum Months {January, February, March, April, May, June, July, August, September, October, November, December};
    
    if (rand == 1)
    {
        for (int i = 0; i<=11; i++)
        {
            switch (i)
            {
                case January :
                    NSLog(@"January");
                    break;
                case February :
                    NSLog(@"February");
                    break;
                case March :
                    NSLog(@"March");
                    break;
                case April :
                    NSLog(@"April");
                    break;
                case May :
                    NSLog(@"May");
                    break;
                case June :
                    NSLog(@"June");
                    break;
                case July :
                    NSLog(@"July");
                    break;
                case August :
                    NSLog(@"August");
                    break;
                case September :
                    NSLog(@"September");
                    break;
                case October :
                    NSLog(@"October");
                    break;
                case November :
                    NSLog(@"November");
                    break;
                case December :
                    NSLog(@"December");
                    break;
            }
        }
    }
    else
    {
        for (int i = 1; i<=12; i++)
        {
            if (i == 1) {
                NSLog(@"January");
            }
            else if ( i == 2 ) {
                NSLog(@"February");
            }
            else if ( i == 3 ) {
                NSLog(@"March");
            }
            else if ( i == 4 ) {
                NSLog(@"April");
            }
            else if ( i == 5 ) {
                NSLog(@"May");
            }
            else if ( i == 6 ) {
                NSLog(@"June");
            }
            else if ( i == 7 ) {
                NSLog(@"July");
            }
            else if ( i == 8 ) {
                NSLog(@"August");
            }
            else if ( i == 9 ) {
                NSLog(@"September");
            }
            else if ( i == 10 ) {
                NSLog(@"October");
            }
            else if ( i == 11 ) {
                NSLog(@"November");
            }
            else if ( i == 12 ) {
                NSLog(@"December");
            }
        }
    }    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
