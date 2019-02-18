//
//  ViewController.h
//  complex
//
//  Created by Karishma on 4/23/18.
//  Copyright © 2018 Karishma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *seg1;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIButton *getButton;
@property unsigned long x;
@property unsigned long y;
@property UILabel * sliderLabel;
@property UILabel * segmentLabel;
@property UISegmentedControl * seg2;
@property unsigned long xval;
@property unsigned long yval;


@end

