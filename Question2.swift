//
//  Question2.swift
//
//  Created by Andrey on 29/08/2019.
//

let serialQueue = DispatchQueue(label: "com.foo.bar")
serialQueue.async {
    print("Work 1")
    serialQueue.sync {
        print("Work 2")
    }
    // Внешний блок ("Work 1") будет ожидать завершения внутреннего блока
    // Внутренний блок ("Work 2") не начнется пока не завершится внешний блок
    // Получим deadlock и поэтому блок "Work 2" не выполняется
}
