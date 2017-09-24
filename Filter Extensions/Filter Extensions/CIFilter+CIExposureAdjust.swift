import Cocoa

extension CIFilter{ 

	class func exposureAdjust(inputEV:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIExposureAdjust"){ 
			filter.setValue(inputEV, forKey:"inputEV")
			result = filter
		}
		return result
	}
}