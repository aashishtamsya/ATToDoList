//
//  AddTaskViewController.h
//  ATToDoList
//
//  Created by Felix ITs 01 on 17/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ATTask.h"

@interface AddTaskViewController : UIViewController <UITextFieldDelegate>
{
    NSString *taskText;
    NSMutableArray *tasks;
}
- (IBAction)addButtonTapped:(id)sender;
- (IBAction)cancelButtonTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTask;


@end
