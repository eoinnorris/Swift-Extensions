import Cocoa

extension CIFilter{ 

	class func lightTunnel(inputCenter:CIVector,inputRotation:Double = 0,inputRadius:Double = 100)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILightTunnel"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRotation, forKey:"inputRotation")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}