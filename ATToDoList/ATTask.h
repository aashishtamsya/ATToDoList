//
//  ATTask.h
//  ATToDoList
//
//  Created by Felix ITs 01 on 16/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ATTask : NSObject
{
    NSString *text;
    NSString *isCompleted;
}

@property(nonatomic,copy) NSString *text;
@property(nonatomic,copy) NSString *isCompleted;

+(ATTask*)taskWithText:(NSString *)text completed:(NSString *)isCompleted;

+(void)saveAllTasksInUserDefaults:(NSMutableArray *)allTasks;

+(NSMutableArray *)loadAllTasksFromUserDefaults;
@end
