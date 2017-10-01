import Foundation

extension CIFilter{ 

	class func opTile(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 65,inputScale:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIOpTile"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}
