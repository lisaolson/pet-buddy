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
   
    // instantiates message array
    var messageArray = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataService.instance.getAllFeedMessages { (returnedMessagesArray) in
            self.messageArray = returnedMessagesArray
            self.tableView.reloadData()
        }
    }

}

extension FeedViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as? FeedCell else
        { return UITableViewCell() }
        let image = UIImage(named: "watercolor")
        // grabs every item in the entier message array based on the row of the table view
        let message = messageArray[indexPath.row]
        
        cell.configureCell(profileImage: image!, email: message.senderId, content: message.content)
        
        return cell
    }
}
