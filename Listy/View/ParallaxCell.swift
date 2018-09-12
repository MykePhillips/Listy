//
//  ParallaxCell.swift
//  Listy
//
//  Created by Myke Phillips on 11/09/2018.
//  Copyright © 2018 Myke Phillips. All rights reserved.
//

import UIKit


class ParallaxCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

        //Set up our parrellax code later.

    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {

        itemImageView.image = image
        descriptionLabel.text = desc

    }

    func setupParallax() {

    }



}
