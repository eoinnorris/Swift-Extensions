import Foundation

extension CIFilter{ 

	class func hueAdjust(inputAngle:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHueAdjust"){ 
			filter.setValue(inputAngle, forKey:"inputAngle")
			result = filter
		}
		return result
	}
}
