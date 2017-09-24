import Cocoa

extension CIFilter{ 

	class func colorInvert()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorInvert"){ 
			result = filter
		}
		return result
	}
}