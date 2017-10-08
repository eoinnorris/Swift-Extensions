import Foundation

extension UIImage{ 
/// Light Tunnel Distortion
///
/// - Parameters
///   - Parameter inputCenter: Center of the light tunnel.
///   - Parameter inputRotation: Rotation angle of the light tunnel.
///   - Parameter inputRadius: Center radius of the light tunnel.
/// -  Returns: The filtered image or nil
	func lightTunnel(inputCenter:CIVector,inputRotation:Double = 0,inputRadius:Double = 100)->UIImage?{ 
		if let filter = CIFilter.lightTunnel(inputCenter:inputCenter,inputRotation:inputRotation,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}