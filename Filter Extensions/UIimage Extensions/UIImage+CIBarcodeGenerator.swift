import Foundation

extension UIImage{ 

	func barcodeGenerator(inputBarcodeDescriptor:CIBarcodeDescriptor)->UIImage?{ 
		if let filter = CIFilter.barcodeGenerator(inputBarcodeDescriptor:inputBarcodeDescriptor){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}