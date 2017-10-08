import Foundation

extension UIImage{ 
/// PDF417 Barcode Generator
///
/// - Parameters
///   - Parameter inputCorrectionLevel: 
///   - Parameter inputAlwaysSpecifyCompaction: 
///   - Parameter inputDataColumns: 
///   - Parameter inputMessage: 
///   - Parameter inputMinHeight: 
///   - Parameter inputCompactStyle: 
///   - Parameter inputMaxWidth: 
///   - Parameter inputPreferredAspectRatio: 
///   - Parameter inputRows: 
///   - Parameter inputMaxHeight: 
///   - Parameter inputCompactionMode: 
///   - Parameter inputMinWidth: 
/// -  Returns: The filtered image or nil
	func pDF417BarcodeGenerator(inputCorrectionLevel:Double,inputAlwaysSpecifyCompaction:Double,inputDataColumns:Double,inputMessage:NSData,inputMinHeight:Double,inputCompactStyle:Double,inputMaxWidth:Double,inputPreferredAspectRatio:Double,inputRows:Double,inputMaxHeight:Double,inputCompactionMode:Double,inputMinWidth:Double)->UIImage?{ 
		if let filter = CIFilter.pDF417BarcodeGenerator(inputCorrectionLevel:inputCorrectionLevel,inputAlwaysSpecifyCompaction:inputAlwaysSpecifyCompaction,inputDataColumns:inputDataColumns,inputMessage:inputMessage,inputMinHeight:inputMinHeight,inputCompactStyle:inputCompactStyle,inputMaxWidth:inputMaxWidth,inputPreferredAspectRatio:inputPreferredAspectRatio,inputRows:inputRows,inputMaxHeight:inputMaxHeight,inputCompactionMode:inputCompactionMode,inputMinWidth:inputMinWidth){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}