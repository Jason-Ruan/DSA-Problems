//
//  IncreasingOrder.swift
//  DSA Problems
//
//  Created by Jason Ruan on 4/14/20.
//  Copyright © 2020 Jason Ruan. All rights reserved.
//

import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


//Question 1

//Given a binary search tree, rearrange the tree in in-order so that the leftmost node in the tree is now the root of the tree, and every node has no left child and only 1 right child.

//Example 1:
//Input: [5,3,6,2,4,null,8,1,null,null,null,7,9]
//
//       5
//      / \
//    3    6
//   / \    \
//  2   4    8
// /        / \
//1        7   9
//
//Output: [1,null,2,null,3,null,4,null,5,null,6,null,7,null,8,null,9]
//
// 1
//  \
//   2
//    \
//     3
//      \
//       4
//        \
//         5
//          \
//           6
//            \
//             7
//              \
//               8
//                \
//                 9

class IncreasingOrderBinaryTreeSolution {
    
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        let tree = getTreeValues(node: root) ?? []
        return createTree(nodes: tree.sorted { $0.val < $1.val } )
    }
    
    
    func getTreeValues(node: TreeNode?, arr: [TreeNode]? = nil) -> [TreeNode]? {
        var arr = arr ?? []
        guard let node = node else { return arr }
        
        arr.append(node)
        
        if let left = node.left {
            arr = getTreeValues(node: left, arr: arr) ?? []
        }
        
        if let right = node.right {
            arr = getTreeValues(node: right, arr: arr) ?? []
        }
        
        return arr
        
    }
    
    
    func createTree(nodes: [TreeNode]) -> TreeNode? {
        guard !nodes.isEmpty else { return nil }
        
        for (index, node) in nodes.enumerated() {
            
            node.left = nil
            
            if index < nodes.endIndex - 1 {
                node.right = nodes[index + 1]
            }
        }
        
        guard let rootNode = nodes.first else { return nil }
        
        return rootNode
        
    }
    
}
