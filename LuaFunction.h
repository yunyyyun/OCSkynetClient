//
//  lua.h
//  lua
//
//  Created by mengyun on 16/9/24.
//  Copyright © 2016年 mengyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "lua.hpp"

@interface LuaFunc : NSObject
    @property(nonatomic, assign)lua_State *L;

- (id)init;
- (void)dealloc;
- (void)luaClose;
- (int)executeLuaFuncWithName:(char *)functionName andArgs:(int *)args andLength:(int)len andResult:(int *)result;
    
    @end
