import Foundation

extension CIFilter{ 

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
