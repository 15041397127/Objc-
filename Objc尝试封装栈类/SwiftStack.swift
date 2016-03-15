//
//  SwiftStack.swift
//  Objc尝试封装栈类
//
//  Created by zhang xu on 16/3/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

import Foundation

public struct Stack<Element>{
    
    private var items = [Element]()
    public func isEmtpy() ->Bool{
        
        return items.isEmpty
    }
    
    public init(){
        
    }
    
    mutating public func push(item:Element){
        items.append(item)
    }
    
    mutating public func pop() ->Element?{
        if isEmtpy(){
            return nil
        }
        return items.removeLast()
    }
    
    mutating public func peek() ->Element?{
        return items.last
    }
    
    
}