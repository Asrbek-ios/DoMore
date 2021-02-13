//
//  ScrollViewController.swift
//  DoMore
//
//  Created by Mahmudov Asrbek Ulug'bek o'g'li on 2/13/21.
//

import UIKit

class ScrollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }
    
    // MARK: - Methods
    
    func initViews() {
        setNavigationBar()
    }
    
    func setNavigationBar() {
        let back = UIImage(named: "ic_back")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(backTapped))
        title = "Scroll View"
    }
    
    // MARK: - Action
    @objc func backTapped() {
        navigationController?.popViewController(animated: true)
    }

}
