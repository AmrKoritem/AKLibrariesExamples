//
//  FirstViewController.m
//  DemoObjC
//
//  Created by Amr Koritem on 13/10/2022.
//

#import "FirstViewController.h"
@import AKLanguageManager;

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation FirstViewController

- (IBAction)goToSettings {
    UIViewController* settingsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingsViewController"];
    [self.navigationController pushViewController:settingsViewController animated:true];
}

- (IBAction)switchImageDirection {
    [_imageView revertImageHorizontalDirection];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Main".localized;
}


@end
