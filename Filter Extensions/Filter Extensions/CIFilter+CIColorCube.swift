import Foundation

extension CIFilter{ 

	class func colorCube(inputCubeDimension:Double = 2,inputCubeData:NSData)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorCube"){ 
			filter.setValue(inputCubeDimension, forKey:"inputCubeDimension")
			filter.setValue(inputCubeData, forKey:"inputCubeData")
			result = filter
		}
		return result
	}
}
