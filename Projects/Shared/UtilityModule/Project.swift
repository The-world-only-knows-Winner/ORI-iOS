import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Shared.UtilityModule.rawValue,
    targets: [
        .implements(module: .shared(.UtilityModule), dependencies: [
            .shared(target: .GlobalThirdPartyLibrary)
        ]),
        .tests(module: .shared(.UtilityModule), dependencies: [
            .shared(target: .UtilityModule)
        ])
    ]
)