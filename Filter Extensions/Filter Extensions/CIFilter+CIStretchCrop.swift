import Foundation

extension CIFilter{ 
/// Stretch Crop
///
/// - Parameters
///   - Parameter inputCropAmount: Determines if and how much cropping should be used to achieve the target size. If value is 0 then only stretching is used. If 1 then only cropping is used.
///   - Parameter inputCenterStretchAmount: Determine how much the center of the image is stretched if stretching is used. If value is 0 then the center of the image maintains the original aspect ratio. If 1 then the image is stretched uniformly.
///   - Parameter inputSize: The size in pixels of the output image.
/// -  Returns: The filtered image or nil
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
