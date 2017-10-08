import Foundation

extension UIImage{ 
/// Highlight and Shadow Adjust
///
/// - Parameters
///   - Parameter inputHighlightAmount: The amount of adjustment to the highlights of the image.
///   - Parameter inputRadius: Shadow Highlight Radius
///   - Parameter inputShadowAmount: The amount of adjustment to the shadows of the image.
/// -  Returns: The filtered image or nil
	func highlightShadowAdjust(inputHighlightAmount:Double = 1,inputRadius:Double = 0,inputShadowAmount:Double = 0)->UIImage?{ 
		if let filter = CIFilter.highlightShadowAdjust(inputHighlightAmount:inputHighlightAmount,inputRadius:inputRadius,inputShadowAmount:inputShadowAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}