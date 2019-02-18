//
//  Lion.m
//  Protocol
//
//  Created by Karishma on 3/24/18.
//  Copyright © 2018 Karishma. All rights reserved.
//

#import "Lion.h"
#import "Features.h"

@implementation Lion

-(void)partsOfAnimal
{
 noOfLegs=4;
    noOfears=2;
    noOfeyes=2;
    NSLog(@"Lion eyes=%i\n,Lion ears=%i\n,Lion legs=%i\n",noOfeyes,noOfears,noOfLegs);
}

-(void)eating
{
    NSLog(@"eats deer");
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
    NSLog(@"sleeps in Caves");
}



@synthesize noOfLegs;

@synthesize noOfears;

@synthesize noOfeyes;

@end
