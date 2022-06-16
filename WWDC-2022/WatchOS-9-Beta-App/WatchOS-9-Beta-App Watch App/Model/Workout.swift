//
//  Workout.swift
//  WatchOS-9-Beta-App Watch App
//
//  Created by Ivan Pryhara on 16.06.22.
//

import Foundation

enum WorkoutType: String {
    case fingerWorkout = "Finger Workout"
    case climbingWorkout = "Climbing Workout"
}

enum WorkoutGoalType: String {
    case openGoal = "Open Goal"
    case timeGoal = "Time Goal"
    case customGoal = "Custom Goal"
}

struct Workout {
    var date: Date
    var type: WorkoutType
    var goalType: WorkoutGoalType
}
