//
//  InstaTableViewController.swift
//  TableViewApp
//
//  Created by 차소민 on 1/8/24.
//

import UIKit

class InstaTableViewController: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let storyImages = ["https://aroundusent.com/_data/smarteditor/202401/202401081456241848389684.jpg",
                       "https://aroundusent.com/_data/smarteditor/202401/202401081457201071096368.jpg",
                       "https://aroundusent.com/_data/smarteditor/202401/20240108145738585538177.jpg",
                       "https://aroundusent.com/_data/smarteditor/202401/202401081458202121203843.jpg",
                       "https://aroundusent.com/_data/smarteditor/202401/202401081458091402861321.jpg"]
    
    
    @IBOutlet var storyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.rowHeight = UITableView.automaticDimension
        tableView.rowHeight = 600
        storyCollectionView.dataSource = self
        storyCollectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width - 40
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: width/4, height: width/4)
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.scrollDirection = .horizontal
        
        storyCollectionView.collectionViewLayout = layout

        storyCollectionView.showsHorizontalScrollIndicator = false
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InstaTableViewCell", for: indexPath)
        return cell
    }
    

    
    
    //cvc
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        storyImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = storyCollectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
        
        cell.configureCell(data: storyImages[indexPath.item])

        return cell
    }
}
