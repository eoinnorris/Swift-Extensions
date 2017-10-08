import Foundation

extension CIFilter{ 
/// Barcode Generator
///
/// - Parameters
///   - Parameter inputBarcodeDescriptor: 
/// -  Returns: The filtered image or nil
	class func barcodeGenerator(inputBarcodeDescriptor:CIBarcodeDescriptor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBarcodeGenerator"){ 
			filter.setValue(inputBarcodeDescriptor, forKey:"inputBarcodeDescriptor")
			result = filter
		}
		return result
	}
}
