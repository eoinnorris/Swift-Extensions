import Foundation

extension CIFilter{ 

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
