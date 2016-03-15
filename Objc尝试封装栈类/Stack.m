//
//  Stack.m
//  Objc尝试封装栈类
//
//  Created by zhang xu on 16/3/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import "Stack.h"

#define KMaxStackCount 10
@interface Stack ()

@property (nonatomic ,strong)NSMutableArray *list;
@property (nonatomic ,assign)NSInteger top;
@end
@implementation Stack
-(instancetype)init{
    
    
    if (self = [super init]) {
        self.top = 1;
    }
    return self;
}

- (BOOL)isEmpty{
    
    
    return  self.top == -1;
}

- (BOOL)push:(id)t{
    
    if (self.top +1 >= KMaxStackCount) {
        
        //上溢
        NSException *exception = [NSException exceptionWithName:@"push stack " reason:@"OverFlow" userInfo:nil];
        @throw exception;
    }
    self.list[++ self.top] =t;
    return YES;
}

- (id)pop{
    
    if ([self isEmpty]) {
        NSException *exception = [NSException exceptionWithName:@"pop stack" reason:@"UnderFlow" userInfo:nil];
        @throw exception;
    }
    return self.list[self.top--];
    
}

-(id)peek{
    if ([self isEmpty]) {
        NSException *exception = [NSException exceptionWithName:@"pop stack" reason:@"UnderFlow" userInfo:nil];
        @throw exception;
    }
    
    
    return self.list [self .top];
}




-(NSMutableArray *)list{
    
    
    if (_list ==nil) {
        _list = [[NSMutableArray alloc]initWithCapacity:KMaxStackCount];
    }
    return _list;
}



@end
