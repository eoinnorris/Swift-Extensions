import Cocoa

extension CIFilter{ 

	class func stretchCrop(inputCropAmount:CGColorSpace,inputCenterStretchAmount:CGColorSpace,inputSize:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIStretchCrop"){ 
			filter.setValue(inputCropAmount, forKey:"inputCropAmount")
			filter.setValue(inputCenterStretchAmount, forKey:"inputCenterStretchAmount")
			filter.setValue(inputSize, forKey:"inputSize")
			result = filter
		}
		return result
	}
}