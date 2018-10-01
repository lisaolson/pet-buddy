//
//  FeedViewController.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/29/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var doggoArray = [Doggo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self as UITableViewDelegate
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataService.instance.getAllDoggos { (returnedDoggosArray) in
            self.doggoArray = returnedDoggosArray
            self.tableView.reloadData()
        }
    }
}

extension FeedViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doggoArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "doggoCell") as? DoggoCell else { return UITableViewCell() }
        
        let image = UIImage(named: "tongue")
        let doggo = doggoArray[indexPath.row]
        
        cell.configureCell(profileImage: image!, name: doggo.name, age: doggo.age, distance: doggo.distance, description: doggo.description)
        return cell
    }
}
