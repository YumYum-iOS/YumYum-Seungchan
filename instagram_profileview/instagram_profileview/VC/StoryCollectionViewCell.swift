//
//  StoryCollectionViewCell.swift
//  instagram_profileview
//
//  Created by 김승찬 on 2021/06/16.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier : String = "StoryCollectionViewCell"

    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var storyName: UILabel!
    
    func setData(imageName: String, title: String)
    {
        if let image = UIImage(named: imageName)
        {
            storyImage.image = image
        }
        storyName.text = title
    }

}

