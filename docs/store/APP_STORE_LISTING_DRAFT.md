# CNC Repeat Job Bench — App Store listing draft

**Drafted:** 2026-09-24 · **Status:** DRAFT_READY for copy; not approved for submission or publication.
**Source revision:** `CNC-ios/main` at `75c446d6fcace1a01492f99566c31c77a88069ef` (source review only; no compiled archive).
**Product:** `com.goodusestudios.cncrepeatjobbench`, version 1.0, iOS 18+, iPhone and iPad.
**Locale:** en-US only at launch. The selectable UI language is English; the included Spanish shell catalog is not a translated CNC workflow.
**Publisher:** WorksBien Studios Inc. is named on the company website. Confirm the exact Apple seller and legal publisher before release.

## Fact ledger

| Claim | Source as reviewed 2026-09-24 | Confidence / release check |
| --- | --- | --- |
| Approved setup references and measured dimensions precede production | `Engine.swift`, `Models.swift`, `CNCFeatureProvider.swift` | Source-confirmed; Xcode/device test pending. |
| First-piece acceptance and in-process inspection use entered readings and named review | `Engine.swift`, `CNCFeatureProvider.swift` | Source-confirmed. The app does not itself measure or certify parts. |
| A lead selects an interval in good pieces or explicitly chooses manual-only inspection before setup approval | `Engine.swift` policy and inspection commands | Source-confirmed; human shop authority is self-asserted, not verified. |
| Good/scrap/quarantine count, issue hold, count correction, handoff, export and archive | `Engine.swift`, `Storage.swift`, `BenchAppModel.swift` | Source-confirmed; UI path and output need a device run. |
| Free tier: first two distinct part-and-machine families; Pro: additional families | `SetupFamily`, `Engine.swift`, `BenchStoreKit.swift` | Source-confirmed. Pricing and availability in App Store Connect unverified. |
| Monthly/annual auto-renewable products | `ShellConfiguration.swift`, `PaywallView.swift` | IDs configured; product records, subscription group and prices unverified. Reference US price proposal in `CNC_NATIVE_WIRING.md` is not a live offer. |
| Work records remain on device unless the user exports/shares them | `BenchRepository` local Application Support and `ShareLink` | Source-confirmed for the default target; final archive/SDK inventory and iCloud device backup behavior need confirmation. |
| No required login or physical CNC connection | Source paths contain no login or machine interface | Source-confirmed for this revision; verify compiled target. |
| Advertising/tracking | Default `Shell` target excludes the optional `ShellAds` variant; privacy manifest declares no collection/tracking | Release archive must prove that no advertising SDK or other data collector is linked. |
| English-only workflow | `ShellConfiguration.supportedLanguages` contains system and en; product UI labels are English | Confirm localization on device. |
| Support and legal links | `ShellConfiguration.swift` still contains example.com and support@example.com | **Release blocker:** publish real pages and wire their URLs/email. |

## App Store fields — en-US

| Field | Draft | Count / limit |
| --- | --- | ---: |
| Name | CNC Repeat Job Bench | 20 / 30 characters |
| Subtitle | First-piece & run checks | 24 / 30 characters |
| Keywords | `machinist,setup,inspection,measurement,handoff,tolerance,work order,production count,shop floor` | 95 / 100 UTF-8 bytes |
| Primary category | Business | Verify in App Store Connect |
| Secondary category | Productivity | Optional; verify in App Store Connect |
| Promotional text | Leave empty for initial listing | — |
| What's New | Omit for first release | — |
| Support URL | Proposed: `https://worksbienstudios.com/customerservice` | Route exists in website source; verify live before entry |
| Privacy URL | **Publish the reviewed app-specific privacy draft first** | Exact URL not assigned |
| Marketing URL | Optional; omit until a CNC landing page exists | — |
| Terms URL | Link to app-specific terms in Settings; include Apple standard EULA in description | Exact app-specific URL not assigned |

