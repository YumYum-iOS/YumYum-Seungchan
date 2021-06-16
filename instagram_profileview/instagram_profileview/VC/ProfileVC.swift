//
//  ProfileVC.swift
//  instagram_profileview
//
//  Created by 김승찬 on 2021/06/16.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    @IBOutlet weak var MainTableView: UITableView!
    @IBOutlet weak var editprofileBtn: UIButton!
    private var storyList : [StoryDataModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MainTableView.delegate = self
        MainTableView.dataSource = self
//        setStoryList()
//        StoryCollectionView.delegate = self
//        StoryCollectionView.dataSource = self
        editprofileBtn.layer.cornerRadius = 0.01 * editprofileBtn.bounds.size.width
        editprofileBtn.layer.borderWidth = 1
        editprofileBtn.layer.borderColor = UIColor.black.cgColor
    

    
    }
    
//    func setStoryList()
//    {
//        storyList.append(contentsOf: [StoryDataModel(mainImage: "storyAddIcon", mainLabel: "New"),
//                                      StoryDataModel(mainImage: "storyImage1", mainLabel: "Friends"),
//                                      StoryDataModel(mainImage: "storyImage2", mainLabel: "Sports"),
//                                      StoryDataModel(mainImage: "storyImage3", mainLabel: "Design")])
//    }

}

//extension ProfileVC : UICollectionViewDataSource
//{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return storyList.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let storycell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell, for: indexPath) as? StoryCollectionViewCell else {return UICollectionViewCell()}
//
//        storycell.setData(imageName: storyList[indexPath.row].mainImage,
//                          title: storyList[indexPath.row].mainLabel)
//        return storycell
//    }
//
//
//}
//
//extension ProfileVC : UICollectionViewDelegate
//{
//
//}
//
//extension ProfileVC : UICollectionViewDelegateFlowLayout
//{
//
//}
