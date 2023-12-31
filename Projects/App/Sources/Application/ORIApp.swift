import SwiftUI
import MapKit
import BaseFeature
import JwtStoreInterface
import JwtStore
import NeedleFoundation

@main
struct ORIAPP: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var appState = AppState(sceneFlow: .splash)

    private let keychain: any Keychain

    init() {
        registerProviderFactories()
        self.keychain = KeychainImpl()
        appDelegate.keychain = keychain
    }

    var body: some Scene {
        WindowGroup {
            AppComponent(keychain: keychain).makeRootView()
                .environmentObject(appState)
        }
    }
}
