//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by user on 03.09.2022.
//

import UIKit

class CustomViewController: UIViewController {
    
    var postArray: [Post] = [Post(avatarImageName: "museum_icon", postImageName: "museum_post", viewsCount: 1105, description: "Як вам пропозиція FM — перестати триматися за «шароварний канон», який романтизували лише наприкінці ХІХ сторіччя? Пропонуємо розставити крапки над «і» в темі українського автентичного костюма: Маркетологиня Леся Михайлова @lesya.mykhailova радо познайомить вас з його різноманіттям — ми навіть не всі назви до того чули, проте тепер деякі з нас бажають весілля заради святкової гуглі. Гортайте карусель та досліджуйте національний одяг — яскраве і самобутнє культурне явище, яке формувалося протягом багатьох століть. Для ілюстрацій дизайнерка Анастасія Барда @an.bar.da обрала роботи художника Миколи Гроха для видання «Нариси з історії костюмів» (sketches from the history of costumes, 2007 рік) Костянтина Стамерова.", countOfComments: 298, postedAt: "1 minute ago"), Post(avatarImageName: "makhno_icon", postImageName: "makhno_post", viewsCount: 3248, description: "We dream, we have good dreams, we believe and we live. Flapjack ceramic tiles and Lakuna ceramic lamps — by Ukrainian craftsmen from Ukrainian clay 💛 Ми мріємо, ми бачимо добрі сни, віримо та живемо. Керамічна плитка Flapjack та керамічні лампи Lakuna — руками українських майстрів з української глини 💛", countOfComments: 15, postedAt: "2 days ago")]
    

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
