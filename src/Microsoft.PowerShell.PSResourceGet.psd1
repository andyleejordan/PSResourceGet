# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

@{
    RootModule             = './Microsoft.PowerShell.PSResourceGet.dll'
    NestedModules          = @('./Microsoft.PowerShell.PSResourceGet.psm1')
    ModuleVersion          = '1.0.5'
    CompatiblePSEditions   = @('Core', 'Desktop')
    GUID                   = 'e4e0bda1-0703-44a5-b70d-8fe704cd0643'
    Author                 = 'Microsoft Corporation'
    CompanyName            = 'Microsoft Corporation'
    Copyright              = '(c) Microsoft Corporation. All rights reserved.'
    Description            = 'PowerShell module with commands for discovering, installing, updating and publishing the PowerShell artifacts like Modules, Scripts, and DSC Resources.'
    PowerShellVersion      = '5.1'
    DotNetFrameworkVersion = '2.0'
    CLRVersion             = '4.0.0'
    FormatsToProcess       = 'PSGet.Format.ps1xml'
    CmdletsToExport        = @(
        'Find-PSResource',
        'Get-InstalledPSResource',
        'Get-PSResourceRepository',
        'Get-PSScriptFileInfo',
        'Install-PSResource',
        'Register-PSResourceRepository',
        'Save-PSResource',
        'Set-PSResourceRepository',
        'New-PSScriptFileInfo',
        'Test-PSScriptFileInfo',
        'Update-PSScriptFileInfo',
        'Publish-PSResource',
        'Uninstall-PSResource',
        'Unregister-PSResourceRepository',
        'Update-PSModuleManifest',
        'Update-PSResource'
    )
    FunctionsToExport      = @(
        'Import-PSGetRepository'
    )
    VariablesToExport = 'PSGetPath'
    AliasesToExport = @(
        'Get-PSResource',
        'fdres',
        'isres',
        'pbres',
        'udres')
    PrivateData = @{
        PSData = @{
            #Prerelease   = ''
            Tags         = @('PackageManagement',
                'PSEdition_Desktop',
                'PSEdition_Core',
                'Linux',
                'Mac',
                'Windows')
            ProjectUri   = 'https://go.microsoft.com/fwlink/?LinkId=828955'
            LicenseUri   = 'https://go.microsoft.com/fwlink/?LinkId=829061'
            ReleaseNotes = @'
## 1.0.5

### Bug Fixes
- Update `nuget.config` to use PowerShell packages feed (#1649)
- Refactor V2ServerAPICalls and NuGetServerAPICalls to use object-oriented query/filter builder (#1645 Thanks @sean-r-williams!)
- Fix unnecessary `and` for version globbing in V2ServerAPICalls (#1644 Thanks again @sean-r-williams!)
- Fix requiring `tags` in server response (#1627 Thanks @evelyn-bi!)
- Add 10 minute timeout to HTTPClient (#1626)
- Fix save script without `-IncludeXml` (#1609, #1614 Thanks @o-l-a-v!)
- PAT token fix to translate into HttpClient 'Basic Authorization'(#1599 Thanks @gerryleys!)
- Fix incorrect request url when installing from ADO (#1597 Thanks @antonyoni!)
- Improved exception handling (#1569)
- Ensure that .NET methods are not called in order to enable use in Constrained Language Mode (#1564)

## 1.0.4.1

- PSResourceGet packaging update
            
## 1.0.4

### Patch
- Dependency package updates

## 1.0.3

### Bug Fixes
- Bug fix for null package version in `Install-PSResource`
            
## 1.0.2

### Bug Fixes
- Bug fix for `Update-PSResource` not updating from correct repository (#1549)
- Bug fix for creating temp home directory on Unix (#1544)
- Bug fix for creating `InstalledScriptInfos` directory when it does not exist (#1542)
- Bug fix for `Update-ModuleManifest` throwing null pointer exception (#1538)
- Bug fix for `name` property not populating in `PSResourceInfo` object when using `Find-PSResource` with JFrog Artifactory (#1535)
- Bug fix for incorrect configuration of requests to JFrog Artifactory v2 endpoints (#1533 Thanks @sean-r-williams!)
- Bug fix for determining JFrog Artifactory repositories (#1532 Thanks @sean-r-williams!)
- Bug fix for v2 server repositories incorrectly adding script endpoint (1526)
- Bug fixes for null references (#1525)
- Typo fixes in message prompts in `Install-PSResource` (#1510 Thanks @NextGData!)
- Bug fix to add `NormalizedVersion` property to `AdditionalMetadata` only when it exists (#1503 Thanks @sean-r-williams!)
- Bug fix to verify whether `Uri` is a UNC path and set respective `ApiVersion` (#1479 Thanks @kborowinski!)

## 1.0.1

### Bug Fixes
- Bugfix to update Unix local user installation paths to be compatible with .NET 7 and .NET 8 (#1464)
- Bugfix for Import-PSGetRepository in Windows PowerShell (#1460)
- Bugfix for Test-PSScriptFileInfo to be less sensitive to whitespace (#1457)
- Bugfix to overwrite rels/rels directory on net472 when extracting nupkg to directory (#1456)
- Bugfix to add pipeline by property name support for Name and Repository properties for Find-PSResource (#1451 Thanks @ThomasNieto!)

## 1.0.0

### New Features
- Add `ApiVersion` parameter for `Register-PSResourceRepository` (#1431)

### Bug Fixes
- Automatically set the ApiVersion to v2 for repositories imported from PowerShellGet (#1430)
- Bug fix ADO v2 feed installation failures (#1429)
- Bug fix Artifactory v2 endpoint failures (#1428)
- Bug fix Artifactory v3 endpoint failures (#1427)
- Bug fix `-RequiredResource` silent failures (#1426)
- Bug fix for v2 repository returning extra packages for `-Tag` based search with `-Prerelease` (#1405) 

See change log (CHANGELOG.md) at https://github.com/PowerShell/PSResourceGet
'@
        }
    }

    HelpInfoUri            = 'https://go.microsoft.com/fwlink/?linkid=2238183'
}
