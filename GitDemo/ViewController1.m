//
//  ViewController1.m
//  GitDemo
//
//  Created by peikua on 16/12/6.
//  Copyright © 2016年 peikua. All rights reserved.
//

#define WEAK_SELF __weak typeof(self)weakSelf = self
#define STRONG_SELF __weak typeof(weakSelf)self = weakSelf

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.blockObject = [[BlockObject alloc]init];

    [_blockObject setBlock:^{
    
        NSLog(@"block done");
    }];
}

- (void)test{
    NSLog(@"%@",self);
}

- (void)dealloc
{
    NSLog(@"ViewController1 dealloc");
}
@end
