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
        
        var massInt: [Int] = []
        for _ in 0...19{
            massInt.append(Int.random(in: 20...40))
        }
        print(sixAlgorithm(mass: massInt, algFunc: algFuncForSix(one:two:)))
    }
    func oneSorted(){
        //Отсортируйте массив чисел по возрастанию, используя функцию Sorted
        print("Сортировка массива")
        var massInt: [Int] = []
        for _ in 0...19{
            massInt.append(Int.random(in: 20...40))
        }
        print("Массив с рандомными числами:\n\(massInt)")
        print("Отсортированный массив:\n\(massInt.sorted())\n")
    }
    func twoMap(){
        //Переведите массив чисел в массив строк с помощью функции Map
        print("Перевод чисел в строки")
        var massInt: [Int] = []
        for _ in 0...19{
            massInt.append(Int.random(in: 20...40))
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
    func sixAlgorithm(mass: [Int], algFunc: (Int, Int) -> Bool) -> [Int]{
        //Напишите функцию, которая сортирует массив по переданному алгоритму: принимает в себя массив чисел и функцию, которая берёт на вход два числа, возвращает Bool (должно ли первое число идти после второго) и возвращает массив, отсортированный по этому алгоритму.
        
        let whenSort = algFunc(mass[0], mass[1])
        var newMass = mass
        switch whenSort {
        case true:
            newMass.sort { $0 > $1 }
        case false:
            newMass.sort { $0 < $1 }
        }
        return newMass
    }
    func algFuncForSix(one: Int, two: Int) -> Bool{
        var whenSort = false
        if one >= two{
            whenSort = true
        }else{
            whenSort = false
        }
        return whenSort
    }
}
