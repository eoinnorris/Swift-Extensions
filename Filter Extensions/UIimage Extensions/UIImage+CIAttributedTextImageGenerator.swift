import Foundation

extension UIImage{ 
/// Attributed Text Image Generator
///
/// - Parameters
///   - Parameter inputScaleFactor: 
///   - Parameter inputText: 
/// -  Returns: The filtered image or nil
	func attributedTextImageGenerator(inputScaleFactor:Double = 1,inputText:NSAttributedString)->UIImage?{ 
		if let filter = CIFilter.attributedTextImageGenerator(inputScaleFactor:inputScaleFactor,inputText:inputText){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}