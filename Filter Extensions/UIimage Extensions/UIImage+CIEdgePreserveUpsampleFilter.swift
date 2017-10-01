import Foundation

extension UIImage{ 

	func edgePreserveUpsampleFilter(inputSmallImage:CIImage,inputLumaSigma:CGColorSpace,inputSpatialSigma:Double = 3)->UIImage?{ 
		if let filter = CIFilter.edgePreserveUpsampleFilter(inputSmallImage:inputSmallImage,inputLumaSigma:inputLumaSigma,inputSpatialSigma:inputSpatialSigma){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}