//
//  main.swift
//  Swift4Learnings
//
//  Created by Rotti, Prasad on 13/07/18.
//  Copyright © 2018 Prasad. All rights reserved.
//

import Foundation

struct Pair<T1, T2> {
    var first: T1
    var second: T2
}

class Equilibrium
{
    func equilibriumOptimized(_ numbers: [Int]) -> [Int]? {
        var indices = [Int]()
        var leftSum = 0
        var sum = numbers.reduce(0, +)
        
        for i in 0..<numbers.count
        {
            sum = sum - numbers[i]
            if leftSum == sum {
                indices.append(i)
            }
            leftSum = leftSum + numbers[i]
        }
        
        return indices.isEmpty ? nil : indices
    }
    
    func isEqual<T:Equatable> (left: T, right: T) -> Bool {
        return left == right
    }
}

let aEquilibrium:Equilibrium = Equilibrium()
//print(aEquilibrium.equilibriumOptimized([-3, 2, -2, 1, -2]))


let floatPair = Pair(first: 0.4, second: 0.9)
print(floatPair)

let stringPair = Pair(first: "Prasad", second: "Avi")
print(stringPair)

print(aEquilibrium.isEqual(left: "Old Apple Campus", right: "Old Apple Campus"))
print(aEquilibrium.isEqual(left: "New Apple Campus", right: "19111 Pruneridge Ave, Cupertino, CA 95014"))

print("DevOps Learnings")
print("DevOps Learnings")
