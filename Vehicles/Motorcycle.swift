//
//  Motorcycle.swift
//  Vehicles
//
//  Created by Kasper Peulen on 10/30/15.
//  Copyright © 2015 Razeware, LLC. All rights reserved.
//

import Foundation

class Motorcycle : Vehicle {
    
    let engineNoise: String
    
    // MARK: - Computed Properties
    
    override var vehicleDetails: String {
        // Get basic details from superclass
        let basicDetails = super.vehicleDetails
        
        // Initialize mutable string
        var motorcycleDetailsBuilder = "\n\nMotorcycle-Specific Details:\n\n"
        
        // Add info about motorcycle-specific features.
        motorcycleDetailsBuilder += "Engine Noise: \(engineNoise)"
        
        let motorcycleDetails = basicDetails + motorcycleDetailsBuilder
        
        return motorcycleDetails
    }
    
    // MARK: - Initialization Methods
    
    init(brandName: String, modelName: String, modelYear: Int, engineNoise: String) {
        self.engineNoise = engineNoise
        super.init(brandName: brandName, modelName: modelName, modelYear: modelYear, powerSource: "gas engine", numberOfWheels: 2)
    }
    
    // MARK: - Superclass Overrides
    override func goForward() -> String {
        return String(format: "%@ Open throttle.", changeGears("Forward"))
    }
    
    override func goBackward() -> String {
        return String(format: "%@ Walk %@ backwards using feet.", changeGears("Neutral"), modelName)
    }
    
    override func stopMoving() -> String {
        return "Squeeze brakes"
    }
    
    override func makeNoise() -> String {
        return self.engineNoise
    }
}
