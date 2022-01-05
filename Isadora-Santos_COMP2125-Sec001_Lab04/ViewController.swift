//
//  ViewController.swift
//  Isadora-Santos_COMP2125-Sec001_Lab04
//
//  Created by user202443 on 11/16/21.
//

import UIKit

class ViewController:UIViewController {
    
    var movies = ["The Illusionist","Interstellar", "Mariguella", "Parasite", "Contratiempo"]
    
    var releaseYear = ["2006","2014", "2019","2019","2016"]
    
    var duration = ["1h 50m","2h 49m","2h 35m","2h 12m","1h 46m"]
    
    var director = ["Neil Burger","Christopher Nolan","Wagner Moura","Bong Joon-ho","Oriol Paulo"]
    
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        movieTableView.delegate = self
        movieTableView.dataSource = self
    }

    }
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115.0
    }
    
    func tableView (_ tableView: UITableView, didSelectRowAt indexPath:IndexPath){
        //connecting clicked cell information to DetailsViewController
        if let vc = storyboard?.instantiateViewController(identifier: "DetailsViewController") as? DetailsViewController{
            vc.movieImage = UIImage(named:movies[indexPath.row])
            vc.movieTitle = movies[indexPath.row]
            vc.movieYear = releaseYear[indexPath.row]
            vc.movieDuration = duration[indexPath.row]
            vc.movieDirector = director[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = movieTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.textLabel?.text = movies[indexPath.row]
        
        cell.labelTitle?.text = movies[indexPath.row]
        cell.labelYear?.text = duration[indexPath.row]
        
        //defining images files and borders
        cell.imageMovie.image = UIImage(named:movies[indexPath.row])
        cell.imageMovie.layer.borderColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        cell.imageMovie.layer.borderWidth = 1.0
        return cell
    }
}

