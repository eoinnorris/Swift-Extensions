import Foundation

extension UIImage{ 

	func stretchCrop(inputCropAmount:CGColorSpace,inputCenterStretchAmount:CGColorSpace,inputSize:CIVector)->UIImage?{ 
		if let filter = CIFilter.stretchCrop(inputCropAmount:inputCropAmount,inputCenterStretchAmount:inputCenterStretchAmount,inputSize:inputSize){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}