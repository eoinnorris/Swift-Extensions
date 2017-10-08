import Foundation

extension CIFilter{ 
/// QRCode Generator
///
/// - Parameters
///   - Parameter inputMessage: 
///   - Parameter inputCorrectionLevel: QRCode correction level L, M, Q, or H.
/// -  Returns: The filtered image or nil
	class func qRCodeGenerator(inputMessage:NSData,inputCorrectionLevel:String = "M")->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIQRCodeGenerator"){ 
			filter.setValue(inputMessage, forKey:"inputMessage")
			filter.setValue(inputCorrectionLevel, forKey:"inputCorrectionLevel")
			result = filter
		}
		return result
	}
}
