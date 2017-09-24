import Cocoa

extension CIFilter{ 

	class func areaHistogram(inputCount:Double = 64,inputExtent:CIVector,inputScale:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAreaHistogram"){ 
			filter.setValue(inputCount, forKey:"inputCount")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}