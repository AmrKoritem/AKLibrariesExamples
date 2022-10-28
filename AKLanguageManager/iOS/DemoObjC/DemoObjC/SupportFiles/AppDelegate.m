//
//  AppDelegate.m
//  DemoObjC
//
//  Created by Amr Koritem on 13/10/2022.
//

#import "AppDelegate.h"
@import AKLanguageManager;

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    AKLanguageManager.shared.defaultLanguage = LanguageEn;
    return YES;
}

@end
