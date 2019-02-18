//
//  ViewController.h
//  FlimActors
//
//  Created by Kalpana on 3/28/18.
//  Copyright © 2018 Kalpana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSXMLParserDelegate>

@property NSXMLParser* XMLParseObj;

@property NSMutableArray* bollywood;

@property NSMutableArray* tollywood;

@property NSMutableArray* hollywood;

@property NSString *flimIndustry;


-(void)loadAndReadXML;



@end

