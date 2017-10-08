import Foundation

extension UIImage{ 
/// QRCode Generator
///
/// - Parameters
///   - Parameter inputMessage: 
///   - Parameter inputCorrectionLevel: QRCode correction level L, M, Q, or H.
/// -  Returns: The filtered image or nil
	func qRCodeGenerator(inputMessage:NSData,inputCorrectionLevel:String = "M")->UIImage?{ 
		if let filter = CIFilter.qRCodeGenerator(inputMessage:inputMessage,inputCorrectionLevel:inputCorrectionLevel){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}