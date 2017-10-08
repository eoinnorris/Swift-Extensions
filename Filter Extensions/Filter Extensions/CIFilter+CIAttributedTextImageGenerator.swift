import Foundation

extension CIFilter{ 
/// Attributed Text Image Generator
///
/// - Parameters
///   - Parameter inputScaleFactor: 
///   - Parameter inputText: 
/// -  Returns: The filtered image or nil
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
