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
    BOOL isCompleted;
}

@property(nonatomic,copy) NSString *text;
@property(nonatomic) BOOL isCompleted;

+(ATTask*)taskWithText:(NSString *)text completed:(BOOL)isCompleted;
@end
