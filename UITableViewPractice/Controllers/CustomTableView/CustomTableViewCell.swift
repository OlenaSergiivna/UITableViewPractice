//
//  CustomTableViewCell.swift
//  UITableViewPractice
//
//  Created by user on 04.09.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var postImage: UIImageView!
    
    @IBOutlet weak var viewsCount: UILabel!
    
    @IBOutlet weak var postDescription: UILabel!
    
    @IBOutlet weak var commentsCount: UILabel!
    
    @IBOutlet weak var timeCount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.icon.layer.cornerRadius = icon.frame.height / 2
    }
    
    func configure(with post: Post) {
        icon.image = UIImage(named: post.avatarImageName)
        userName.text = post.user_name
        postImage.image = UIImage(named: post.postImageName)
        viewsCount.text = "\(post.viewsCount) views"
        let text = "\(post.user_name) \(post.description)".withBoldText(text: "\(post.user_name)")
        postDescription.attributedText = .some(text)
        commentsCount.text = "View all \(post.countOfComments) comments"
        timeCount.text = post.postedAt
    }



    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
