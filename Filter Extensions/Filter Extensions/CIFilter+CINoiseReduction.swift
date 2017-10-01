import Foundation

extension CIFilter{ 

	class func noiseReduction(inputSharpness:CGColorSpace,inputNoiseLevel:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CINoiseReduction"){ 
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			filter.setValue(inputNoiseLevel, forKey:"inputNoiseLevel")
			result = filter
		}
		return result
	}
}
