//
//  ProfileView.swift
//  CodingClubUIKit
//
//  Created by Wahid Hidayat on 05/09/23.
//

import UIKit

class ProfileView: UIView {
    // todo: create 2 imageview
    private let headerImageView: UIImageView = {
        let image = UIImageView()
        // ngambil image dari asset
        image.image = UIImage(named: "pemandangan")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let profileImageView: UIImageView = {
        let image = UIImageView()
        // ngambil image dari sfsymbol
        image.image = UIImage(systemName: "person.fill")
        // set rounded image
        image.clipsToBounds = true
        image.layer.cornerRadius = 24
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    // todo: create 3 label
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Wahid"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let roleLabel: UILabel = {
        let label = UILabel()
        label.text = "Learner @ Apple IL"
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let addressLabel: UILabel = {
        let label = UILabel()
        label.text = "Yogyakarta, Indonesia"
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let biodataStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        stack.alignment = .leading
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    private func setupView() {
        // add childview to superview
        addSubview(headerImageView)
        addSubview(profileImageView)
        addSubview(biodataStackView)
        
        // add subview into stackview
        biodataStackView.addArrangedSubview(nameLabel)
        biodataStackView.addArrangedSubview(roleLabel)
        biodataStackView.addArrangedSubview(addressLabel)
        
        // set constraint
        NSLayoutConstraint.activate([
            headerImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            headerImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            headerImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            headerImageView.heightAnchor.constraint(equalToConstant: 150),
            
            profileImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            profileImageView.widthAnchor.constraint(equalToConstant: 100),
            profileImageView.heightAnchor.constraint(equalToConstant: 100),
            profileImageView.topAnchor.constraint(equalTo: headerImageView.bottomAnchor, constant: -36),
            
            biodataStackView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 16),
            biodataStackView.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor),
            biodataStackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
