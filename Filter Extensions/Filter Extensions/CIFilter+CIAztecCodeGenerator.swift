import Cocoa

extension CIFilter{ 

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