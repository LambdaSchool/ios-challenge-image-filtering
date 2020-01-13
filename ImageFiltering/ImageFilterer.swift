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
        let filter = CIFilter(name: "CIPhotoEffectInstant")
        
        guard let image = UIImage(named: "Lion") else { return nil }
        let ciInput = CIImage(image: image)
        filter?.setValue(ciInput, forKey: "Lion")
        
        let ciOuput = filter?.outputImage
        let ciContext = CIContext()
        let cgImage = ciContext.createCGImage(ciOuput!, from: (ciOuput?.extent)!)
        
        return UIImage(cgImage: cgImage!)
    }
}

