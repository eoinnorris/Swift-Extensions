import Foundation

extension CIFilter{ 
/// Highlight and Shadow Adjust
///
/// - Parameters
///   - Parameter inputHighlightAmount: The amount of adjustment to the highlights of the image.
///   - Parameter inputRadius: Shadow Highlight Radius
///   - Parameter inputShadowAmount: The amount of adjustment to the shadows of the image.
/// -  Returns: The filtered image or nil
	class func highlightShadowAdjust(inputHighlightAmount:Double = 1,inputRadius:Double = 0,inputShadowAmount:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHighlightShadowAdjust"){ 
			filter.setValue(inputHighlightAmount, forKey:"inputHighlightAmount")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputShadowAmount, forKey:"inputShadowAmount")
			result = filter
		}
		return result
	}
}
