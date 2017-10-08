import Foundation

extension CIFilter{ 
/// Temperature and Tint
///
/// - Parameters
///   - Parameter inputNeutral: 
///   - Parameter inputTargetNeutral: 
/// -  Returns: The filtered image or nil
	class func temperatureAndTint(inputNeutral:CIVector,inputTargetNeutral:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CITemperatureAndTint"){ 
			filter.setValue(inputNeutral, forKey:"inputNeutral")
			filter.setValue(inputTargetNeutral, forKey:"inputTargetNeutral")
			result = filter
		}
		return result
	}
}
