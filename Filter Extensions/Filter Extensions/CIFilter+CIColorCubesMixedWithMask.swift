import Cocoa

extension CIFilter{ 

	class func colorCubesMixedWithMask(inputMaskImage:CIImage,inputCube0Data:NSData,inputCube1Data:NSData,inputCubeDimension:Double = 2,inputColorSpace:NSObject)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorCubesMixedWithMask"){ 
			filter.setValue(inputMaskImage, forKey:"inputMaskImage")
			filter.setValue(inputCube0Data, forKey:"inputCube0Data")
			filter.setValue(inputCube1Data, forKey:"inputCube1Data")
			filter.setValue(inputCubeDimension, forKey:"inputCubeDimension")
			filter.setValue(inputColorSpace, forKey:"inputColorSpace")
			result = filter
		}
		return result
	}
}