//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by user on 03.09.2022.
//

import UIKit

class CustomViewController: UIViewController {
    
    var postArray: [Post] = [Post(user_name: "free.museum", avatarImageName: "museum_icon", postImageName: "museum_post", viewsCount: 1105, description: "Як вам пропозиція FM — перестати триматися за «шароварний канон», який романтизували лише наприкінці ХІХ сторіччя?\n\nПропонуємо розставити крапки над «і» в темі українського автентичного костюма:\n\nМаркетологиня Леся Михайлова @lesya.mykhailova радо познайомить вас з його різноманіттям — ми навіть не всі назви до того чули, проте тепер деякі з нас бажають весілля заради святкової гуглі.\n\nГортайте карусель та досліджуйте національний одяг — яскраве і самобутнє культурне явище, яке формувалося протягом багатьох століть.\n\nДля ілюстрацій дизайнерка Анастасія Барда @an.bar.da обрала роботи художника Миколи Гроха для видання «Нариси з історії костюмів» (sketches from the history of costumes, 2007 рік) Костянтина Стамерова.\n\n#FM_різне #FM_various #FMmaterial #freemuseum #ukrainianculture", countOfComments: 298, postedAt: "1 minute ago"), Post(user_name: "makhno_studio", avatarImageName: "makhno_icon", postImageName: "makhno_post", viewsCount: 3248, description: "We dream, we have good dreams, we believe and we live.\n\nFlapjack ceramic tiles and Lakuna ceramic lamps — by Ukrainian craftsmen from Ukrainian clay 💛\n\nМи мріємо, ми бачимо добрі сни, віримо та живемо. Керамічна плитка Flapjack та керамічні лампи Lakuna — руками українських майстрів з української глини 💛", countOfComments: 15, postedAt: "5 minutes ago"), Post(user_name: "machandmach", avatarImageName: "mach_icon", postImageName: "mach_post", viewsCount: 1896, description: "Baby Pink or Cruise Blue?🤍 SS22 Double Bow PVC Mules Now Available Worldwide\n\nCredit: @bb_kara \n\n#SS22 #MachandMach", countOfComments: 541, postedAt: "10 minutes ago")]
    

    @IBOutlet weak var customTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customTableView.delegate = self
        customTableView.dataSource = self
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        customTableView.register(nib, forCellReuseIdentifier: "CustomTableViewCell")
        
        customTableView.reloadData()
    }
}

extension CustomViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = customTableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: postArray[indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }


}
