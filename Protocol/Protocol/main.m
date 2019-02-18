//
//  main.m
//  Protocol
//
//  Created by Karishma on 3/24/18.
//  Copyright © 2018 Karishma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lion.h"
#import "Eagle.h"
#import "Crocodile.h"
#import "Features.h"
#import "NSObject+Colors.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *colors=[[NSArray alloc]initWithObjects:@"Red",@"Black",@"Green", nil];
        [colors animalColors];
        NSLog(@"Animal Colors%@",colors);
        
        NSLog(@"LION");
        Lion *l1=[[Lion alloc]init];
        [l1 partsOfAnimal];
        [l1 eating];
        [l1 drinking];
        [l1 sleeping];
        [l1 breathing];
        
        NSLog(@"EAGLE");
        Eagle *e1=[[Eagle alloc]init];
        [e1 partsOfAnimal];
        [e1 eating];
        [e1 drinking];
        [e1 sleeping];
        [e1 breathing];
        
        NSLog(@"CROCODILE");
        Crocodile *c1=[[Crocodile alloc]init];
        [c1 partsOfAnimal];
        [c1 eating];
        [c1 drinking];
        [c1 sleeping];
        [c1 breathing];
        [c1 swimming];
        [Crocodile typeOfAnimal];
        
    }
    return 0;
}
