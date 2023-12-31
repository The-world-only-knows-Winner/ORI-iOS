

import AuthDomain
import AuthDomainInterface
import ChangeProfileFeature
import ChangeProfileFeatureInterface
import DesignSystem
import HomeFeature
import HomeFeatureInterface
import JwtStoreInterface
import MyPageFeature
import MyPageFeatureInterface
import NeedleFoundation
import OnboardingFeature
import OnboardingFeatureInterface
import RenewalPasswordFeature
import RenewalPasswordFeatureInterface
import RootFeature
import RootFeatureInterface
import RouteDomain
import RouteDomainInterface
import SigninFeature
import SigninFeatureInterface
import SignupFeature
import SignupFeatureInterface
import SplashFeature
import SplashFeatureInterface
import StationDomain
import StationDomainInterface
import SwiftUI
import UserDomain
import UserDomainInterface

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class SplashDependencye0cb7136f2ec3edfd60aProvider: SplashDependency {
    var tokenRefreshUseCase: any TokenRefreshUseCase {
        return appComponent.tokenRefreshUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SplashComponent
private func factoryace9f05f51d68f4c0677f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SplashDependencye0cb7136f2ec3edfd60aProvider(appComponent: parent1(component) as! AppComponent)
}
private class OnboardingDependencyf77d0055983a00cf8835Provider: OnboardingDependency {
    var signinFactory: any SigninFactory {
        return appComponent.signinFactory
    }
    var authSignupFactory: any AuthSignupFactory {
        return appComponent.authSignupFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->OnboardingComponent
private func factory88dc13cc29c5719e2b01f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return OnboardingDependencyf77d0055983a00cf8835Provider(appComponent: parent1(component) as! AppComponent)
}
private class UserInfoSignupDependency5d825eaf14e0992a73dfProvider: UserInfoSignupDependency {
    var signupUseCase: any SignupUseCase {
        return appComponent.signupUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->UserInfoSignupComponent
private func factoryfbb3c0678df14d66f7f1f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return UserInfoSignupDependency5d825eaf14e0992a73dfProvider(appComponent: parent1(component) as! AppComponent)
}
private class AuthSignupDependencyd54db33cc08328be1537Provider: AuthSignupDependency {
    var userInfoSignupFactory: any UserInfoSignupFactory {
        return appComponent.userInfoSignupFactory
    }
    var sendAuthCodeUseCase: any SendAuthCodeUseCase {
        return appComponent.sendAuthCodeUseCase
    }
    var verifyAuthCodeUseCase: any VerifyAuthCodeUseCase {
        return appComponent.verifyAuthCodeUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->AuthSignupComponent
private func factoryc404adb4985b32c75154f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return AuthSignupDependencyd54db33cc08328be1537Provider(appComponent: parent1(component) as! AppComponent)
}
private class MyPageDependency48d84b530313b3ee40feProvider: MyPageDependency {
    var renewalPasswordFactory: any RenewalPasswordFactory {
        return appComponent.renewalPasswordFactory
    }
    var changeProfileFactory: any ChangeProfileFactory {
        return appComponent.changeProfileFactory
    }
    var fetchMyInfoUseCase: any FetchMyInfoUseCase {
        return appComponent.fetchMyInfoUseCase
    }
    var logoutUseCase: any LogoutUseCase {
        return appComponent.logoutUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->MyPageComponent
private func factory0f6f456ebf157d02dfb3f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MyPageDependency48d84b530313b3ee40feProvider(appComponent: parent1(component) as! AppComponent)
}
private class RootDependency3944cc797a4a88956fb5Provider: RootDependency {
    var onboardingFactory: any OnboardingFactory {
        return appComponent.onboardingFactory
    }
    var homeFactory: any HomeFactory {
        return appComponent.homeFactory
    }
    var splashFactory: any SplashFactory {
        return appComponent.splashFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RootComponent
private func factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RootDependency3944cc797a4a88956fb5Provider(appComponent: parent1(component) as! AppComponent)
}
private class SigninDependencyde06a9d0b22764487733Provider: SigninDependency {
    var signinUseCase: any SigninUseCase {
        return appComponent.signinUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SigninComponent
private func factory2882a056d84a613debccf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SigninDependencyde06a9d0b22764487733Provider(appComponent: parent1(component) as! AppComponent)
}
private class HomeDependency443c4e1871277bd8432aProvider: HomeDependency {
    var myPageFactory: any MyPageFactory {
        return appComponent.myPageFactory
    }
    var routeFactory: any RouteFactory {
        return appComponent.routeFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->HomeComponent
private func factory67229cdf0f755562b2b1f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return HomeDependency443c4e1871277bd8432aProvider(appComponent: parent1(component) as! AppComponent)
}
private class RouteDependency8090bd3edd72c0941287Provider: RouteDependency {
    var confirmFactory: any ConfirmFactory {
        return appComponent.confirmFactory
    }
    var searchRouteFactory: any SearchRouteFactory {
        return appComponent.searchRouteFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RouteComponent
private func factoryb38e7a5fde2fe65187ebf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RouteDependency8090bd3edd72c0941287Provider(appComponent: parent1(component) as! AppComponent)
}
private class ConfirmDependency5f00edb9e904397d5fabProvider: ConfirmDependency {


    init() {

    }
}
/// ^->AppComponent->ConfirmComponent
private func factory00ab5addbed09be3f3f4e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ConfirmDependency5f00edb9e904397d5fabProvider()
}
private class SearchRouteDependencyd7df8f19dbadba3211baProvider: SearchRouteDependency {


    init() {

    }
}
/// ^->AppComponent->SearchRouteComponent
private func factory1a988a858e24766a7c25e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SearchRouteDependencyd7df8f19dbadba3211baProvider()
}
private class ChangeProfileDependency18055275199967076a28Provider: ChangeProfileDependency {
    var updateMyInfoUseCase: any UpdateMyInfoUseCase {
        return appComponent.updateMyInfoUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->ChangeProfileComponent
private func factory239204ef0c47c0c68c97f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChangeProfileDependency18055275199967076a28Provider(appComponent: parent1(component) as! AppComponent)
}
private class RenewalPasswordDependencya722dc02d5f3ad3403cfProvider: RenewalPasswordDependency {
    var changePasswordUseCase: any ChangePasswordUseCase {
        return appComponent.changePasswordUseCase
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RenewalPasswordComponent
private func factory236a429a80d834e1f370f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RenewalPasswordDependencya722dc02d5f3ad3403cfProvider(appComponent: parent1(component) as! AppComponent)
}

#else
extension AppComponent: Registration {
    public func registerItems() {

        localTable["keychain-any Keychain"] = { [unowned self] in self.keychain as Any }
        localTable["remoteRouteDataSource-any RemoteRouteDataSource"] = { [unowned self] in self.remoteRouteDataSource as Any }
        localTable["routeRepository-any RouteRepository"] = { [unowned self] in self.routeRepository as Any }
        localTable["fetchRouteListUseCase-any FetchRouteListUseCase"] = { [unowned self] in self.fetchRouteListUseCase as Any }
        localTable["addRouteUseCase-any AddRouteUseCase"] = { [unowned self] in self.addRouteUseCase as Any }
        localTable["fetchMyRouteListUseCase-any FetchMyRouteListUseCase"] = { [unowned self] in self.fetchMyRouteListUseCase as Any }
        localTable["remoteAuthDataSource-any RemoteAuthDataSource"] = { [unowned self] in self.remoteAuthDataSource as Any }
        localTable["authRepository-any AuthRepository"] = { [unowned self] in self.authRepository as Any }
        localTable["signinUseCase-any SigninUseCase"] = { [unowned self] in self.signinUseCase as Any }
        localTable["changePasswordUseCase-any ChangePasswordUseCase"] = { [unowned self] in self.changePasswordUseCase as Any }
        localTable["sendAuthCodeUseCase-any SendAuthCodeUseCase"] = { [unowned self] in self.sendAuthCodeUseCase as Any }
        localTable["verifyAuthCodeUseCase-any VerifyAuthCodeUseCase"] = { [unowned self] in self.verifyAuthCodeUseCase as Any }
        localTable["logoutUseCase-any LogoutUseCase"] = { [unowned self] in self.logoutUseCase as Any }
        localTable["tokenRefreshUseCase-any TokenRefreshUseCase"] = { [unowned self] in self.tokenRefreshUseCase as Any }
        localTable["signinFactory-any SigninFactory"] = { [unowned self] in self.signinFactory as Any }
        localTable["authSignupFactory-any AuthSignupFactory"] = { [unowned self] in self.authSignupFactory as Any }
        localTable["userInfoSignupFactory-any UserInfoSignupFactory"] = { [unowned self] in self.userInfoSignupFactory as Any }
        localTable["onboardingFactory-any OnboardingFactory"] = { [unowned self] in self.onboardingFactory as Any }
        localTable["homeFactory-any HomeFactory"] = { [unowned self] in self.homeFactory as Any }
        localTable["splashFactory-any SplashFactory"] = { [unowned self] in self.splashFactory as Any }
        localTable["myPageFactory-any MyPageFactory"] = { [unowned self] in self.myPageFactory as Any }
        localTable["renewalPasswordFactory-any RenewalPasswordFactory"] = { [unowned self] in self.renewalPasswordFactory as Any }
        localTable["changeProfileFactory-any ChangeProfileFactory"] = { [unowned self] in self.changeProfileFactory as Any }
        localTable["routeFactory-any RouteFactory"] = { [unowned self] in self.routeFactory as Any }
        localTable["confirmFactory-any ConfirmFactory"] = { [unowned self] in self.confirmFactory as Any }
        localTable["searchRouteFactory-any SearchRouteFactory"] = { [unowned self] in self.searchRouteFactory as Any }
        localTable["remoteUserDataSource-any RemoteUserDataSource"] = { [unowned self] in self.remoteUserDataSource as Any }
        localTable["userRepository-any UserRepository"] = { [unowned self] in self.userRepository as Any }
        localTable["signupUseCase-any SignupUseCase"] = { [unowned self] in self.signupUseCase as Any }
        localTable["fetchMyInfoUseCase-any FetchMyInfoUseCase"] = { [unowned self] in self.fetchMyInfoUseCase as Any }
        localTable["updateMyInfoUseCase-any UpdateMyInfoUseCase"] = { [unowned self] in self.updateMyInfoUseCase as Any }
        localTable["remoteStationDataSource-any RemoteStationDataSource"] = { [unowned self] in self.remoteStationDataSource as Any }
        localTable["stationRepository-any StationRepository"] = { [unowned self] in self.stationRepository as Any }
        localTable["fetchBusStationUseCase-any FetchBusStationUseCase"] = { [unowned self] in self.fetchBusStationUseCase as Any }
        localTable["fetchStationByStationNameUseCase-any FetchStationByStationNameUseCase"] = { [unowned self] in self.fetchStationByStationNameUseCase as Any }
    }
}
extension SplashComponent: Registration {
    public func registerItems() {
        keyPathToName[\SplashDependency.tokenRefreshUseCase] = "tokenRefreshUseCase-any TokenRefreshUseCase"
    }
}
extension OnboardingComponent: Registration {
    public func registerItems() {
        keyPathToName[\OnboardingDependency.signinFactory] = "signinFactory-any SigninFactory"
        keyPathToName[\OnboardingDependency.authSignupFactory] = "authSignupFactory-any AuthSignupFactory"
    }
}
extension UserInfoSignupComponent: Registration {
    public func registerItems() {
        keyPathToName[\UserInfoSignupDependency.signupUseCase] = "signupUseCase-any SignupUseCase"
    }
}
extension AuthSignupComponent: Registration {
    public func registerItems() {
        keyPathToName[\AuthSignupDependency.userInfoSignupFactory] = "userInfoSignupFactory-any UserInfoSignupFactory"
        keyPathToName[\AuthSignupDependency.sendAuthCodeUseCase] = "sendAuthCodeUseCase-any SendAuthCodeUseCase"
        keyPathToName[\AuthSignupDependency.verifyAuthCodeUseCase] = "verifyAuthCodeUseCase-any VerifyAuthCodeUseCase"
    }
}
extension MyPageComponent: Registration {
    public func registerItems() {
        keyPathToName[\MyPageDependency.renewalPasswordFactory] = "renewalPasswordFactory-any RenewalPasswordFactory"
        keyPathToName[\MyPageDependency.changeProfileFactory] = "changeProfileFactory-any ChangeProfileFactory"
        keyPathToName[\MyPageDependency.fetchMyInfoUseCase] = "fetchMyInfoUseCase-any FetchMyInfoUseCase"
        keyPathToName[\MyPageDependency.logoutUseCase] = "logoutUseCase-any LogoutUseCase"
    }
}
extension RootComponent: Registration {
    public func registerItems() {
        keyPathToName[\RootDependency.onboardingFactory] = "onboardingFactory-any OnboardingFactory"
        keyPathToName[\RootDependency.homeFactory] = "homeFactory-any HomeFactory"
        keyPathToName[\RootDependency.splashFactory] = "splashFactory-any SplashFactory"
    }
}
extension SigninComponent: Registration {
    public func registerItems() {
        keyPathToName[\SigninDependency.signinUseCase] = "signinUseCase-any SigninUseCase"
    }
}
extension HomeComponent: Registration {
    public func registerItems() {
        keyPathToName[\HomeDependency.myPageFactory] = "myPageFactory-any MyPageFactory"
        keyPathToName[\HomeDependency.routeFactory] = "routeFactory-any RouteFactory"
    }
}
extension RouteComponent: Registration {
    public func registerItems() {
        keyPathToName[\RouteDependency.confirmFactory] = "confirmFactory-any ConfirmFactory"
        keyPathToName[\RouteDependency.searchRouteFactory] = "searchRouteFactory-any SearchRouteFactory"
    }
}
extension ConfirmComponent: Registration {
    public func registerItems() {

    }
}
extension SearchRouteComponent: Registration {
    public func registerItems() {

    }
}
extension ChangeProfileComponent: Registration {
    public func registerItems() {
        keyPathToName[\ChangeProfileDependency.updateMyInfoUseCase] = "updateMyInfoUseCase-any UpdateMyInfoUseCase"
    }
}
extension RenewalPasswordComponent: Registration {
    public func registerItems() {
        keyPathToName[\RenewalPasswordDependency.changePasswordUseCase] = "changePasswordUseCase-any ChangePasswordUseCase"
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->AppComponent->SplashComponent", factoryace9f05f51d68f4c0677f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->OnboardingComponent", factory88dc13cc29c5719e2b01f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->UserInfoSignupComponent", factoryfbb3c0678df14d66f7f1f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->AuthSignupComponent", factoryc404adb4985b32c75154f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->MyPageComponent", factory0f6f456ebf157d02dfb3f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SigninComponent", factory2882a056d84a613debccf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->HomeComponent", factory67229cdf0f755562b2b1f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RouteComponent", factoryb38e7a5fde2fe65187ebf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->ConfirmComponent", factory00ab5addbed09be3f3f4e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SearchRouteComponent", factory1a988a858e24766a7c25e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->ChangeProfileComponent", factory239204ef0c47c0c68c97f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RenewalPasswordComponent", factory236a429a80d834e1f370f47b58f8f304c97af4d5)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
