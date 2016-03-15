//
//  Stack.h
//  Objc尝试封装栈类
//
//  Created by zhang xu on 16/3/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject
-(id)pop;
-(BOOL)push:(id)t;
-(id)peek;
-(BOOL)isEmpty;
@end
