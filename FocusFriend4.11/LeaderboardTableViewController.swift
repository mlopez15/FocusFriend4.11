//
//  LeaderboardTableViewController.swift
//  FocusFriend4.11
//
//  Created by Madeline on 4/11/17.
//  Copyright © 2017 Madeline. All rights reserved.
//

import UIKit

class LeaderboardTableViewController: UITableViewController {
    
    var users = [LBUser]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        loadsample()
        
        //Adding icon to navigation bar
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "llogo.png")
        imageView.image = image
        navigationItem.titleView = imageView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return users.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "LeaderBoardTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? LeaderBoardTableViewCell else {
            fatalError("The dequeued cell is not an instance of LeaderBoardTableViewCell.")
        }
        
        let user = users[indexPath.row]
        
        
        cell.UserName.text = user.name
        cell.UserScore.text = user.score
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func loadsample(){
        guard let userA = LBUser(name: "Ethan ", score: "69") else{
            fatalError("Unable to instantiate userA")
        }
        
        guard let userB = LBUser(name: "Maria", score: "311") else{
            fatalError("Unable to instantiate userB")
        }
        
        guard let userC = LBUser(name: "Madeeee", score: "420") else{
            fatalError("Unable to instantiate userC")
        }
        
        guard let userD = LBUser(name: "Mitch", score: "711") else{
            fatalError("Unable to instantiate userD")
        }
        
        guard let userE = LBUser(name: "Jack", score: "9999") else{
            fatalError("Unable to instantiate userE")
        }
        
        users += [userA, userB, userC, userD, userE]
    }

}
