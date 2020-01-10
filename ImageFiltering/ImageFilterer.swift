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
        // I think this works? I'll send you the bill
        let cIImage = CIImage(image: image!)
        return UIImage(ciImage: cIImage!.applyingFilter("CIPhotoEffectInstant"))
    }
}


