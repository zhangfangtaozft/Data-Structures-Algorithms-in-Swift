//: [Previous](@previous)
/*:
 ## 3. Minimum Recharge Stops
 Swift-la is a new electric car company that is looking to add a new feature into their vehicles. They want to add the ability for their customers to check if the car can reach a given destination.  Since the journey to the destination may be far, there are charging stations that the car can recharge at. The company wants to find the minimum number of charging stops needed for the vehicle to reach its destination.

 You're given the following information:
 * The target distance the vehicle needs to travel.
 * The startCharge, how much charge the car has to begin the journey.
 * An ordered list of stations that the car can potentially stop at to charge along the way.

 Each ChargingStation has a distance from the start location and a chargeCapacity. This is the amount of charge a station can add to the car.

 You may assume the following:
 1. An electric car has an **infinite** charge capacity.
 2.  One charge capacity is equivalent to one mile.
 3. The list of `stations` is sorted by distance from the start location:
 
 ```swift
 stations[0].distance < stations[1].distance < stations[k].distance
 ```
 */

import Foundation
struct ChargingStation {
    let distance: Int
    let chargeCapacity: Int
}

enum DestinationResult {
    case reachable(rechargeStops: Int)
    case unreachable
}

func moinRechargeStops(target: Int, startCharge: Int, stations: [ChargingStation]) -> DestinationResult {
    return .unreachable
}
