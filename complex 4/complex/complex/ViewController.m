//
//  ViewController.m
//  complex
//
//  Created by Karishma on 4/23/18.
//  Copyright © 2018 Karishma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.seg2=[[UISegmentedControl alloc]init];
    self.seg2.backgroundColor=[UIColor redColor];
    self.seg2.tintColor=[UIColor whiteColor];
    self.seg2.frame=CGRectMake(62,480,197,28);
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)seg1:(id)sender {
}
- (IBAction)sliderChanged:(id)sender {
    self.sliderLabel=[[UILabel alloc]init];
    self.sliderLabel.frame=CGRectMake(225, 576, 42, 21);
    self.sliderLabel.text=[NSString stringWithFormat:@"%0.0f",self.slider.value];
    self.sliderLabel.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:self.sliderLabel];
}
- (IBAction)onClickButton:(id)sender {
    
    [self.seg2 addTarget:self action:@selector(onSegmentChange) forControlEvents:UIControlEventValueChanged];
    [self.seg2 insertSegmentWithTitle:[NSString stringWithFormat:@"%0.0f",self.slider.value] atIndex:0 animated:YES];
    [self.view addSubview:self.seg2];
}

-(void)onSegmentChange
{
    NSString * str=[self.seg2 titleForSegmentAtIndex:self.seg2.selectedSegmentIndex];
    NSInteger a=[str integerValue];
    
    
    for(unsigned char i=1; i<=a;i++)
    {
        self.segmentLabel=[[UILabel alloc]init];
        self.segmentLabel.frame=CGRectMake(self.x,self.y,60,80) ;
        self.segmentLabel.text=@"Label";
        [self.view addSubview:self.segmentLabel];
        
        if(self.seg1 .selectedSegmentIndex==0)
        {
            
            self.y=(self.yval+1)*50;
            self.yval++;
            
            [self.view addSubview:self.segmentLabel];
        }
        
        else
        {
            self.x=(self.xval+1)*60;
            self.xval++;
            
            
            [self.view addSubview:self.segmentLabel];
            
            
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
