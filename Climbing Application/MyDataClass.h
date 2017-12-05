//
//  MyDataClass.h
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyDataClass : NSObject

@property (nonatomic,copy) NSString *testString;

+ (MyDataClass *) sharedInstance;

@end
