import Cocoa

extension CIFilter{ 

	class func gammaAdjust(inputPower:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGammaAdjust"){ 
			filter.setValue(inputPower, forKey:"inputPower")
			result = filter
		}
		return result
	}
}