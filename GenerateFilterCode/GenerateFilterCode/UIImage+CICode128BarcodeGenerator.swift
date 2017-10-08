import Foundation

extension UIImage{ 
/// Code128 Barcode Generator
///
/// - Parameters
///   - Parameter inputBarcodeHeight: 
///   - Parameter inputMessage: 
///   - Parameter inputQuietSpace: 
/// -  Returns: The filtered image or nil
	func code128BarcodeGenerator(inputBarcodeHeight:Double = 32,inputMessage:NSData,inputQuietSpace:Double = 7)->UIImage?{ 
		if let filter = CIFilter.code128BarcodeGenerator(inputBarcodeHeight:inputBarcodeHeight,inputMessage:inputMessage,inputQuietSpace:inputQuietSpace){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}