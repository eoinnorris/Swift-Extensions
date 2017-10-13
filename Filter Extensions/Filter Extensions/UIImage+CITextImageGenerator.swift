import Foundation

extension UIImage{ 
/// Text Image Generator
///
/// - Parameters
///   - Parameter inputFontSize: 
///   - Parameter inputScaleFactor: 
///   - Parameter inputFontName: 
///   - Parameter inputText: 
/// -  Returns: The filtered image or nil
	func textImageGenerator(inputFontSize:Double = 12,inputScaleFactor:Double = 1,inputFontName:String = "HelveticaNeue",inputText:NSString)->UIImage?{ 
		if let filter = CIFilter.textImageGenerator(inputFontSize:inputFontSize,inputScaleFactor:inputScaleFactor,inputFontName:inputFontName,inputText:inputText){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}