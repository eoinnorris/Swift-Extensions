import Foundation

extension UIImage{ 
/// Aztec Code Generator
///
/// - Parameters
///   - Parameter inputLayers: Aztec layers value between 1 and 32. Set to nil for automatic.
///   - Parameter inputMessage: 
///   - Parameter inputCompactStyle: Aztec force compact style @YES or @NO. Set to nil for automatic.
///   - Parameter inputCorrectionLevel: Aztec error correction value between 5 and 95
/// -  Returns: The filtered image or nil
	func aztecCodeGenerator(inputLayers:Double,inputMessage:NSData,inputCompactStyle:Double,inputCorrectionLevel:Double = 23)->UIImage?{ 
		if let filter = CIFilter.aztecCodeGenerator(inputLayers:inputLayers,inputMessage:inputMessage,inputCompactStyle:inputCompactStyle,inputCorrectionLevel:inputCorrectionLevel){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}