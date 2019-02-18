//
//  Eagle.m
//  Protocol
//
//  Created by Karishma on 3/24/18.
//  Copyright © 2018 Karishma. All rights reserved.
//

#import "Eagle.h"

@implementation Eagle
-(void)partsOfAnimal;
{
    noOfeyes=2;
    noOfears=2;
    noOfLegs=2;
    NSLog(@"Eagle eyes=%i\n,Eagle ears=%i\n,Eagle legs=%i\n",noOfeyes,noOfears,noOfLegs);
}


-(void)eating
{
    NSLog(@"eats rats");
}
-(void)drinking
{
    NSLog(@"drinks water");
}
-(void)breathing
{
    NSLog(@"Breaths");
}


- (void)sleeping {
    NSLog(@"sleeps in nest");
}
@synthesize noOfeyes;

@synthesize noOfears;

@synthesize noOfLegs;

@end