### Description

CNC Repeat Job Bench guides a repeat job from an approved setup through first-piece review, in-process checks and a recorded closeout.

Create a reference for each part, drawing revision and machine. Record stock, program, fixture, tools, offsets and documents, then enter dimensions and tolerances. At the machine, confirm what you observe before the first-piece measurement.

During a run:
• Record first-piece readings and a named review.
• Count good, scrap and quarantined parts, with reasoned corrections.
• Pause at a chosen good-piece interval for inspection or request a manual check.
• Log process changes and issues, resolve holds and hand work to another operator.
• Review run history and export a handoff PDF, runs CSV or local JSON backup.

Work records are stored on this device unless you choose to export or share them. No CNC connection or automatic measurement is required.

Free use covers the first two distinct part-and-machine families. Monthly or annual Pro subscriptions allow additional families. Existing runs and records remain accessible when Pro ends; starting a new run for a Pro-only family requires an active subscription. The purchase screen displays the current App Store price and renewal period.

The app helps document shop work. It does not operate a machine, verify physical measurements, certify parts or replace your shop's safety and quality procedures.

Terms of Use: https://www.apple.com/legal/internet-services/itunes/dev/stdeula/

**Description length:** 1,478 / 4,000 characters. Do not include this count note in the store field.

### Subscription metadata (draft; configure only after App Store Connect products exist)

| Product ID in source | Customer display name | Benefit description |
| --- | --- | --- |
| `com.goodusestudios.cncrepeatjobbench.pro.monthly` | CNC Pro Monthly | Approve and run more part-and-machine families. |
| `com.goodusestudios.cncrepeatjobbench.pro.annual` | CNC Pro Annual | Approve and run more part-and-machine families. |

These are two durations of the same Pro entitlement; place them in one subscription group. The source report suggests US reference prices of $4.99 per month and $39.99 per year, **not verified or set in App Store Connect**. Keep numeric prices out of listing copy until the live products are inspected.

## Launch screenshot brief — authentic app captures only

Capture **three English screenshots on each required iPhone and iPad master set** from the compiled app, using consistent fictional job data. Do not treat the earlier HTML Site as app screenshots.

| Order | Suggested capture | Optional short caption | Claim boundary |
| --- | --- | --- | --- |
| 1 — outcome | Run tab with job, status and next inspection due | Know where the run stands | Use a real run with approved first piece. |
| 2 — path | First-piece measurement and reviewer controls | Check the first piece | Show entered readings; no claim of automatic measurement. |
| 3 — proof | Records detail with outcome and handoff export, or inspection hold if clearer | Keep the job record | Show a real completed run, not fabricated data. |

Master portrait sizes currently accepted by Apple include iPhone 6.9-inch **1290 × 2796** and iPad 13-inch **2048 × 2732** pixels; confirm the actual simulator/capture sizes and Apple's live specification when producing assets. Check readability on iPhone SE, VoiceOver and Dynamic Type. The logo is the engine-stage spindle/cycle image at `Shell/Resources/Assets.xcassets/AppIcon.appiconset/AppIcon.png`; inspect it at small size beside CNC search results. No screenshots are supplied in this draft.

## ASO rationale

The title keeps the exact CNC repeat-job task. The subtitle adds the first-piece/run distinction. Relevant current App Store pages use terms including “CNC setup,” “inspection,” “shop floor,” “tool,” and “machine shop”; this is vocabulary observation, **not** search-volume or ranking evidence. Keywords cover applicable operator terms omitted from the title/subtitle; they avoid competitor names and unimplemented CNC calculators or machine integrations. Business reflects the shop workflow; Productivity is a plausible secondary category. Search-grid and app-name availability checks remain pending.

## App Store Connect answer pack (provisional)

