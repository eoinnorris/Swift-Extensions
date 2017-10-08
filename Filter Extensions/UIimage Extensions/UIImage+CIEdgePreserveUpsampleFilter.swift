import Foundation

extension UIImage{ 
/// Edge Preserve Upsample Filter
///
/// - Parameters
///   - Parameter inputSmallImage: 
///   - Parameter inputLumaSigma: 
///   - Parameter inputSpatialSigma: 
/// -  Returns: The filtered image or nil
	func edgePreserveUpsampleFilter(inputSmallImage:CIImage,inputLumaSigma:CGColorSpace,inputSpatialSigma:Double = 3)->UIImage?{ 
		if let filter = CIFilter.edgePreserveUpsampleFilter(inputSmallImage:inputSmallImage,inputLumaSigma:inputLumaSigma,inputSpatialSigma:inputSpatialSigma){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}