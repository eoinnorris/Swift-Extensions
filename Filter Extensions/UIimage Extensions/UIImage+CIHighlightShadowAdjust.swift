import Foundation

extension UIImage{ 

	func highlightShadowAdjust(inputHighlightAmount:Double = 1,inputRadius:Double = 0,inputShadowAmount:Double = 0)->UIImage?{ 
		if let filter = CIFilter.highlightShadowAdjust(inputHighlightAmount:inputHighlightAmount,inputRadius:inputRadius,inputShadowAmount:inputShadowAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}