//
//  HomeViewController.swift
//  DoMore
//
//  Created by Mahmudov Asrbek Ulug'bek o'g'li on 2/13/21.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let numberOfItems: CGFloat = 2
    var items: Array<Item> = Array()
    
    @IBOutlet var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }
    
    // MARK: - Methods
    
    func initViews() {
        setNavigationBar()
        CollectionView.dataSource = self
        CollectionView.delegate = self
        setNavigationBar()
        
        self.CollectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        
        if let flowLayout = CollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfItems - 15
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
        
        items.append(Item(image: "im_bestCoding", title: "Best Coding"))
        items.append(Item(image: "im_amazingCode", title: "Amazing Coding"))
        items.append(Item(image: "im_motivation", title: "Motivation"))
        items.append(Item(image: "im_office", title: "Office"))
        items.append(Item(image: "im_bestCoding", title: "Best Coding"))
        items.append(Item(image: "im_amazingCode", title: "Amazing Coding"))
        items.append(Item(image: "im_motivation", title: "Motivation"))
        items.append(Item(image: "im_office", title: "Office"))
        items.append(Item(image: "im_bestCoding", title: "Best Coding"))
        items.append(Item(image: "im_amazingCode", title: "Amazing Coding"))
        items.append(Item(image: "im_motivation", title: "Motivation"))
        items.append(Item(image: "im_office", title: "Office"))
        
    }
    
    func setNavigationBar() {
        let scroll = UIImage(named: "ic_scroll")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: scroll, style: .plain, target: self, action: #selector(scrollTapped))
        title = "Collection View"
        
    }
    
    func callScrollController() {
        let vc = ScrollViewController(nibName: "ScrollViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    // MARK: - Action
    
    @objc func scrollTapped() {
        callScrollController()
    }
    
    // MARK: - Collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ItemCollectionViewCell
        
        cell.image.image = UIImage(named: item.image!)
        cell.title.text = item.title
        
        return cell
    }
    
}
