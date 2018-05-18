//
//  ViewControllerPopUp1.m
//  STPopUpIssue
//
//  Created by Dementiev Nikolay on 17.05.2018.
//  Copyright © 2018 Dementiev Nikolay. All rights reserved.
//

#import "ViewControllerPopUp1.h"
#import "TitleLabelSTPopUp.h"

@interface ViewControllerPopUp1 ()

@end

@implementation ViewControllerPopUp1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    return self;
}

- (instancetype)init
{
    if (self = [super init]) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
//    self.title = @"View Controller 1";
    [self.navigationItem setTitleView:[[TitleLabelSTPopUp alloc] initWithText:@"View Controller 1"]];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(nextBtnDidTap)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(cancelBtnDidTap)];
    
    CGSize mainWindowSize = [UIScreen mainScreen].bounds.size;
    CGFloat width = mainWindowSize.width;
    CGFloat height = 300;
    self.contentSizeInPopup = CGSizeMake(width, height);
    self.landscapeContentSizeInPopup = CGSizeMake(height, width);
}

- (void)nextBtnDidTap {
    [self performSegueWithIdentifier:@"showPopUpVC2" sender:self];
}

- (void)cancelBtnDidTap {
    
    [[self popupController] dismiss];
}


@end
