//
//  ViewControllerPopUp2.m
//  STPopUpIssue
//
//  Created by Dementiev Nikolay on 17.05.2018.
//  Copyright © 2018 Dementiev Nikolay. All rights reserved.
//

#import "ViewControllerPopUp2.h"
#import "TitleLabelSTPopUp.h"

@interface ViewControllerPopUp2 ()

@end

@implementation ViewControllerPopUp2

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
//    self.title = @"View Controller 2";
    [self.navigationItem setTitleView:[[TitleLabelSTPopUp alloc] initWithText:@"View Controller 2"]];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backBtnDidTap)];
    
    CGSize mainWindowSize = [UIScreen mainScreen].bounds.size;
    CGFloat width = mainWindowSize.width;
    CGFloat height = 300;
    self.contentSizeInPopup = CGSizeMake(width, height);
    self.landscapeContentSizeInPopup = CGSizeMake(height, width);
}

- (void)backBtnDidTap {
    [self.popupController popViewControllerAnimated:YES];
}

@end
