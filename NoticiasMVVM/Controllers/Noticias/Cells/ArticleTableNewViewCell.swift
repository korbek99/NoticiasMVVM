//
//  ArticleTableNewViewCell.swift
//  NoticiasMVVM
//
//  Created by Jose David Bustos H on 10-03-23.
//  Copyright © 2023 Jose David Bustos H. All rights reserved.
//

import UIKit
struct ArticleTableNewModel {
    let title: String
    let desc: String
    init(title: String, desc: String) {
        self.title = title
        self.desc = desc
    }
}
class ArticleTableNewViewCell: UITableViewCell {

    override func prepareForReuse() {
    }
    lazy var lblTitle: UILabel = {
        let label: UILabel = .init()
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var lblDescrip: UILabel = {
        let label: UILabel = .init()
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    func configure(_ model: ArticleTableNewModel) {
        lblTitle.text = model.title
        lblDescrip.text = model.desc
    }
    
    // MARK: - init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configLabels()
        setupUIUX()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configLabels() {
        lblTitle.font = UIFont.boldSystemFont(ofSize: 35.0)
        lblTitle.textColor = UIColor.black
        lblTitle.numberOfLines = 0
        
        lblDescrip.font = UIFont.systemFont(ofSize: 20.0)
        lblDescrip.textColor = UIColor.gray
        lblDescrip.numberOfLines = 0
     
    }
    
    func setupUIUX() {
        self.backgroundColor = .white
        addSubview(lblTitle)
        addSubview(lblDescrip)
        
        lblTitle.topAnchor.constraint(equalTo: topAnchor, constant: 22).isActive = true
        lblTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        lblTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        lblTitle.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        lblDescrip.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 10).isActive = true
        lblDescrip.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        lblDescrip.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true

        lblDescrip.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
  
    // MARK: - Functions
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
