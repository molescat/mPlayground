//: [Previous](@previous)
/*:
 ## SIMD instructions
 */

/* Neural Networks and Accelerate, System Frameworks | 715
 */

import UIKit
import simd

let x = float3(1, 0, 0)
let y = float3(1, 1, 1)

let s = dot(x, y)
let t = cross(y, x)

// matrix_determinant
// simd_orient (winding order)
// simd_incircle(x, a, b, c)
// simd_insphere
// cross
//   use simd_orient for facing calculation

let m = float3x3([float3(0, 0, 0), float3(), float3()])

print(m)

let identity = float3x3.init(diagonal: float3(1, 1, 1))
print(identity)

//simd_orient(<#T##__x: vector_double2##vector_double2#>, <#T##__y: vector_double2##vector_double2#>)

func test() {

}