| Field | Proposed answer | Evidence needed before submission |
| --- | --- | --- |
| App Privacy | Provisional “No data collected from the app” for the ad-free local target | Verify signed archive, linked SDKs, runtime traffic and Apple’s collection definition. User-chosen exports and support email still need policy disclosure. |
| Tracking / ads | No tracking or in-app ads in the default `Shell` target | Check final binary; optional `ShellAds` source must not be distributed. |
| Account / hardware | No account; no CNC connection required | Run end-to-end without accounts or hardware. |
| Subscription | Two auto-renewable durations of Pro in one group; StoreKit handles billing/restore/management | Confirm exact live IDs, display names, price, products, family-sharing choice and review assets; test lapse, grace, refund and restore. |
| Age rating | Answer Apple's questionnaire from the compiled product; likely general audience | Do not preselect a rating without questionnaire. |
| Content rights | Original source/icon and synthetic screenshot data | Verify rights to all icon/art and any sample drawings/photos. |
| Export compliance | Source `Info.plist` sets `ITSAppUsesNonExemptEncryption=false` | Confirm final archive and answer Apple's actual questions. |
| Territories | Undecided | Select after evaluating local legal and language obligations; no worldwide claim. |
| Privacy / support / terms | Pages not yet published; in-app URLs are placeholders | Publish, wire, and verify live pages before creating a listing. |

### Notes for App Review (draft)

No login or physical CNC machine is required. To explore the workflow, open **Setups → New setup draft** and enter fictional part, drawing revision, machine, setup revision, the six reference values, and at least one dimension with tolerance. Save the draft; open it, set an inspection policy (for example every two good pieces) with a reason, and approve. In **Jobs**, enter an operator name, select the approved setup, and start a job with a target. In **Run**, confirm six observed references, record the first-piece reading and named acceptance, and record good pieces until the inspection hold appears. **Records** shows history, exports, backups and archives. An operator-entered reviewer name is a shop assertion; the app cannot independently verify that person's authority or a physical measurement. The **Pro** entry in Jobs or **Upgrade** in Settings opens the monthly/annual StoreKit offers; the free limit is two distinct part-and-machine families. Supply live subscription products and deterministic sandbox test conditions before submission.

## Release checks and source log

| Check | Status / owner |
| --- | --- |
| Current Apple metadata, privacy, screenshots and subscriptions reviewed | 2026-09-24; links below. |
| Source code and privacy manifest reviewed | 2026-09-24; release archive and on-device behavior unverified. |
| `git diff --check`, localization and commerce-branding scripts | Passed on source import. |
| Swift 6/Xcode build, engine tests, shell tests, iPhone/iPad UI | Pending Mac runner / developer. |
| Authentic screenshots and icon at search size | Pending compiled app / design QA. |
| Live support/legal pages and in-app URL replacements | Pending publisher. |
| App Store Connect subscription products, age rating, territories, privacy and pricing | Pending publisher. |
| Legal review of privacy, terms and availability | Pending accountable reviewer. |

Official Apple sources reviewed 2026-09-24:
- [Product page and metadata](https://developer.apple.com/app-store/product-page/)
- [Platform-version fields](https://developer.apple.com/help/app-store-connect/reference/app-information/platform-version-information)
- [Screenshot sizes](https://developer.apple.com/help/app-store-connect/reference/app-information/screenshot-specifications/)
- [App privacy disclosure](https://developer.apple.com/help/app-store-connect/manage-app-information/manage-app-privacy/)
- [App Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- [Auto-renewable subscriptions](https://developer.apple.com/app-store/subscriptions/)
- [App Store categories](https://developer.apple.com/app-store/categories/)

Search vocabulary observed 2026-09-24: [Setup Vault](https://apps.apple.com/us/app/setup-vault/id6804824256), [HolderLog](https://apps.apple.com/us/app/holderlog-cnc-tool-manager/id6798544042), [CNC Flow](https://apps.apple.com/ca/app/cnc-flow/id6760844451). These pages describe other products, not this app's features or market share.
