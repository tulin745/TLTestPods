//
//  FactoryClass.h
//  GoodLife
//
//  Created by Aaron 吴 on 2018/9/2.
//  Copyright © 2018年 tulin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactoryClass : NSObject

+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

@end
