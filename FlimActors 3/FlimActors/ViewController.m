//
//  ViewController.m
//  FlimActors
//
//  Created by Kalpana on 3/28/18.
//  Copyright © 2018 Kalpana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadAndReadXML];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)loadAndReadXML
{
     self.bollywood=[[NSMutableArray alloc]init];
     self.tollywood=[[NSMutableArray alloc]init];
    self.hollywood=[[NSMutableArray alloc]init];
    NSString *XMLFilePath=[[NSBundle mainBundle]pathForResource:@"Actor" ofType:@"xml"];
    NSLog(@"Path File:%@",XMLFilePath);
    self.XMLParseObj=[[NSXMLParser alloc]initWithContentsOfURL:[NSURL fileURLWithPath:XMLFilePath]];
    self.XMLParseObj.delegate=self;
    [self.XMLParseObj parse];
}



- (void)parserDidStartDocument:(NSXMLParser *)parser;
{
    NSLog(@"Parse the Document");
}



- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict;
{
   
   if ([elementName isEqualToString:@"bollywood"]||[elementName isEqualToString:@"tollywood"]||[elementName isEqualToString:@"hollywood"])
   
   {
       NSLog(@"element name is %@",elementName);
       _flimIndustry= elementName;
   }

}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    
  
    NSString *trimString=[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSLog(@" ---->%@<----",trimString);
    if (trimString.length>0) {
        if ([self.flimIndustry isEqualToString:@"bollywood"]==YES) {
            [self.bollywood addObject:string];
        }
        else if ([self.flimIndustry isEqualToString:@"tollywood"]==YES) {
            [self.tollywood addObject:string];
        }
       else if ([self.flimIndustry isEqualToString:@"hollywood"]==YES) {
            [self.hollywood addObject:string];
           
        }
    }
}
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
  NSLog(@"ending element is: %@ ", elementName);
}
- (void)parserDidEndDocument:(NSXMLParser *)parser
{
    
   
        
        NSLog(@" bollywood actors are %@",self.bollywood);
    
     NSLog(@" tollywood actors are %@",self.tollywood);
     NSLog(@" hollywood actors are %@",self.hollywood);
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
