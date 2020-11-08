import Foundation

class Calculator {
    enum Method {
        case add, minus, multiply, divid
    }
    
    static func formattNumberToCurrencyNumber(number1: String?, number2: String?, method: Method) -> String {
        guard let number1 = number1,
              let number2 = number2,
              let d1 = Double(number1),
              let d2 = Double(number2) else {
            return "--"
        }
        
        let result: Double
        switch method {
        case .add:
            result = d1 + d2
        case .minus:
            result = d1 - d2
        case .multiply:
            result = d1 * d2
        case .divid:
            result = d1 / d2
        }
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.maximumFractionDigits = 0
        
        return numberFormatter.string(from: NSNumber(value: result)) ?? "--"
    }
}
