import Cocoa

extension CIFilter{ 

	class func pDF417BarcodeGenerator(inputCorrectionLevel:Double,inputAlwaysSpecifyCompaction:Double,inputDataColumns:Double,inputMessage:NSData,inputMinHeight:Double,inputCompactStyle:Double,inputMaxWidth:Double,inputPreferredAspectRatio:Double,inputRows:Double,inputMaxHeight:Double,inputCompactionMode:Double,inputMinWidth:Double)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPDF417BarcodeGenerator"){ 
			filter.setValue(inputCorrectionLevel, forKey:"inputCorrectionLevel")
			filter.setValue(inputAlwaysSpecifyCompaction, forKey:"inputAlwaysSpecifyCompaction")
			filter.setValue(inputDataColumns, forKey:"inputDataColumns")
			filter.setValue(inputMessage, forKey:"inputMessage")
			filter.setValue(inputMinHeight, forKey:"inputMinHeight")
			filter.setValue(inputCompactStyle, forKey:"inputCompactStyle")
			filter.setValue(inputMaxWidth, forKey:"inputMaxWidth")
			filter.setValue(inputPreferredAspectRatio, forKey:"inputPreferredAspectRatio")
			filter.setValue(inputRows, forKey:"inputRows")
			filter.setValue(inputMaxHeight, forKey:"inputMaxHeight")
			filter.setValue(inputCompactionMode, forKey:"inputCompactionMode")
			filter.setValue(inputMinWidth, forKey:"inputMinWidth")
			result = filter
		}
		return result
	}
}