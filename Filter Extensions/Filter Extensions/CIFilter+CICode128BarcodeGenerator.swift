import Foundation

extension CIFilter{ 
/// Code128 Barcode Generator
///
/// - Parameters
///   - Parameter inputBarcodeHeight: 
///   - Parameter inputMessage: 
///   - Parameter inputQuietSpace: 
/// -  Returns: The filtered image or nil
	class func code128BarcodeGenerator(inputBarcodeHeight:Double = 32,inputMessage:NSData,inputQuietSpace:Double = 7)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICode128BarcodeGenerator"){ 
			filter.setValue(inputBarcodeHeight, forKey:"inputBarcodeHeight")
			filter.setValue(inputMessage, forKey:"inputMessage")
			filter.setValue(inputQuietSpace, forKey:"inputQuietSpace")
			result = filter
		}
		return result
	}
}
