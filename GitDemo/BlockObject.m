//
//  BlockObject.m
//  GitDemo
//
//  Created by peikua on 16/12/6.
//  Copyright © 2016年 peikua. All rights reserved.
//

#import "BlockObject.h"
#import "NSTimer+YYAdd.h"
@implementation BlockObject
{
    NSThread * _networkRequestThread;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:5.0 block:^(NSTimer *timer) {
            if(self.block){
                self.block();
            }
        } repeats:NO];
        

    }
    return self;
}

- (void)dealloc
{
    NSLog(@"BlockObject dealloc");
}


@end
