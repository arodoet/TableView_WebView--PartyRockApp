//
//  PartyCell.swift
//  Party Rock
//
//  Created by Vuk Knežević on 1/16/19.
//  Copyright © 2019 Teodora Knežević. All rights reserved.
//

import UIKit

class PartyCell:UITableViewCell {

    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func updateUI(partyRock:PartyRock){
        
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            
            do{
                let data = try Data(contentsOf: url)
                
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
                
            }catch{
                //handle the error
            }
            
        }
        
    }
    


}
