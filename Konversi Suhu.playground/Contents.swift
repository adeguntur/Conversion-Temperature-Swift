//: Playground - noun: a place where people can play

import Foundation

enum Temperature{
    case celcius
    case kelvin
    case farenheit
}

func convertTemperature(value: Double,from: Temperature,to:
    Temperature) -> Double{
    switch from {
    case .celcius:
        switch to {
        case .farenheit:
            return (value * 9/5)+32
        case .kelvin :
            return value + 273.15
        case .celcius :
            return value
        }
    case .farenheit:
        switch to {
        case .celcius:
            return (value - 32 ) * 5 / 9
        case .kelvin:
            return (value - 32 ) * 5 / 9 + 273.15
        case .farenheit:
            return value
        }
    case .kelvin:
        switch to {
        case .farenheit:
            return ((value - 273.15) * 9 / 5 ) + 32
        case .celcius:
            return value - 273.15
        case.kelvin:
            return value
        }
    }
   
}
 convertTemperature(value: 100, from: .celcius, to: .kelvin)
