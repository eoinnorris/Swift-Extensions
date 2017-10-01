import Foundation

extension UIImage{ 

	func textImageGenerator(inputFontSize:Double = 12,inputScaleFactor:Double = 1,inputFontName:String = "HelveticaNeue",inputText:NSString)->UIImage?{ 
		if let filter = CIFilter.textImageGenerator(inputFontSize:inputFontSize,inputScaleFactor:inputScaleFactor,inputFontName:inputFontName,inputText:inputText){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}