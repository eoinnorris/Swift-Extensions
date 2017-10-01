import Foundation

extension UIImage{ 

	func qRCodeGenerator(inputMessage:NSData,inputCorrectionLevel:String = "M")->UIImage?{ 
		if let filter = CIFilter.qRCodeGenerator(inputMessage:inputMessage,inputCorrectionLevel:inputCorrectionLevel){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}