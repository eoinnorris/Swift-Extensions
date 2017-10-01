import Foundation

extension CIFilter{ 

	class func zoomBlur(inputCenter:CIVector,inputAmount:Double = 20)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIZoomBlur"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAmount, forKey:"inputAmount")
			result = filter
		}
		return result
	}
}
