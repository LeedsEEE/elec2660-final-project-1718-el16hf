//
//  MyDataClass.m
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MyDataClass.h"

@implementation MyDataClass
@synthesize testString = _testString;

static MyDataClass *_sharedInstance;

- (id) init {
    if (self = [super init]) {
        //custom initialization
    }
    return self;
}

+ (MyDataClass *) sharedInstance {
    if (!_sharedInstance) {
        _sharedInstance = [[MyDataClass alloc]init];
    }
    return _sharedInstance;
}

@end
