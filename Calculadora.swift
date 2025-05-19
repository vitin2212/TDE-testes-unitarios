import Foundation

struct Calculadora {
    func somar(_ a: Double?, _ b: Double?) -> Double? {
        guard let a = a, let b = b else { return nil }
        return a + b
    }

    func subtrair(_ a: Double?, _ b: Double?) -> Double? {
        guard let a = a, let b = b else { return nil }
        return a - b
    }

    func multiplicar(_ a: Double?, _ b: Double?) -> Double? {
        guard let a = a, let b = b else { return nil }
        return a * b
    }

    func dividir(_ a: Double?, _ b: Double?) -> Double? {
        guard let a = a, let b = b, b != 0 else { return nil }
        return a / b
    }
}

