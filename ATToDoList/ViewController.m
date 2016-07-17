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
    NSLog(@"VIEW DID LOAD");

}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"VIEW DID APPEAR");
    [self initializeApplication];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initializeApplication {
    
    tasks = [[NSMutableArray alloc]init];
    
    tasks = [ATTask loadAllTasksFromUserDefaults];
    
    if (tasks.count == nil) {
        
        tasks = [[NSMutableArray alloc]init];

        [tasks addObject:[ATTask taskWithText:@"Feed the cat" completed:@"NO"]];
        
        [tasks addObject:[ATTask taskWithText:@"Buy eggs" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Pack bags for WWDC" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Rule the web" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Buy a new iPhone" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Find missing socks" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Write a new tutorial" completed:@"YES"]];
        [tasks addObject:[ATTask taskWithText:@"Master Objective-C" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Remember your wedding anniversary!" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Drink less beer" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Learn to draw" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Take the car to the garage" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Sell things on eBay" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Learn to juggle" completed:@"NO"]];
        [tasks addObject:[ATTask taskWithText:@"Give up" completed:@"NO"]];
        
        [ATTask saveAllTasksInUserDefaults:tasks];
    }
    else {
        [self.tableViewTask reloadData];

    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return tasks.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
    
    ATTask *taskModel = [tasks objectAtIndex:indexPath.row];

    
    
    if ([taskModel.isCompleted isEqualToString:@"YES"]) {
        NSMutableAttributedString *text = [[NSMutableAttributedString alloc]initWithString:taskModel.text];
        
        [text addAttribute:NSStrikethroughStyleAttributeName value:@2 range:NSMakeRange(0, text.length)];
        cell.textLabel.attributedText = text;
    }
    else {
        cell.textLabel.text = taskModel.text;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

}


- (IBAction)addBarButtonTapped:(id)sender {
    
    AddTaskViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AddTaskViewController"];
    
    
    [self.navigationController pushViewController:viewController animated:YES];
    
}
@end
