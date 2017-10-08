import Foundation

extension CIFilter{ 
/// Accordion Fold Transition
///
/// - Parameters
///   - Parameter inputTargetImage: The target image for a transition.
///   - Parameter inputFoldShadowAmount: 
///   - Parameter inputNumberOfFolds: 
///   - Parameter inputTime: The duration of the effect.
///   - Parameter inputBottomHeight: 
/// -  Returns: The filtered image or nil
	class func accordionFoldTransition(inputTargetImage:CIImage,inputFoldShadowAmount:CGColorSpace,inputNumberOfFolds:Double = 3,inputTime:Double = 0,inputBottomHeight:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAccordionFoldTransition"){ 
			filter.setValue(inputTargetImage, forKey:"inputTargetImage")
			filter.setValue(inputFoldShadowAmount, forKey:"inputFoldShadowAmount")
			filter.setValue(inputNumberOfFolds, forKey:"inputNumberOfFolds")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputBottomHeight, forKey:"inputBottomHeight")
			result = filter
		}
		return result
	}
}
