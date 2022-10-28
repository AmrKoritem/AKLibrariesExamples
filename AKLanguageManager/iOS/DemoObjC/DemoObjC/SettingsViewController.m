//
//  SettingsViewController.m
//  DemoObjC
//
//  Created by Amr Koritem on 13/10/2022.
//

#import "SettingsViewController.h"
@import AKLanguageManager;

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *fixedImageView;

@end

@implementation SettingsViewController

// Change Language and set rootViewController to the initial view controller
- (IBAction)changeLanguage {
    // Swap between anglish and arabic languages
    Language newLanguage = AKLanguageManager.shared.selectedLanguage == LanguageEn ? LanguageAr : LanguageEn;
    [AKLanguageManager.shared setLanguageWithLanguage:newLanguage viewControllerFactory:^UIViewController * _Nonnull(NSString * title) {
        // The view controller that you want to show after changing the language
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        return [mainStoryboard instantiateInitialViewController];
    } animation:^(UIView * view) {
        // Do custom animation
        view.alpha = 0;
    } completionHandler:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Make the image direction fixed even when localization direction change
    _fixedImageView.shouldLocalizeDirection = false;
}

@end
