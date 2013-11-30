//
//  UIBarButtonItem+Block.m
//  WYUICategory
//
//  Created by 3TI on 13-11-30.
//  Copyright (c) 2013年 qiaquan. All rights reserved.
//

#import "UIBarButtonItem+Block.h"
#import <objc/runtime.h>

@implementation UIBarButtonItem (Block)




static char WYUIAlertViewKey;



-(void)addActionHandler:(WYUIBarButtonItemBlock)block{
    
    objc_setAssociatedObject(self, &WYUIAlertViewKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
self 
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    WYUIBarButtonItemBlock block = objc_getAssociatedObject(self, &WYUIAlertViewKey);
    block();
}



@end
