//
//  ATTask.m
//  ATToDoList
//
//  Created by Felix ITs 01 on 16/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ATTask.h"

@implementation ATTask
@synthesize  text;
@synthesize isCompleted;

+(ATTask*)taskWithText:(NSString *)text completed:(NSString *)isCompleted {
    
    ATTask *taskModel = [[ATTask alloc]init];
    taskModel.text = text;
    taskModel.isCompleted = isCompleted;
    
    return taskModel;
}
+(void)saveAllTasksInUserDefaults:(NSMutableArray *)allTasks {
    
    NSMutableArray *taskDictionaries = [[NSMutableArray alloc]init];
    for (ATTask *task in allTasks) {
        
        
        
        NSDictionary *taskDictionary = [[NSDictionary alloc]initWithObjectsAndKeys:task.text,@"text",task.isCompleted,@"isCompleted", nil];
        [taskDictionaries addObject:taskDictionary];
    }
    
    
    
    [[NSUserDefaults standardUserDefaults] setObject:taskDictionaries forKey:@"tasks"];
    if([[NSUserDefaults standardUserDefaults] synchronize]) {
        NSLog(@"SUCCESS : Data Synchronized in User Defaults.");
    }else {
        NSLog(@"FAILED : Data Synchronized in User Defaults.");
        
    }
}

+(NSMutableArray *)loadAllTasksFromUserDefaults {
 
    NSMutableArray *taskDictionaries = [[NSMutableArray alloc]init];
    NSMutableArray *allTasks = [[NSMutableArray alloc]init];
    taskDictionaries = [[NSUserDefaults standardUserDefaults] valueForKey:@"tasks"];
    
    for (NSDictionary *taskDictionary in taskDictionaries) {
        
        ATTask *taskModel = [ATTask taskWithText:[taskDictionary valueForKey:@"text"] completed:[taskDictionary valueForKey:@"isCompleted"]];
        
        [allTasks addObject:taskModel];
    }
    
    return allTasks;
}

@end
