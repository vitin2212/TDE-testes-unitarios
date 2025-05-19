
import XCTest
@testable import NewIOS008

final class CalculadoraTests: XCTestCase {

    var calculadora: Calculadora!

    override func setUpWithError() throws {
        calculadora = Calculadora()
    }

    override func tearDownWithError() throws {
        calculadora = nil
    }

    // MARK: - Testes de Soma
    func testSomarDoisNumerosPositivos() {
        let resultado = calculadora.somar(2, 3)
        XCTAssertEqual(resultado, 5)
    }

    func testSomarComNil() {
        let resultado = calculadora.somar(nil, 5)
        XCTAssertNil(resultado)
    }

    // MARK: - Testes de Subtração
    func testSubtrairDoisNumeros() {
        let resultado = calculadora.subtrair(10, 4)
        XCTAssertEqual(resultado, 6)
    }

    func testSubtrairComNil() {
        let resultado = calculadora.subtrair(10, nil)
        XCTAssertNil(resultado)
    }

    // MARK: - Testes de Multiplicação
    func testMultiplicarDoisNumeros() {
        let resultado = calculadora.multiplicar(3, 4)
        XCTAssertEqual(resultado, 12)
    }

    func testMultiplicarComNil() {
        let resultado = calculadora.multiplicar(nil, 2)
        XCTAssertNil(resultado)
    }

    // MARK: - Testes de Divisão
    func testDividirDoisNumeros() {
        let resultado = calculadora.dividir(8, 2)
        XCTAssertEqual(resultado, 4)
    }

    func testDividirPorZero() {
        let resultado = calculadora.dividir(10, 0)
        XCTAssertNil(resultado)
    }

    func testDividirComNil() {
        let resultado = calculadora.dividir(nil, 2)
        XCTAssertNil(resultado)
    }
}
