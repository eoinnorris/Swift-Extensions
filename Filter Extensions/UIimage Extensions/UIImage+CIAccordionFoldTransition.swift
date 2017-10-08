import Foundation

extension UIImage{ 
/// Accordion Fold Transition
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputFoldShadowAmount: 
///   - Parameter inputNumberOfFolds: 
///   - Parameter inputTime: The duration of the effect.
///   - Parameter inputBottomHeight: 
/// -  Returns: The filtered image or nil
	func accordionFoldTransition(inputTargetImage:CIImage,inputFoldShadowAmount:CGColorSpace,inputNumberOfFolds:Double = 3,inputTime:Double = 0,inputBottomHeight:Double = 0)->UIImage?{ 
		if let filter = CIFilter.accordionFoldTransition(inputTargetImage:inputTargetImage,inputFoldShadowAmount:inputFoldShadowAmount,inputNumberOfFolds:inputNumberOfFolds,inputTime:inputTime,inputBottomHeight:inputBottomHeight){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
