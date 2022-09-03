//
//  CustomTableViewCell.swift
//  UITableViewPractice
//
//  Created by user on 04.09.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var postImage: UIImageView!
    
    @IBOutlet weak var postDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.icon.layer.cornerRadius = icon.frame.height / 2
    }
    
    func configure(with post: Post) {
        //icon.text = post.avatarImageName
        postDescription.text = post.description
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
