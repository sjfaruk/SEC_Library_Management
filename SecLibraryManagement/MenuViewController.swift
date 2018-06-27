//
//  MenuViewController.swift
//  SecLibraryManagement
//
//  Created by MOSHIOUR on 5/21/17.
//  Copyright © 2017 Jonny B. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate{
    
    var menuImageArray : Array = [UIImage]()
    var menuLabelNameArray : Array = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        menuLabelNameArray = ["Home","Photo Gallery","Location Map","Admin","About"]
        menuImageArray = [UIImage(named: "home")!,UIImage(named: "gallery1")!,UIImage(named: "location")!,UIImage(named: "admin")!,UIImage(named: "about")!]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menuLabelNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuViewController") as! MenuTableViewCell
        cell.menuImage.image = menuImageArray[indexPath.row]
        cell.menuLabelName.text! = menuLabelNameArray[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let revealViewController: SWRevealViewController = self.revealViewController()
        
        let cell : MenuTableViewCell = tableView.cellForRow(at: indexPath) as! MenuTableViewCell
        
        if cell.menuLabelName.text! == "Home"
        {
            let mainStoryboard : UIStoryboard = UIStoryboard(name: "Main" , bundle : nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "UsersViewController") as! UsersViewController
            let newFrontViewController = UINavigationController.init(rootViewController : desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated : true)
            
        }
      
        if cell.menuLabelName.text! == "Photo Gallery"
        {
            let mainStoryboard : UIStoryboard = UIStoryboard(name: "Main" , bundle : nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "PhotoGalleryVC") as! PhotoGalleryVC
            let newFrontViewController = UINavigationController.init(rootViewController : desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated : true)
            
        }
       /*
        if cell.menuLabelName.text! == "Location Map"
        {
            let mainStoryboard : UIStoryboard = UIStoryboard(name: "Main" , bundle : nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "LocationMapViewController") as! LocationMapViewController
            let newFrontViewController = UINavigationController.init(rootViewController : desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated : true)
            
        }
        */
        
        if cell.menuLabelName.text! == "Admin"
        {
            let mainStoryboard : UIStoryboard = UIStoryboard(name: "Main" , bundle : nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            let newFrontViewController = UINavigationController.init(rootViewController : desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated : true)
            
        }
 
        
        if cell.menuLabelName.text! == "About"
        {
            let mainStoryboard : UIStoryboard = UIStoryboard(name: "Main" , bundle : nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
            let newFrontViewController = UINavigationController.init(rootViewController : desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated : true)
            
        }
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
