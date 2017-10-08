import Foundation

extension CIFilter{ 
/// Edge Preserve Upsample Filter
///
/// - Parameters
///   - Parameter inputSmallImage: 
///   - Parameter inputLumaSigma: 
///   - Parameter inputSpatialSigma: 
/// -  Returns: The filtered image or nil
	class func edgePreserveUpsampleFilter(inputSmallImage:CIImage,inputLumaSigma:CGColorSpace,inputSpatialSigma:Double = 3)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIEdgePreserveUpsampleFilter"){ 
			filter.setValue(inputSmallImage, forKey:"inputSmallImage")
			filter.setValue(inputLumaSigma, forKey:"inputLumaSigma")
			filter.setValue(inputSpatialSigma, forKey:"inputSpatialSigma")
			result = filter
		}
		return result
	}
}
