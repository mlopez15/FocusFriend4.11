//
//  RewardsTableViewController.swift
//  FocusFriend4.11
//
//  Created by Madeline on 4/14/17.
//  Copyright © 2017 Madeline. All rights reserved.
//

import UIKit

class RewardsTableViewController: UITableViewController {

    var rewards = [Reward]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Load the Sample Data
        loadSampleRewards()
        
      
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
        return 1
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rewards.count
    }
    
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "RewardTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? RewardTableViewCell  else {
            fatalError("The dequeued cell is not an instance of RealTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let reward = rewards[indexPath.row]

        cell.storeLabel.text = reward.name
        cell.photoView?.image = reward.photo
        cell.pointsLabel.text = reward.points
        
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
    
    
    private func loadSampleRewards(){
        let photo1 = UIImage(named: "Pizza")
        let photo2 = UIImage(named: "Nails")
        let photo3 = UIImage(named: "T-shirt")
        let photo4 = UIImage(named: "Chipotle")
        
        
        guard let reward1 = Reward(name: "Campus Corner", photo: photo1, points: "70")
        else {
            fatalError("Unable to instantiate reward1")
        }
        
        guard let reward2 = Reward(name: "Villanova Nail and Spa", photo: photo2, points: "85")
        else {
            fatalError("Unable to instantiate reward2")
        }
        
        guard let reward3 = Reward(name: "Villanova Bookstore", photo: photo3, points: "60")
        else {
            fatalError("Unable to instantiate reward3")
        }
        
        guard let reward4 = Reward(name: "Chipotle", photo: photo4, points: "95")
        else {
            fatalError("Unable to instantiate reward4")
        }
        
        print("created all rewards")
        
        rewards += [reward1, reward2, reward3, reward4]
        
        
        
        
        
        
    }
    
    
    
    

}
