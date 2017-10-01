import Foundation

extension CIFilter{ 

	class func lineScreen(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILineScreen"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			result = filter
		}
		return result
	}
}
