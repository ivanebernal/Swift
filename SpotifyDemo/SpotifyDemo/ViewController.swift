//
//  ViewController.swift
//  SpotifyDemo
//
//  Created by projas on 5/19/16.
//  Copyright © 2016 Nearsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var imageList = [String]()
    var artistList = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nibName = UINib(nibName: imageViewCell.reuseIdentifier(), bundle: nil)
        
        imageList = [
            "aerosmith.jpg",
            "beyonce.jpg",
            "eminem.jpg",
            "santana.jpg",
            "pitbull.jpg",
            "queen.jpg",
            "rammstein.jpg",
            "rihanna.jpg",
            "rollingstones.jpg",
            "sonataArtica.jpg"
        ]
        
        artistList = [
            "Aerosmith",
            "Beyonce",
            "Eminem",
            "Santana",
            "Pitbull",
            "Queen",
            "Rammstein",
            "Rihanna",
            "Rolling Stones",
            "Sonata Artica"
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(imageViewCell.reuseIdentifier(), forIndexPath: indexPath) as! imageViewCell
        cell.imageArtist.image = UIImage(named: imageList[indexPath.row])
        
        return cell
    }
}