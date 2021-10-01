//
//  ViewController.swift
//  HW_10
//
//  Created by Elizaveta Rogozhina on 01/10/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        oneSorted()
        twoMap()
        threeReduce()
    }
    func oneSorted(){
        print("Сортировка массива")
        var massInt: [Int] = []
        for _ in 0...19{
            let n = Int.random(in: 20...40)
            massInt.append(n)
        }
        print("Массив с рандомными числами:\n\(massInt)")
        print("Отсортированный массив:\n\(massInt.sorted())\n")
    }
    func twoMap(){
        print("Перевод чисел в строки")
        var massInt: [Int] = []
        for _ in 0...19{
            let n = Int.random(in: 20...40)
            massInt.append(n)
        }
        print("Массив с рандомными числами:\n\(massInt)")
        print("Отформатированный массив:\n\(massInt.map {$0.description})\n")
    }
    func threeReduce(){
        print("Перевод массива строк в одну строку")
        let massNames = ["Masha, Dasha, Sasha, Anthon, Philip, Nastya, Liza"]
        print("Исходный массив имён:\n\(massNames)")
        print("Строка из имён массива:\n\(massNames.reduce("") {(total, name) in total + "\(name)"})\n")
    }
}

