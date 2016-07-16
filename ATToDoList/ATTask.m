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

+(ATTask*)taskWithText:(NSString *)text completed:(BOOL)isCompleted {
    
    ATTask *taskModel = [[ATTask alloc]init];
    taskModel.text = text;
    taskModel.isCompleted = isCompleted;
    
    return taskModel;
}
@end
