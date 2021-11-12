//
//  ViewController.swift
//  CollectionView
//
//  Created by Shreesha on 12/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var countries = ["America" , "Australia" , "England" ,"Germany" , "India" ,"Portugal" ,"Halland" ,"France" ,"Slovakia" ,"SriLanka"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }

}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FlagCollectionViewCell
        cell.movieLabel.text = countries[indexPath.row]
        cell.movieImageView.image = UIImage(named: countries[indexPath.row])
        
        return cell
    }
    
    
}
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}

