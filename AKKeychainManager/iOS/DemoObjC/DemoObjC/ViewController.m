//
//  ViewController.m
//  DemoObjC
//
//  Created by Amr Koritem on 13/10/2022.
//

#import "ViewController.h"
@import AKKeychainManager;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *errorLabel;

@end

@implementation ViewController

- (IBAction)save {
    NSError *error = nil;
    NSString *savedData = [AKKeychainManager.shared loadWithService:@"test" account:@"test" error:&error];
    if (error == nil && savedData != nil) {
        [AKKeychainManager.shared updateWithService:@"test" account:@"test" value:_textField.text error:&error];
        [self handleError:error :^{}];
    } else {
        [self saveData];
    }
}

- (IBAction)show {
    NSError *error = nil;
    NSString *savedData = [AKKeychainManager.shared loadWithService:@"test" account:@"test" error:&error];
    [self handleError:error :^{
        self->_label.text = savedData;
    }];
}

- (void)showError:(NSString *)error {
    _errorLabel.text = error;
}

- (void)saveData {
    NSError *error = nil;
    [AKKeychainManager.shared saveWithService:@"test" account:@"test" value:_textField.text error:&error];
    [self handleError:error :^{}];
}

- (void)handleError:(NSError *)error :(void (^)(void))handler {
    if (error == nil) {
        handler();
        [self showError:@""];
    } else {
        [self showError:error.localizedDescription];
    }
}


@end
