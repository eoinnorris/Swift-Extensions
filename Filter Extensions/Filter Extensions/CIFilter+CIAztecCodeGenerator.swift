import Foundation

extension CIFilter{ 
/// Aztec Code Generator
///
/// - Parameters
///   - Parameter inputLayers: Aztec layers value between 1 and 32. Set to nil for automatic.
///   - Parameter inputMessage: 
///   - Parameter inputCompactStyle: Aztec force compact style @YES or @NO. Set to nil for automatic.
///   - Parameter inputCorrectionLevel: Aztec error correction value between 5 and 95
/// -  Returns: The filtered image or nil
	class func aztecCodeGenerator(inputLayers:Double,inputMessage:NSData,inputCompactStyle:Double,inputCorrectionLevel:Double = 23)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAztecCodeGenerator"){ 
			filter.setValue(inputLayers, forKey:"inputLayers")
			filter.setValue(inputMessage, forKey:"inputMessage")
			filter.setValue(inputCompactStyle, forKey:"inputCompactStyle")
			filter.setValue(inputCorrectionLevel, forKey:"inputCorrectionLevel")
			result = filter
		}
		return result
	}
}
