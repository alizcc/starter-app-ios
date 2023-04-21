//
//  MovieViewController.swift
//  Starter
//
//  Created by Chan Myae Thu on 19/03/2023.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var collectionViewMovie: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add collection view cell to collection view
        collectionViewMovie.dataSource = self
        collectionViewMovie.delegate = self
        collectionViewMovie.register(UINib(nibName: String(describing: SampleCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: SampleCollectionViewCell.self))
    }
    

}
//add cell to datasource
extension MovieViewController : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SampleCollectionViewCell.self), for: indexPath) as? SampleCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath:IndexPath) ->CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    
    
}

