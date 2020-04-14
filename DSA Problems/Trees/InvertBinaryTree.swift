//
//  InvertBinaryTree.swift
//  DSA Problems
//
//  Created by Jason Ruan on 4/14/20.
//  Copyright © 2020 Jason Ruan. All rights reserved.
//

import Foundation

//Question 2

//Invert a binary tree.

//Example:
//Input:

/*
 4
 /   \
 2     7
 / \   / \
 1   3 6   9
 
 Output:
 
 4
 /   \
 7     2
 / \   / \
 9   6 3   1
 
 */

class InverseBinaryTreeSolution {
    
    private var queue: [TreeNode?] = []
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        
        queue.append(root)
        
        while !queue.isEmpty {
            invertNode(node: queue.removeFirst())
        }
        
        return root
        
    }
    
    func invertNode(node: TreeNode?) {
        guard let node = node else { return }
        
        let right = node.right
        node.right = node.left
        node.left = right
        
        queue.append(node.left)
        queue.append(node.right)
        
    }
    
}
