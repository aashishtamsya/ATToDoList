//
//  ViewController.m
//  ATToDoList
//
//  Created by Felix ITs 01 on 16/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initializeApplication {
    
    tasks = [[NSMutableArray alloc]init];
    
    [tasks addObject:[ATTask taskWithText:@"Feed the cat" completed:NO]];
    
    [tasks addObject:[ATTask taskWithText:@"Buy eggs" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Pack bags for WWDC" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Rule the web" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Buy a new iPhone" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Find missing socks" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Write a new tutorial" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Master Objective-C" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Remember your wedding anniversary!" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Drink less beer" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Learn to draw" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Take the car to the garage" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Sell things on eBay" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Learn to juggle" completed:NO]];
    [tasks addObject:[ATTask taskWithText:@"Give up" completed:NO]];
}
@end
