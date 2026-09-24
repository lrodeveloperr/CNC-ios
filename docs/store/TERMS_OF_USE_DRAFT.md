# CNC Repeat Job Bench — App-specific Terms of Use (draft)

**Draft date:** 24 September 2026 · **Not yet published or effective.**
**Provider proposed for publication:** WorksBien Studios Inc. Confirm the legal publisher shown in App Store Connect before publishing.
**Contact:** [info@worksbienstudios.com](mailto:info@worksbienstudios.com).

These app-specific terms explain CNC Repeat Job Bench's workflow and subscriptions. The [Apple Standard Licensed Application End User License Agreement](https://www.apple.com/legal/internet-services/itunes/dev/stdeula/) governs the license to the app unless a different App Store Connect EULA is expressly adopted. Apple's App Store and payment terms govern purchases. If these app-specific terms and mandatory consumer rights conflict, those rights continue to apply. Confirm with counsel how this page relates to the Apple EULA before publishing.

## What the app does

The app lets you record repeat-job setup references, operator-entered measurements, first-piece and in-process reviews, production counts, changes, holds, handoffs, exports, backups and archives. A name or approval entered in the app is a record of the user's assertion. The app does not authenticate shop authority, measure a workpiece, operate CNC machinery, certify conformity, determine whether equipment is safe, or replace drawings, machine instructions, supervision or a shop quality system.

You are responsible for checking that entries match the physical job and current approved documents; assigning appropriately trained people; confirming the reviewer has the required authority; and deciding whether a part, process or machine may proceed. Follow your employer's instructions and applicable safety requirements.

## Free use and Pro

Free use covers the first two distinct **part-and-machine families** recorded through approved setups; drawing or setup revisions within a family do not themselves create a new family. Pro, available as a monthly or annual auto-renewable subscription through Apple, permits approvals and new runs for additional families while the subscription is active. The purchase screen shows the applicable localized price, renewal period and current offer terms before you authorize payment. A Pro purchase is for app access, not a guarantee of inspection quality or uninterrupted machine production.

Apple bills and manages the subscription. Unless cancelled under Apple's terms, it renews automatically. Manage or cancel it in your Apple subscription settings; stopping renewal normally does not erase access before the paid period ends. Use **Restore Purchases** in the app if an eligible subscription is missing. Apple's purchase and refund processes apply. We do not set a refund rule here.

If Pro expires or is revoked, existing records and the first two free families remain available. Starting a new run for a family created beyond the free allowance requires Pro. The app aims to preserve access to open work and safety-related records rather than hiding them on lapse; test this in the final release build before publishing this promise.

## Your records

You control the job information you enter and are responsible for having permission to store or share drawings, photographs, employee names and customer data. The app stores records on your device and lets you deliberately export or share them. Keep independent copies needed by your shop: deleting the app, replacing a database, losing a device, or misplacing an archive file can make records unavailable. An archive receipt alone is not a recoverable archive file. The app is not a regulated quality certification, evidence-preservation or legal-records service.

Do not misuse the app to falsify a measurement, conceal a hold, impersonate a reviewer, or disclose records without authorization. It does not provide a shared account or identity-verification system.

## Availability and contact

Features can change with updates, iOS support and Apple purchase availability. Material changes to paid benefits must be explained before they affect an existing subscription, subject to applicable law and Apple's terms. For help, contact [info@worksbienstudios.com](mailto:info@worksbienstudios.com). The [Privacy Policy](PRIVACY_POLICY_DRAFT.md) explains local records, exports, Apple purchases and support correspondence.

### Publication checks — remove this section from the live terms

1. Confirm legal publisher, effective date and the exact Apple EULA choice in App Store Connect; if using a custom EULA, reconcile it with these terms.
2. Test every free/Pro boundary, restore and lapse path in the final compiled build; confirm live subscription products and their group.
3. Replace the relative privacy link with the public HTTPS privacy URL.
4. Review local consumer, occupational safety and data-record rules for intended territories with a qualified reviewer before offering the app there.
5. Publish to HTTPS and replace the app's example.com Terms URL; verify Settings and paywall links.

Source: `Engine.swift`, `BenchStoreKit.swift`, `ShellConfiguration.swift`; [Apple subscription guidance](https://developer.apple.com/app-store/subscriptions/) and [Apple Standard EULA](https://www.apple.com/legal/internet-services/itunes/dev/stdeula/), reviewed 2026-09-24.
