//
//  BlockObject.h
//  GitDemo
//
//  Created by peikua on 16/12/6.
//  Copyright © 2016年 peikua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockObject : NSObject
@property (nonatomic, copy) void(^block)();
@end
