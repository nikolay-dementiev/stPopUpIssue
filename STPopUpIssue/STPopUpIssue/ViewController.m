//
//  ViewController.m
//  STPopUpIssue
//
//  Created by Dementiev Nikolay on 17.05.2018.
//  Copyright © 2018 Dementiev Nikolay. All rights reserved.
//

#import "ViewController.h"
#import <STPopup/STPopup.h>
#import "ViewControllerPopUp1.h"


@interface ViewController ()

@property (nonatomic, weak) STPopupController *_popupController;
- (IBAction)showPopUpVcPressed:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupSTPopupNavigationBarSettings];
}

- (void)setupSTPopupNavigationBarSettings {
    [STPopupNavigationBar appearance].barTintColor = [UIColor orangeColor];
    [STPopupNavigationBar appearance].backgroundColor = [UIColor whiteColor];
    [STPopupNavigationBar appearance].tintColor = [UIColor whiteColor];
    [STPopupNavigationBar appearance].barStyle = UIBarStyleDefault;
    [STPopupNavigationBar appearance].titleTextAttributes = @{ NSFontAttributeName: [UIFont systemFontOfSize:14],NSForegroundColorAttributeName: [UIColor blackColor] };
    
    [[UIBarButtonItem appearanceWhenContainedIn:[STPopupNavigationBar class], nil] setTitleTextAttributes:@{ NSFontAttributeName:[UIFont systemFontOfSize:14], NSForegroundColorAttributeName: [UIColor redColor] } forState:UIControlStateNormal];
    
}

- (__kindof UIViewController *)inistantiatePopUpVC:(NSString *)vcName {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:vcName];
}

- (void)presentPopUpVC:(ViewController *)wself rootVC:(UIViewController *)rootVC {
    
    
    STPopupController *vc = [[STPopupController alloc] initWithRootViewController: rootVC];
    
    wself._popupController = vc;
    wself._popupController.style = STPopupStyleBottomSheet;
    wself._popupController.containerView.layer.cornerRadius = 2;
    [wself._popupController.backgroundView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:wself action:@selector(backgroundViewDidTap)]];
    
    [wself._popupController presentInViewController:wself];
}

- (void)backgroundViewDidTap {
    [self._popupController dismiss];
}

- (void)pressHandlerForButton {
    
    ViewControllerPopUp1 *rootView = [self inistantiatePopUpVC:@"ViewControllerPopUp1"];
    [self presentPopUpVC:self rootVC:rootView];
}

- (IBAction)showPopUpVcPressed:(UIButton *)sender {
    
    [self pressHandlerForButton];
}
@end
