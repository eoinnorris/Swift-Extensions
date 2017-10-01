import Foundation

extension CIFilter{ 

	class func kaleidoscope(inputCount:Double = 6,inputCenter:CIVector,inputAngle:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIKaleidoscope"){ 
			filter.setValue(inputCount, forKey:"inputCount")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			result = filter
		}
		return result
	}
}
