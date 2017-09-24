import Cocoa

extension CIFilter{ 

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