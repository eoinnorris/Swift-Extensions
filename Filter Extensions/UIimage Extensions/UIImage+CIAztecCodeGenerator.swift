import Foundation

extension UIImage{ 

	func aztecCodeGenerator(inputLayers:Double,inputMessage:NSData,inputCompactStyle:Double,inputCorrectionLevel:Double = 23)->UIImage?{ 
		if let filter = CIFilter.aztecCodeGenerator(inputLayers:inputLayers,inputMessage:inputMessage,inputCompactStyle:inputCompactStyle,inputCorrectionLevel:inputCorrectionLevel){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}