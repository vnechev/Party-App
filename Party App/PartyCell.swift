//
//  PartyCell.swift
//  Party App
//
//  Created by Vasil Nechev on 10/14/16.
//  Copyright © 2016 Vasil Nechev. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var videoTitleCellLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func update(partyRock: PartyRock)  {
//        cellImage.image = UIImage(partyRock.imageURL)
        videoTitleCellLbl.text = partyRock.titleUTL
        
        let url = URL(string: partyRock.imageURL)
        
        DispatchQueue.global().sync {
            do {
                let data = try Data(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.imageView?.image = UIImage(data: data)
                }
            } catch { }
        }
        
    }
}
