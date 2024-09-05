import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(capacitorGpsEnableIosPlugin)
public class capacitorGpsEnableIosPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "capacitorGpsEnableIosPlugin"
    public let jsName = "capacitorGpsEnableIos"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = capacitorGpsEnableIos()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
