# Changelog

All notable changes to the "QuickSearch-NG" extension will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-10-06

### Added
- Rebranded extension to **QuickSearch-NG** v1.0.0 under gOOvER.
- Automatic settings migration from legacy `felixkmh_QuickSearch_Plugin` configuration if detected.
- PowerShell automated build and packaging script (`build.ps1`).

### Changed
- Modernized all projects to SDK-style project formats targeting `.NET Framework 4.6.2`.
- Updated `PlayniteSDK` reference to latest `6.18.0`.
- Integrated `PlayniteCommon` submodule directly into the repository and removed legacy `.gitmodules`.
- Cleaned up build warnings and package dependencies.

---

## Legacy Changelog (Felixkmh QuickSearch)

### v2.2.0 (2021-09-15)

#### Fix
- Resource name typo
- Wrong icon for addons action
- ITAD and CheapShark subitemsources names didn't use localization

#### Feat
- Added action to open add-on menu

### v2.1.1 (2021-09-10)

#### Fix
- Crash in some cases when opening the search window
- Blurred background no longer shifts when sidepanels open

#### Refactor
- Added UiHelper
- Added empty constructor for GameSearchItem

### v2.1.0 (2021-09-04)

### v2.0.0 (2021-09-03)

### v1.5.1 (2021-06-16)

### v1.5.0 (2021-06-13)
