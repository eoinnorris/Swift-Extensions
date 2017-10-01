import Foundation

extension CIFilter{ 

	class func attributedTextImageGenerator(inputScaleFactor:Double = 1,inputText:NSAttributedString)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAttributedTextImageGenerator"){ 
			filter.setValue(inputScaleFactor, forKey:"inputScaleFactor")
			filter.setValue(inputText, forKey:"inputText")
			result = filter
		}
		return result
	}
}
