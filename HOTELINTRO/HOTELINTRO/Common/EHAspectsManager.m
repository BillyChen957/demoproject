//
//  EHAspectsManager.m
//  HOTELINTRO
//
//  Created by xin on 2017/11/23.
//  Copyright © 2017年 pasaaa. All rights reserved.
//

#import "EHAspectsManager.h"
#import "Aspects.h"
@implementation EHAspectsManager

+ (void)trackAspectHooks{
    [self trackViewAppear];
}

+ (void)trackViewAppear{
    
    [UIViewController aspect_hookSelector:@selector(viewWillAppear:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> info){
        
        
        NSLog(@"打点统计：%@ viewWillAppear",NSStringFromClass([info.instance class]));
        
        
    } error:NULL];
    
    
    [UIViewController aspect_hookSelector:@selector(viewWillDisappear:)
                              withOptions:AspectPositionBefore
                               usingBlock:^(id<AspectInfo> info){
                                   
                                   //用户统计代码写在此处
                                   NSLog(@"[打点统计]:%@ viewWillDisappear",NSStringFromClass([info.instance class]));
                                   
                                   
                                   
                               }
                                    error:NULL];
    
   
    
    
}



@end
