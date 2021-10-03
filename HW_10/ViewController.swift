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
        fourVoid()
        sixAlgorithm()
    }
    func oneSorted(){
        //Отсортируйте массив чисел по возрастанию, используя функцию Sorted
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
        //Переведите массив чисел в массив строк с помощью функции Map
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
        //Переведите массив строк с именами людей в одну строку, содержащую все эти имена, с помощью функции Reduce
        print("Перевод массива строк в одну строку")
        let massNames = ["Masha, Dasha, Sasha, Anthon, Philip, Nastya, Liza"]
        print("Исходный массив имён:\n\(massNames)")
        print("Строка из имён массива:\n\(massNames.reduce("") {(total, name) in total + "\(name)"})\n")
    }
    func fourVoid(){
        //Напишите функцию, которая принимает в себя функцию c типом (Void) -&gt; Void, которая будет вызвана с задержкой в две секунды.
        
    }
    func fiveTwoFuncs(func1: () -> Void, func2: () -> Void) -> Void{
        //Напишите функцию, которая принимает в себя две функции и возвращает функцию, которая при вызове выполнит первые две функции
        func func3(){
            func1()
            func2()
        }
        return func3()
    }
    func sixAlgorithm(){
        //Напишите функцию, которая сортирует массив по переданному алгоритму: принимает в себя массив чисел и функцию, которая берёт на вход два числа, возвращает Bool (должно ли первое число идти после второго) и возвращает массив, отсортированный по этому алгоритму.
        
    }
}
