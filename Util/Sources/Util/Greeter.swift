import Foundation

@objc public class RandomError: NSObject, Error {}

public enum Result<T, E: Error> {
    case ok(result: T)
    case error(error: E)
}

@objcMembers
public class Greeter: NSObject {
    public private(set) var text = "Hello, World!"

    public override init() {
    }
    
    public func greeting() {
        print(text)
    }
    
    @nonobjc
    public func getRandomGreetingText() -> Result<String, RandomError> {
        if Float.random(in: 0...1) > 0.5 {
            return .ok(result: text)
        } else {
            return .error(error: RandomError())
        }
    }
    
    public func getRandomGreetingTextObjC(success: (String) -> Void, error errorBlock: (RandomError) -> Void) {
        let res = getRandomGreetingText()
        switch res {
        case .ok(let result):
            success(result)
        case .error(let error):
            errorBlock(error)
        }
        
    }
}
