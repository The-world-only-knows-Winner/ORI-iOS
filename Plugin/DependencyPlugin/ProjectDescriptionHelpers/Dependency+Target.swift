import ProjectDescription

// swiftlint: disable all
public extension TargetDependency {
    struct Feature {}
    struct Domain {}
    struct Core {}
    struct Shared {}
}

public extension TargetDependency.Feature {
    static let ChangeProfileFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.ChangeProfileFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.ChangeProfileFeature.rawValue)
    )
    static let ChangeProfileFeature = TargetDependency.project(
        target: ModulePaths.Feature.ChangeProfileFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.ChangeProfileFeature.rawValue)
    )
    static let RenewalPasswordFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.RenewalPasswordFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.RenewalPasswordFeature.rawValue)
    )
    static let RenewalPasswordFeature = TargetDependency.project(
        target: ModulePaths.Feature.RenewalPasswordFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.RenewalPasswordFeature.rawValue)
    )
    static let OnboardingFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.OnboardingFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.OnboardingFeature.rawValue)
    )
    static let OnboardingFeature = TargetDependency.project(
        target: ModulePaths.Feature.OnboardingFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.OnboardingFeature.rawValue)
    )

    static let MyPageFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.MyPageFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.MyPageFeature.rawValue)
    )
    static let MyPageFeature = TargetDependency.project(
        target: ModulePaths.Feature.MyPageFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.MyPageFeature.rawValue)
    )
    static let HomeFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.HomeFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.HomeFeature.rawValue)
    )
    static let HomeFeature = TargetDependency.project(
        target: ModulePaths.Feature.HomeFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.HomeFeature.rawValue)
    )
    static let BaseFeature = TargetDependency.project(
        target: ModulePaths.Feature.BaseFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.BaseFeature.rawValue)
    )
    static let SplashFeature = TargetDependency.project(
        target: ModulePaths.Feature.SplashFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.SplashFeature.rawValue)
    )
    static let SplashFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.SplashFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.SplashFeature.rawValue)
    )
    static let RootFeature = TargetDependency.project(
        target: ModulePaths.Feature.RootFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.RootFeature.rawValue)
    )
    static let RootFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.RootFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.RootFeature.rawValue)
    )
    static let SignupFeature = TargetDependency.project(
        target: ModulePaths.Feature.SignupFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.SignupFeature.rawValue)
    )
    static let SignupFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.SignupFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.SignupFeature.rawValue)
    )
    static let SigninFeature = TargetDependency.project(
        target: ModulePaths.Feature.SigninFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Feature.SigninFeature.rawValue)
    )
    static let SigninFeatureInterface = TargetDependency.project(
        target: ModulePaths.Feature.SigninFeature.targetName(type: .interface),
        path: .relativeToFeature(ModulePaths.Feature.SigninFeature.rawValue)
    )
}

public extension TargetDependency.Domain {
    static let StationDomainTesting = TargetDependency.project(
        target: ModulePaths.Domain.StationDomain.targetName(type: .testing),
        path: .relativeToDomain(ModulePaths.Domain.StationDomain.rawValue)
    )
    static let StationDomainInterface = TargetDependency.project(
        target: ModulePaths.Domain.StationDomain.targetName(type: .interface),
        path: .relativeToDomain(ModulePaths.Domain.StationDomain.rawValue)
    )
    static let StationDomain = TargetDependency.project(
        target: ModulePaths.Domain.StationDomain.targetName(type: .sources),
        path: .relativeToDomain(ModulePaths.Domain.StationDomain.rawValue)
    )
    static let RouteDomainTesting = TargetDependency.project(
        target: ModulePaths.Domain.RouteDomain.targetName(type: .testing),
        path: .relativeToDomain(ModulePaths.Domain.RouteDomain.rawValue)
    )
    static let RouteDomainInterface = TargetDependency.project(
        target: ModulePaths.Domain.RouteDomain.targetName(type: .interface),
        path: .relativeToDomain(ModulePaths.Domain.RouteDomain.rawValue)
    )
    static let RouteDomain = TargetDependency.project(
        target: ModulePaths.Domain.RouteDomain.targetName(type: .sources),
        path: .relativeToDomain(ModulePaths.Domain.RouteDomain.rawValue)
    )
    static let UserDomainTesting = TargetDependency.project(
        target: ModulePaths.Domain.UserDomain.targetName(type: .testing),
        path: .relativeToDomain(ModulePaths.Domain.UserDomain.rawValue)
    )
    static let UserDomainInterface = TargetDependency.project(
        target: ModulePaths.Domain.UserDomain.targetName(type: .interface),
        path: .relativeToDomain(ModulePaths.Domain.UserDomain.rawValue)
    )
    static let UserDomain = TargetDependency.project(
        target: ModulePaths.Domain.UserDomain.targetName(type: .sources),
        path: .relativeToDomain(ModulePaths.Domain.UserDomain.rawValue)
    )
    static let BaseDomain = TargetDependency.project(
        target: ModulePaths.Domain.BaseDomain.targetName(type: .sources),
        path: .relativeToDomain(ModulePaths.Domain.BaseDomain.rawValue)
    )
    static let AuthDomain = TargetDependency.project(
        target: ModulePaths.Domain.AuthDomain.targetName(type: .sources),
        path: .relativeToDomain(ModulePaths.Domain.AuthDomain.rawValue)
    )
    static let AuthDomainInterface = TargetDependency.project(
        target: ModulePaths.Domain.AuthDomain.targetName(type: .interface),
        path: .relativeToDomain(ModulePaths.Domain.AuthDomain.rawValue)
    )
    static let AuthDomainTesting = TargetDependency.project(
        target: ModulePaths.Domain.AuthDomain.targetName(type: .testing),
        path: .relativeToDomain(ModulePaths.Domain.AuthDomain.rawValue)
    )
}

public extension TargetDependency.Core {
    static let DesignSystem = TargetDependency.project(
        target: ModulePaths.Core.DesignSystem.targetName(type: .sources),
        path: .relativeToCore(ModulePaths.Core.DesignSystem.rawValue)
    )
    static let JwtStoreTesting = TargetDependency.project(
        target: ModulePaths.Core.JwtStore.targetName(type: .testing),
        path: .relativeToCore(ModulePaths.Core.JwtStore.rawValue)
    )
    static let JwtStoreInterface = TargetDependency.project(
        target: ModulePaths.Core.JwtStore.targetName(type: .interface),
        path: .relativeToCore(ModulePaths.Core.JwtStore.rawValue)
    )
    static let JwtStore = TargetDependency.project(
        target: ModulePaths.Core.JwtStore.targetName(type: .sources),
        path: .relativeToCore(ModulePaths.Core.JwtStore.rawValue)
    )
}

public extension TargetDependency.Shared {
    static let UtilityModule = TargetDependency.project(
        target: ModulePaths.Shared.UtilityModule.targetName(type: .sources),
        path: .relativeToShared(ModulePaths.Shared.UtilityModule.rawValue)
    )
    static let GlobalThirdPartyLibrary = TargetDependency.project(
        target: ModulePaths.Shared.GlobalThirdPartyLibrary.targetName(type: .sources),
        path: .relativeToShared(ModulePaths.Shared.GlobalThirdPartyLibrary.rawValue)
    )
}
