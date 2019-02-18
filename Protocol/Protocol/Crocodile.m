//
//  Crocodile.m
//  Protocol
//
//  Created by Karishma on 3/24/18.
//  Copyright © 2018 Karishma. All rights reserved.
//

#import "Crocodile.h"

@implementation Crocodile


-(void)partsOfAnimal;
{
    noOfeyes=2;
    noOfears=2;
    noOfLegs=4;
    NSLog(@"Crocodile eyes=%i\n,Crocodile ears=%i\n,Crocodile legs=%i\n",noOfeyes,noOfears,noOfLegs);
}

+(void)typeOfAnimal
{
    NSLog(@"carnivore");
}
-(void)eating
{
    NSLog(@"Eats fishes");
}
-(void)drinking
{
    NSLog(@"drinks water");
}
-(void)breathing
{
    NSLog(@"Breaths");
}
-(void)swimming;
{
    NSLog(@"Swims in Water");
}

- (void)sleeping {
    NSLog(@"Sleeps in Caves");
}
@synthesize noOfears;

@synthesize noOfeyes;

@synthesize noOfLegs;

@end
