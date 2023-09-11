//
//  ViewController.swift
//  CodingClubUIKit
//
//  Created by Wahid Hidayat on 05/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let profileView: ProfileView = {
        let profileView = ProfileView()
        profileView.translatesAutoresizingMaskIntoConstraints = false
        return profileView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add profileview to superview
        view.addSubview(profileView)
        
        // set profileview constraint
        NSLayoutConstraint.activate([
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileView.topAnchor.constraint(equalTo: view.topAnchor),
            profileView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }


}

