//
//  MainVC.swift
//  Listy
//
//  Created by Myke Phillips on 11/09/2018.
//  Copyright © 2018 Myke Phillips. All rights reserved.
//

import UIKit

class MainVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self


       
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {


        return imageArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell else { return UITableViewCell() }

        cell.configureCell(withImage: imageArray[indexPath.row], andDescription: nameArray[indexPath.row])

        return cell
        }







    }





