import Foundation

extension UIImage{ 
/// Barcode Generator
///
/// - Parameters
///   - Parameter inputBarcodeDescriptor: 
/// -  Returns: The filtered image or nil
	func barcodeGenerator(inputBarcodeDescriptor:CIBarcodeDescriptor)->UIImage?{ 
		if let filter = CIFilter.barcodeGenerator(inputBarcodeDescriptor:inputBarcodeDescriptor){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}