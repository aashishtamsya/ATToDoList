//
//  ViewController.h
//  ATToDoList
//
//  Created by Felix ITs 01 on 16/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//
#define kCellIdentifier @"taskcell"




#import <UIKit/UIKit.h>
#import "ATTask.h"
#import "AddTaskViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *tasks;
}


@property (weak, nonatomic) IBOutlet UITableView *tableViewTask;
- (IBAction)addBarButtonTapped:(id)sender;


@end

