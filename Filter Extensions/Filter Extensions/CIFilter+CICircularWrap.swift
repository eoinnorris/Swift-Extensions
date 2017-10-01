import Foundation

extension CIFilter{ 

	class func circularWrap(inputCenter:CIVector,inputAngle:Double = 0,inputRadius:Double = 150)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICircularWrap"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
