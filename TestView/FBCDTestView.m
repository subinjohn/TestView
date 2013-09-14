//
//  FBCDTestView.m
//  TestView
//
//  Created by Kamal, Chinmaya (ETW) on 7/29/13.
//  Copyright (c) 2013 Kamal, Chinmaya (ETW). All rights reserved.
//

#import "FBCDTestView.h"

@implementation FBCDTestView

-(id) init{
    self = [super init];

    UILabel *descriptionLabel;
    UILabel *employeeNumberLabel;
    UIImageView *bgView;
    
    if (self) {
//        bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sticky-price-bg.png"]];
//        bgView.contentMode = UIViewContentModeScaleAspectFill;
//        [bgView setTranslatesAutoresizingMaskIntoConstraints:NO];
//        [self addSubview:bgView];
        
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"sticky-price-bg.png"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
        
        descriptionLabel = [[UILabel alloc]init];
        [descriptionLabel setTextAlignment:NSTextAlignmentLeft];
        [descriptionLabel setTextColor:[UIColor grayColor]];
        [descriptionLabel setText:@"EMPLOYEE/PASS # "];
        [descriptionLabel setBackgroundColor:[UIColor purpleColor]];
        [self addSubview:descriptionLabel];
        
        [descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        employeeNumberLabel = [[UILabel alloc]init];
        [employeeNumberLabel setTextColor:[UIColor whiteColor]];
        [employeeNumberLabel setText:@"ABCDEFGHI"];
        [employeeNumberLabel setBackgroundColor:[UIColor greenColor]];
        [self addSubview:employeeNumberLabel];
        
        [employeeNumberLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        
//        [self addConstraints:[NSLayoutConstraint
//                              constraintsWithVisualFormat:@"V:|[bgView]|"
//                              options:NSLayoutFormatDirectionLeadingToTrailing
//                              metrics:nil
//                              views:NSDictionaryOfVariableBindings(bgView)]];
        
        [self addConstraints:[NSLayoutConstraint
                                   constraintsWithVisualFormat:@"V:|[descriptionLabel(==20)]"
                                   options:NSLayoutFormatDirectionLeadingToTrailing
                                   metrics:nil
                                   views:NSDictionaryOfVariableBindings(descriptionLabel)]];
        
        [self addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"V:|[employeeNumberLabel(==20)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(employeeNumberLabel)]];

//        [self addConstraints:[NSLayoutConstraint
//                              constraintsWithVisualFormat:@"H:|[bgView]|"
//                              options:NSLayoutFormatDirectionLeadingToTrailing
//                              metrics:nil
//                              views:NSDictionaryOfVariableBindings(bgView)]];
        
        [self addConstraints:[NSLayoutConstraint
                                   constraintsWithVisualFormat:@"H:|-[descriptionLabel(==200)][employeeNumberLabel(==70)]-|"
                                   options:NSLayoutFormatDirectionLeadingToTrailing
                                   metrics:nil
                                   views:NSDictionaryOfVariableBindings(descriptionLabel,employeeNumberLabel)]];
    }
    return self;
}
@end
