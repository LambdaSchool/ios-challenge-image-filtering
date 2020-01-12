//
//  ImageFilterer.swift
//  ImageFilteringResourcefulnessAssessment
//
//  Created by Spencer Curtis on 12/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ImageFilterer {
    
    let context = CIContext(options: nil)
    
    func filterImage(_ image: UIImage?) -> UIImage? {
        
        let originalImage = CIImage(image: image!)
        let filter = CIFilter(name:"CIPhotoEffectInstant")
        filter?.setValue(originalImage, forKey: kCIInputImageKey)
        guard let filImage = filter?.outputImage! else {
            return nil
        }
        return UIImage(ciImage: filImage)
    }
}
