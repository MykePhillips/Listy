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
        setupParallax()


    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {

        itemImageView.image = image
        descriptionLabel.text = desc

    }

    func setupParallax() {

        let min = CGFloat(-30)
        let max = CGFloat(+30)

        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)

        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max


        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)

        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max

        let motionEffectGgroup = UIMotionEffectGroup()
        motionEffectGgroup.motionEffects = [xMotion, yMotion]

        itemImageView.addMotionEffect(motionEffectGgroup)



    }













}
