import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorGpsEnableIosPlugin)
public class CapacitorGpsEnableIosPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "capacitorGpsEnableIosPlugin"
    public let jsName = "capacitorGpsEnableIos"
    private var gpsLocationPermission: String? = "lol"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "isGpsEnabled", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = capacitorGpsEnableIos()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") + "\(self.gpsLocationPermission)" ?? ""
        
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc public func isGpsEnabled(_ call: CAPPluginCall) -> Void {
        self.gpsLocationPermission = call.getString("value") ?? ""

        // Optional: You can send this value immediately to the JS side if needed
        self.notifyListeners("gpsLocationPermission", data: [
            "value": self.gpsLocationPermission
        ])

        call.resolve([
            "success": true,
            "value": self.gpsLocationPermission
        ])
    }
     // Function that gets triggered from the JS side
    @objc func customBoolFunction(_ call: CAPPluginCall) {
        // Pass the stored value to the JS side every time this function is called
        if let value = gpsLocationPermission {
            call.resolve([
                "success": true,
                "value": value
            ])
        } else {
            call.reject("No value received from AppDelegate yet")
        }
    }
}
