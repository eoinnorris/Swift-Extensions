import Foundation

extension CIFilter{ 
/// Text Image Generator
///
/// - Parameters
///   - Parameter inputFontSize: 
///   - Parameter inputScaleFactor: 
///   - Parameter inputFontName: 
///   - Parameter inputText: 
/// -  Returns: The filtered image or nil
	class func textImageGenerator(inputFontSize:Double = 12,inputScaleFactor:Double = 1,inputFontName:String = "HelveticaNeue",inputText:NSString)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CITextImageGenerator"){ 
			filter.setValue(inputFontSize, forKey:"inputFontSize")
			filter.setValue(inputScaleFactor, forKey:"inputScaleFactor")
			filter.setValue(inputFontName, forKey:"inputFontName")
			filter.setValue(inputText, forKey:"inputText")
			result = filter
		}
		return result
	}
}
