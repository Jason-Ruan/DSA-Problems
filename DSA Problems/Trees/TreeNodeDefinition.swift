//
//  TreeNodeDefinition.swift
//  DSA Problems
//
//  Created by Jason Ruan on 4/14/20.
//  Copyright © 2020 Jason Ruan. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
