//
//  TitleLabelSTPopUp.m
//  Eda.ua
//
//  Created by Dementiev Nikolay on 17.05.2018.
//  Copyright © 2018 Dementiev Nikolay. All rights reserved.//

#import "TitleLabelSTPopUp.h"

@implementation TitleLabelSTPopUp

- (CGSize)intrinsicContentSize {
    CGSize sizeForReturn = UILayoutFittingExpandedSize;
    
    return sizeForReturn;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithText:(NSString *)text
{
    self = [super initWithFrame:CGRectMake(0, 0, 150, 30)];
    
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
        label.textAlignment = NSTextAlignmentCenter;
        label.adjustsFontSizeToFitWidth = YES;
        label.minimumScaleFactor = 0.5;
        [label setFont: [UIFont systemFontOfSize:14]];
        [label setBackgroundColor:[UIColor clearColor]];
        [label setTextColor:[UIColor blackColor]];
        [label setText:text];
        
        label.frame = self.bounds;
        
        label.tag = [self labelAddTag];
        
        [self addSubview:label];
    }
    return self;
}

- (NSInteger)labelAddTag {
    return 123451;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    UILabel *labelAdd = [self viewWithTag: [self labelAddTag]];
    if (labelAdd) {
        if (!CGRectEqualToRect(self.frame, labelAdd.frame)) {
            labelAdd.frame = self.bounds;
        }
    }
}


@end

