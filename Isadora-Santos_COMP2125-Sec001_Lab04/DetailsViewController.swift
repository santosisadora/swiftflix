//
//  DetailsViewController.swift
//  Isadora-Santos_COMP2125-Sec001_Lab04
//
//  Created by user202443 on 11/16/21.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //outlets
    
    @IBOutlet weak var labelDirector: UILabel!
    @IBOutlet weak var labelDuration: UILabel!
    @IBOutlet weak var labelYear: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    // local variables
    
    var movieTitle:String!
    
    var movieYear:String!
    
    var movieImage:UIImage!
    
    var movieDuration:String!
    
    var movieDirector:String!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelTitle.text = movieTitle
        labelYear.text = movieYear
        labelDuration.text = movieDuration
        labelDirector.text = movieDirector
        movieImageView.image = movieImage
    }
    


}
