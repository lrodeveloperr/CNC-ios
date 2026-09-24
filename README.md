# CNC Repeat Job Bench for iOS

A local-first, native SwiftUI workbench for repeat CNC jobs. This repository contains the complete iPhone/iPad app, its vendored `CNCRepeatJobEngine` Swift package, and the package, shell, and UI tests. It is derived from the [GoodUse iOS shell](https://github.com/lrodeveloperr/Ios-shell); the white Native ledger layout is implemented by `Shell/Product/CNCFeatureProvider.swift`.

## App flow

| Area | Operator task |
| --- | --- |
| Jobs | Start an exact approved part, drawing, and machine combination. |
| Run | Check preparation, measure and review the first piece, record counts, complete required or manual in-process inspection, resolve holds, and hand off or close the run. |
| Setups | Draft, revise, set an inspection policy, and approve setup references. |
| Records | Review outcomes and audit events, export handoffs, back up, and archive or restore verified runs. |

The first two distinct part-and-machine families are free. An auto-renewable Pro subscription unlocks more families; the engine checks verified StoreKit access at the mutation boundary. Existing records, safety revisions, and exports remain accessible after a subscription lapses. See [`docs/CNC_NATIVE_WIRING.md`](docs/CNC_NATIVE_WIRING.md) for the design review and remaining release gates.

## Build and test on a Mac

```sh
brew install xcodegen
swift test --package-path Vendor/CNCRepeatJobEngine
bash scripts/validate-shell.sh --template
xcodegen generate
xcodebuild -project Shell.xcodeproj -scheme Shell -configuration Debug -sdk iphonesimulator -destination 'generic/platform=iOS Simulator' CODE_SIGNING_ALLOWED=NO build
```

Run the `iOS CNC build and test` workflow manually for simulator build, package tests, and shell tests. It does not upload to TestFlight. The separate TestFlight workflow requires the release validation gate, signing assets, and App Store Connect configuration.

## Release blockers

- The Swift app has not been compiled or run in Xcode in the current workspace. Run package, shell, and UI tests and check the SF Symbols and app icon on an iPhone and iPad.
- Replace the example support email and legal URLs in `Shell/App/ShellConfiguration.swift` with published, reviewed destinations, then pass `scripts/validate-shell.sh --release`.
- Configure the monthly and annual auto-renewable products in one App Store Connect subscription group. The UI reads localized prices from StoreKit.

`AGENTS.md` and the shell docs describe the inherited architecture and change boundaries. The default `Shell` target is ad-free; the optional shell advertising target is not part of this CNC product.
