//
//  FactoryClass.m
//  GoodLife
//
//  Created by Aaron 吴 on 2018/9/2.
//  Copyright © 2018年 tulin. All rights reserved.
//

#import "FactoryClass.h"

@implementation FactoryClass

+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString
{
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err)
    {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}

@end
