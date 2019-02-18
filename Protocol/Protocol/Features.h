//
//  Features.h
//  Protocol
//
//  Created by Karishma on 3/24/18.
//  Copyright © 2018 Karishma. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Features <NSObject>

@required

@property unsigned char noOfLegs;
@property unsigned char noOfeyes;
@property unsigned char noOfears;
-(void)partsOfAnimal;
-(void)eating;
-(void)sleeping;
-(void)drinking;
-(void)breathing;

@optional
-(void)swimming;
@end
