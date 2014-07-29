//
//  ThirdViewController.h
//  Ryan
//
//  Created by William Lutz on 7/15/14.
//  Copyright (c) 2014 SitWith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController<UIPickerViewDelegate>
@property (strong, nonatomic) UIButton *restaurant1;
@property (strong, nonatomic) UIButton *restaurant2;
@property (strong,nonatomic) UIButton *restaurant3;
@property (strong,nonatomic) UILabel *choose;
@property (strong,nonatomic) UIDatePicker *dateAndTime;
@property (strong,nonatomic) UIAlertView *badTime;
@end

