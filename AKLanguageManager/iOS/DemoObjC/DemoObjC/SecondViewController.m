//
//  SecondViewController.m
//  DemoObjC
//
//  Created by Amr Koritem on 13/10/2022.
//

#import "SecondViewController.h"
@import AKLanguageManager;

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation SecondViewController

- (IBAction)changeSegmentImageDirection {
    [_segmentedControl revertImageHorizontalDirectionAt:1];
}

- (IBAction)changeButtonImageDirection:(UIButton *)sender {
    [sender revertImagesHorizontalDirection];
}

@end
