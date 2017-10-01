import Foundation

extension CIFilter{ 

	class func bumpDistortion(inputCenter:CIVector,inputRadius:Double = 300,inputScale:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBumpDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}
