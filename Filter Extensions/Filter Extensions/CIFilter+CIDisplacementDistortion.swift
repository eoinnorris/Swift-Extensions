import Cocoa

extension CIFilter{ 

	class func displacementDistortion(inputDisplacementImage:CIImage,inputScale:Double = 50)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDisplacementDistortion"){ 
			filter.setValue(inputDisplacementImage, forKey:"inputDisplacementImage")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}