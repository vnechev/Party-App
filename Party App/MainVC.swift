//
//  ViewController.swift
//  Party App
//
//  Created by Vasil Nechev on 10/13/16.
//  Copyright © 2016 Vasil Nechev. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let testURL = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kV-2Q8QtCY4\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let p1 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/en/b/b2/Metallica_-_Master_of_Puppets_cover.jpg", videoURL: testURL, titleURL: "Metallica")
        partyRocks.append(p1)
        let p2 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/en/8/82/Metallica_-_Ride_the_Lightning_cover.jpg", videoURL: testURL, titleURL: "Ride the lightning")
        partyRocks.append(p2)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PartyCell
            let partyRock = partyRocks[indexPath.row]
            cell.update(partyRock: partyRock)
            return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVCsegue", sender: partyRock)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
          if  let destinationController = segue.destination as? VideoVC  {
            if let party = sender as? PartyRock{
                destinationController.partyRock = party
            }
            
        }
    }
}

