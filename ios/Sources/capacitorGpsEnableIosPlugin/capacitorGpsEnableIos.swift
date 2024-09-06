import Foundation

@objc public class capacitorGpsEnableIos: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    @objc public func isGpsEnabled(_ value : String) -> Void {
        print(value)
    }
}
