import Foundation

extension CIFilter{ 

	class func glassDistortion(inputTexture:CIImage,inputCenter:CIVector,inputScale:Double = 200)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGlassDistortion"){ 
			filter.setValue(inputTexture, forKey:"inputTexture")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}
