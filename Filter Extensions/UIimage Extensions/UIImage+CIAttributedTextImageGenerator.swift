import Foundation

extension UIImage{ 

	func attributedTextImageGenerator(inputScaleFactor:Double = 1,inputText:NSAttributedString)->UIImage?{ 
		if let filter = CIFilter.attributedTextImageGenerator(inputScaleFactor:inputScaleFactor,inputText:inputText){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}