import Foundation

extension UIImage{ 

	func accordionFoldTransition(inputTargetImage:CIImage,inputFoldShadowAmount:CGColorSpace,inputNumberOfFolds:Double = 3,inputTime:Double = 0,inputBottomHeight:Double = 0)->UIImage?{ 
		if let filter = CIFilter.accordionFoldTransition(inputTargetImage:inputTargetImage,inputFoldShadowAmount:inputFoldShadowAmount,inputNumberOfFolds:inputNumberOfFolds,inputTime:inputTime,inputBottomHeight:inputBottomHeight){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}