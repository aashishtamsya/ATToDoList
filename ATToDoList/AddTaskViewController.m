//
//  AddTaskViewController.m
//  ATToDoList
//
//  Created by Felix ITs 01 on 17/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "AddTaskViewController.h"

@interface AddTaskViewController ()

@end

@implementation AddTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    tasks = [[NSMutableArray alloc]init];
    tasks = [ATTask loadAllTasksFromUserDefaults];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}

- (IBAction)addButtonTapped:(id)sender {
    
    taskText = self.textFieldTask.text;
    
    if (taskText.length > 0 && ![taskText isEqualToString:@""]) {
        
        ATTask *taskModel = [ATTask taskWithText:taskText completed:@"NO"];

        if (tasks.count > 0) {
            
            [tasks addObject:taskModel];
        }
        else {
            tasks = [[NSMutableArray alloc]initWithObjects:taskModel, nil];
        }
        
        [ATTask saveAllTasksInUserDefaults:tasks];
        
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)cancelButtonTapped:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
