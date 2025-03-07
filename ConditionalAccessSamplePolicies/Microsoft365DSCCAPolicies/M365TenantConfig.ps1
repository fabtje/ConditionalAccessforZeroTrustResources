# Generated with Microsoft365DSC version 1.22.420.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
    [parameter()]
    [System.Management.Automation.PSCredential]
    $Credential
)

Configuration M365TenantConfig
{
    param (
        [parameter()]
        [System.Management.Automation.PSCredential]
        $Credential
    )

    if ($null -eq $Credential)
    {
        <# Credentials #>
        $Credscredential = Get-Credential -Message "Credentials"

    }
    else
    {
        $CredsCredential = $Credential
    }

    $OrganizationName = $CredsCredential.UserName.Split('@')[1]
    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.23.809.1'

    Node localhost
    {
        
        AADConditionalAccessPolicy b658aeb3-d242-4390-8728-33ce0fbbb1e5
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA001-Global-BaseProtection-AllApps-AnyPlatform-BlockNonPersonas";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-AzureServiceAccounts","CA-Persona-GuestAdmins","CA-Persona-Guests","CA-Persona-CorpServiceAccounts","CA-Persona-Externals","CA-Persona-Admins","CA-BreakGlassAccounts","CA-Persona-Global-BaseProtection-Exclusions","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-Internals");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "3e53010c-a9c7-4230-bc12-de24eda63f46";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 9ac29ba8-1e07-4aa8-ab08-43eab8b16d97
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA002-Global-AttackSurfaceReduction-VariousApps-AnyPlatform-Block";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "7f2437de-1a67-4baa-8a5d-fd6a235288d4";
            IncludeApplications                      = @("None");
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy bf8ea9dd-154c-4fec-87a0-183bfe577248
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa","compliantDevice");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA100-Admins-BaseProtection-AllApps-AnyPlatform-CompliantorAADHJ";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("d4ebce55-015a-49b5-a083-c84d1797ae8c");
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Admins-BaseProtection-Exclusions","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-AzureServiceAccounts","CA-Persona-CorpServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "99b56601-10cc-4706-8b5b-3479ef3b0f4f";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 339e6062-e29c-4d2f-bb11-61eb5412a865
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("compliantDevice","domainJoinedDevice");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA101-Admins-IdentityProtection-AllApps-AnyPlatform-CombinedRegistration";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-AzureServiceAccounts","CA-Persona-CorpServiceAccounts","CA-Persona-Admins-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "9646b0dd-302d-4f8b-a100-fd0a268dca18";
            IncludeApplications                      = @();
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @("urn:user:registersecurityinfo");
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 55b03083-2e4e-410b-8ce5-e40058f285a8
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa","passwordChange");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA102-Admins-IdentityProtection-AllApps-AnyPlatform-MFAandPWDforMediumandHighUserRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-Microsoft365ServiceAccounts","CA-Persona-AzureServiceAccounts","CA-BreakGlassAccounts","CA-Persona-Admins-IdentityProtection-Exclusions","CA-Persona-CorpServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "AND";
            Id                                       = "29d61290-8fd1-4923-b937-25166009a4f4";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @("high","medium");
        }
        AADConditionalAccessPolicy 4d2cf861-4daa-46c3-a845-596f289af8b7
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA103-Admins-IdentityProtection-AllApps-AnyPlatform-MFAforMediumandHighSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-AzureServiceAccounts","CA-Persona-Admins-IdentityProtection-Exclusions","CA-Persona-CorpServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "d695b04f-1f3b-4ad0-a17a-c9a4314be67a";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high","medium");
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy b182c6e4-f321-428f-85f9-f8ce218d6c21
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA104-Admins-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-AzureServiceAccounts","CA-Persona-Admins-IdentityProtection-Exclusions","CA-Persona-CorpServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "34fb5388-591a-4cac-92bb-5c8d7423c17d";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy ff1f95d6-cb94-411c-b0c3-eb8106377ba2
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA105-Admins-AppProtection-MicrosoftIntuneEnrollment-AnyPlatform-MFA";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-AzureServiceAccounts","CA-Persona-Admins-AppProtection-Exclusions","CA-Persona-CorpServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "3b05a800-be5e-4244-820d-d8078d6ed1b1";
            IncludeApplications                      = @("d4ebce55-015a-49b5-a083-c84d1797ae8c");
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 9616fe64-7950-4c08-aaa9-20c0e676de7b
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("approvedApplication","compliantApplication");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA106-Admins-DataProtection-AllApps-iOSorAndroid-ClientAppandAPP";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Admins-DataProtection-Exclusions","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-AzureServiceAccounts","CA-Persona-CorpServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "f8da41f4-6503-4aaa-9635-afd8928ad462";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("android","iOS");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 9392f0fc-4ae6-4d30-a297-d75e59fbce91
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @();
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA107-Admins-DataProtection-AllApps-AnyPlatform-SessionPolicy";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Admins-DataProtection-Exclusions","CA-Persona-AzureServiceAccounts","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-CorpServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            Id                                       = "a427c2b2-004b-4c71-8b8a-a200357328ab";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $True;
            PersistentBrowserMode                    = "never";
            SignInFrequencyIsEnabled                 = $True;
            SignInFrequencyType                      = "hours";
            SignInFrequencyValue                     = 4;
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 249f94a9-b207-40e4-8391-13f4c61eff0f
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA108-Admins-AttackSurfaceReduction-AllApps-AnyPlatform-BlockUnknownPlatforms";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Microsoft365ServiceAccounts","CA-Persona-AzureServiceAccounts","CA-Persona-Admins-AttackSurfaceReduction-Exclusions","CA-Persona-CorpServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @("android","iOS","windows","windowsPhone","macOS","linux");
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "ef5c008e-5531-4926-8091-3f4f9c4873fa";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Admins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 853c87f0-52f0-48d6-84b8-de256811be84
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("compliantDevice","domainJoinedDevice");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA200-Internals-BaseProtection-AllApps-AnyPlatform-CompliantorAADHJ";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("d4ebce55-015a-49b5-a083-c84d1797ae8c");
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Internals-BaseProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "9ae17a00-e7b9-4cde-afde-35bd2847a605";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Internals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy f2aaa441-beb3-4ad5-9ffc-02c0de9a0e2d
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("compliantDevice","domainJoinedDevice");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA201-Internals-IdentityProtection-AllApps-AnyPlatform-CombinedRegistration";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Internals-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "2114e5cb-0391-42c9-82f5-e0b6728803bd";
            IncludeApplications                      = @();
            IncludeGroups                            = @("CA-Persona-Internals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @("urn:user:registersecurityinfo");
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 511b8fac-c36c-40a1-9d81-e52e2483c623
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa","passwordChange");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA202-Internals-IdentityProtection-AllApps-AnyPlatform-MFAandPWDforHighUserRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Internals-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "AND";
            Id                                       = "e41f5940-de1a-41fb-ad85-97257bbee407";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Internals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @("high");
        }
        AADConditionalAccessPolicy 01a5b31f-15c3-4334-af6c-a78fdda9b57f
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA203-Internals-IdentityProtection-AllApps-AnyPlatform-MFAforHighSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Internals-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "363db5da-09cd-4bc1-b408-1256ebf9891d";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Internals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high");
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy d0f5f3ba-141f-4ed6-8516-2e8e892cd6ec
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA204-Internals-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Internals-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "b1f05d88-a0ea-49d5-be5c-33efa51e0599";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Internals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy e667e278-a2f4-41d7-8e6a-f65fc77a19e3
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA205-Internals-AppProtection-MicrosoftIntuneEnrollment-AnyPlatform-MFA";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Internals-AppProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "798038cb-95d1-4d6e-81d5-50273a283c61";
            IncludeApplications                      = @("d4ebce55-015a-49b5-a083-c84d1797ae8c");
            IncludeGroups                            = @("CA-Persona-Internals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 7c83e66a-b501-4701-bca5-c3170f082bbb
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("approvedApplication","compliantApplication");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA206-Internals-DataandAppProtection-AllApps-iOSorAndroid-ClientAppORAPP";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Internals-AppProtection-Exclusions","CA-Persona-Internals-DataProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "5ddd39c2-22e8-428b-a363-db283a788c1e";
            IncludeApplications                      = @("Office365");
            IncludeGroups                            = @("CA-Persona-Internals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("android","iOS");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 2079bbe5-26e8-4cb5-95c7-7eedb503589a
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA207-Internals-AttackSurfaceReduction-AllApps-AnyPlatform-BlockUnknownPlatforms";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @("android","iOS","windows","macOS","linux");
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "1ad96a57-cf16-4c9d-b7b3-ba4e72d8d4ab";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Internals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 0069430f-a848-404d-a34c-546b74bd4bd8
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("compliantDevice","domainJoinedDevice");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA300-Externals-BaseProtection-AllApps-AnyPlatform-CompliantorAADHJ";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("d4ebce55-015a-49b5-a083-c84d1797ae8c");
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Externals-BaseProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "8931fd69-f3cb-4d11-9b7b-4d3f115e3d10";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Externals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 2a5ac67c-98dc-4a4a-91b6-66ad13937552
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("compliantDevice","domainJoinedDevice");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA301-Externals-IdentityProtection-AllApps-AnyPlatform-CombinedRegistration";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Externals-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "11e8d17d-8639-4f89-b64a-7c58726e75ac";
            IncludeApplications                      = @();
            IncludeGroups                            = @("CA-Persona-Externals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @("urn:user:registersecurityinfo");
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 943df7c2-b8b4-4772-b3b3-2eb84f8d8e2c
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA302-Externals-IdentityProtection-AllApps-AnyPlatform-MFAandPWDforHighUserRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Externals-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "07a1ec19-f675-447c-864f-c1379265e470";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Externals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @("high");
        }
        AADConditionalAccessPolicy 408e7b22-f809-4ac1-be7f-cb08aa7bd1cb
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA303-Externals-IdentityProtection-AllApps-AnyPlatform-MFAforHighSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Externals-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "cf2f625c-626c-44bb-b080-9efbeae89672";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Externals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high");
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 8072f662-4034-4349-a5a7-8220e89eb59c
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA304-Externals-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Externals-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "65038464-4ae8-4b8c-b1f3-56f5d4b76999";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Externals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 2e7fd694-46aa-48fd-b09c-f1457513b461
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA305-Externals-AppProtection-MicrosoftIntuneEnrollment-MFA";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Externals-AppProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "dd3c3c51-6766-440c-a783-20566b371e3c";
            IncludeApplications                      = @("d4ebce55-015a-49b5-a083-c84d1797ae8c");
            IncludeGroups                            = @("CA-Persona-Externals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy f57c90ca-bd72-4a82-ae04-360a084b29d1
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("approvedApplication","compliantApplication");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA306-Externals-DataandAppProtection-AllApps-iOSorAndroid-ClientAppORAPP";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Externals-AppProtection-Exclusions","CA-Persona-Externals-DataProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "34dae461-7bcd-48dc-ba06-8a3e9bca542c";
            IncludeApplications                      = @("Office365");
            IncludeGroups                            = @("CA-Persona-Externals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("android","iOS");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 5081b5e2-443d-4c37-bf84-86a1ee7714b7
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA307-Externals-AttackSurfaceReduction-AllApps-AnyPlatform-BlockUnknownPlatforms";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Externals-AttackSurfaceReduction-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @("android","iOS","windows","macOS","linux");
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "5b1f1637-c7e0-43f3-9228-f7a69bc296f4";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Externals");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 524fe64d-34ae-4594-8a1b-283a7cec8187
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA402-Guests-IdentityProtection-AllApps-AnyPlatform-MFAforMediumandHighUserandSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Guests-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "3e1087c3-083e-4916-8268-94060e42a8a0";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("GuestsOrExternalUsers");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high","medium");
            State                                    = "disabled";
            UserRiskLevels                           = @("high","medium");
        }
        AADConditionalAccessPolicy 6928a00d-ecab-4911-9211-416642a46f1d
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA403-Guests-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Guests-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "566b1228-a8cf-446c-838c-0c9950f638a3";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("GuestsOrExternalUsers");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 60a0388e-261d-4902-86be-53887a0a58dd
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $True;
            CloudAppSecurityType                     = "monitorOnly";
            Credential                               = $Credscredential;
            DisplayName                              = "CA404-Guests-AttackSurfaceReduction-AllApps-AnyPlatform-BlockGuestAppAccess";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("Office365");
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Guests-AttackSurfaceReduction-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "1b3bc8ab-71da-4364-9057-b325cb8f28cd";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("GuestsOrExternalUsers");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy ce7b0d42-7409-45bf-862a-bd43d9e2f532
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA500-GuestAdmins-BaseProtection-AllApps-AnyPlatform-MFA";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-GuestAdmins");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "cabcface-763d-410d-a096-97a14267304f";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-GuestAdmins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy cf783be5-ee85-44c4-b465-0923bdcdbb2e
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA502-GuestAdmins-IdentityProtection-AllApps-AnyPlatform-MFAforMediumandHighUserandSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-GuestAdmins-IdentityProtection-Exclusions","CA-BreakGlassAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "fb067dc0-efd2-41b5-b612-99dfed715f16";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-GuestAdmins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high","medium");
            State                                    = "disabled";
            UserRiskLevels                           = @("high","medium");
        }
        AADConditionalAccessPolicy 41d1b23f-db0c-418c-afc9-822cede1907e
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA503-GuestAdmins-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-GuestAdmins-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "bd372bd8-4f5c-438c-a5fb-dc418ac7abab";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-GuestAdmins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy e115fca1-43b7-4686-ae82-cc3447d89e6e
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @();
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $True;
            CloudAppSecurityType                     = "mcasConfigured";
            Credential                               = $Credscredential;
            DisplayName                              = "CA504-GuestAdmins-AttackSurfaceReduction-AllApps-AnyPlatform-BlockNonO365Access";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("Office365");
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "c67cf334-003e-4879-92ea-034ccf9d6c37";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-GuestAdmins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 062244bf-155d-42b4-b280-0d049de27980
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA600-Microsoft365ServiceAccounts-BaseProtection-AllApps-AnyPlatform-BlockUntrustedLocations";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts");
            ExcludeLocations                         = @("AllTrusted");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "8fc7f7da-46dc-4cef-8984-fdbc1b2870cf";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Microsoft365ServiceAccounts");
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 90cd7770-dbaf-4432-8f0e-13a08d79cc17
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA604-Microsoft365ServiceAccounts-AttackSurfaceReduction-O365-AnyPlatform-BlockNonO365";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("Office365");
            ExcludeGroups                            = @("CA-BreakGlassAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "b180a6e7-959a-408f-9d27-c0527626e803";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Microsoft365ServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy d83f0c4f-e87e-4305-b1a8-5d2fad613fa8
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA700-AzureServiceAccounts-BaseProtection-AllApps-AnyPlatform-BlockUntrustedLocations";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-AzureServiceAccounts-Exclusions");
            ExcludeLocations                         = @("AllTrusted");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "49b7156d-54af-400a-94da-f2d5d9904cf6";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-AzureServiceAccounts");
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy d4dba7ed-feda-4dcb-b5a7-18f2bf0686aa
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA704-AzureServiceAccounts-AttackSurfaceReduction-AllApps-AnyPlatform-BlockNonAzure";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("797f4846-ba00-4fd7-ba43-dac1f8f63013");
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-AzureServiceAccounts-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "277028ff-a351-456c-a65d-c1c79dee2408";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-AzureServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy d8b210e5-529f-4a0c-b036-ab7c7318fe54
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA800-CorpServiceAccounts-BaseProtection-AllApps-AnyPlatform-BlockUntrustedLocations";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-CorpServiceAccounts-Exclusions");
            ExcludeLocations                         = @("AllTrusted");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "d0a2cf7b-6c43-4ec7-a259-95e1a388338b";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-CorpServiceAccounts");
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 7aa4d62c-01c9-4894-90d9-834dd53f404a
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA804-CorpServiceAccounts-AttackSurfaceReduction-AllApps-AnyPlatform-BlockNonO365andAzure";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("Office365");
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-CorpServiceAccounts-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "cfdbaa3d-c28e-42b0-a3d7-04ec4f8dbc7b";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-CorpServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 5a770d07-4499-405e-a205-ea326d399160
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA401-Guests-IdentityProtection-AllApps-AnyPlatform-TOU-CombinedRegistration";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-GuestAdmins-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "0855b278-a4cc-448c-8efe-ef1a9b481af1";
            IncludeApplications                      = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @("urn:user:registersecurityinfo");
            IncludeUsers                             = @("GuestsOrExternalUsers");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy e786f19d-62ca-48df-aef6-0d21fd54e04a
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA501-GuestAdmins-IdentityProtection-AllApps-AnyPlatform-CombinedRegistration";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-GuestAdmins-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "469189c5-2e1a-4851-b333-831357842f7f";
            IncludeApplications                      = @();
            IncludeGroups                            = @("CA-Persona-GuestAdmins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @("urn:user:registersecurityinfo");
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
       }
        
        AADConditionalAccessPolicy cf139213-a972-4945-8b45-155ceea313e2
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA405-Guests-ComplianceProtection-AllApps-AnyPlatform-RequireTOU";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-Guests-Compliance-Exclusions","CA-BreakGlassAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "d21ddea3-49f8-4d41-afbb-dd1ede4c37c5";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("GuestsOrExternalUsers");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 4bc4e725-9ed1-430b-b275-39bfd7fbc6bd
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @();
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "CA406-Guests-DataProtection-AllApps-AnyPlatform-SignInSessionPolicy";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccount","CA-Persona-Guests-DataProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            Id                                       = "16aa3b43-b03f-4e16-9172-e13391cd5f91";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Guests");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $True;
            PersistentBrowserMode                    = "never";
            SignInFrequencyIsEnabled                 = $True;
            SignInFrequencyType                      = "hours";
            SignInFrequencyValue                     = 1;
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy d1b89341-daa3-4343-ad49-64401bc010b5
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA505-GuestAdmins-ComplianceProtection-AnyPlatform-RequireTOU";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Guests-Compliance-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "b3bd1808-0316-47ac-a02c-e159340287de";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-GuestAdmins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 7c384b11-1a13-4461-8c78-7e4ea19e8d46
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @();
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "CA506-GuestAdmins-DataProtection-AllApps-AnyPlatform-SignInSessionPolicy";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccount","CA-Persona-GuestAdmins-DataProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            Id                                       = "700c5cdc-c4d2-4c37-abca-abc4dc00c3c1";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-GuestAdmins");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $True;
            PersistentBrowserMode                    = "never";
            SignInFrequencyIsEnabled                 = $True;
            SignInFrequencyType                      = "hours";
            SignInFrequencyValue                     = 1;
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 4d030164-13ce-4576-a6b8-8f55e30e7d0d
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA601-Microsoft365ServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "56ad5cff-9efe-4adb-8539-3608ae3cfab1";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Microsoft365ServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 84bbdaf7-9629-485a-9d65-b311d437a2fa
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA701-AzureServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-AzureServiceAccounts-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "a274b074-2138-4f97-b589-888451a188a8";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-AzureServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 34e44217-237b-461d-bee0-2db6a6a8ae96
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA801-CorpServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-CorpServiceAccounts-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "681a4b42-207b-4236-aaba-6b7be1b5ef57";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-CorpServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }

        AADConditionalAccessPolicy 24ec1235-9aa9-41a1-96fb-8130c33b8a35
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA900-WorkloadIdentities-BaseProtection-AllApps-AnyPlatform-BlockUntrustedLocations";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-WorkloadIdentities-Exclusions","CA-BreakGlassAccounts");
            ExcludeLocations                         = @("AllTrusted");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "d1fc858f-96ed-4d04-873c-2d15cb5ad465";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-WorkloadIdentities");
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 9106a0d4-b172-4e16-8b86-271feb2a3bbd
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @();
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $True;
            CloudAppSecurityType                     = "mcasConfigured";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1000-Developers-BaseProtection-AllApps-AnyPlatform-ForwardToDefenderforCloudApps";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Developers-BaseProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            Id                                       = "d1b792d9-8d92-4dd8-bc4d-08d062e85934";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy c9be4d28-d5a0-45a4-bf62-ece906fdc371
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1001-Developers-BaseProtection-AllApps-AnyPlatform-MFAfromUnamagedDevices";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Developers-BaseProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "19bd434b-0ee6-4d02-9ed1-15d0301af466";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy f576513b-4752-471b-b536-4df4323ed70a
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("compliantDevice","domainJoinedDevice");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1002-Developers-IdentityProtection-AllApps-AnyPlatform-CombinedRegistration";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Developers-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "fb99d0ef-7279-42a7-84d9-4780ae5f0580";
            IncludeApplications                      = @();
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @("urn:user:registersecurityinfo");
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy aa8f9a80-13b4-4fbd-ab4b-efe69ae190c5
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa","passwordChange");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1003-Developers-IdentityProtection-AllApps-AnyPlatform-MFAandPWDforHighUserRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Developers-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "AND";
            Id                                       = "f0bde400-47e4-4fb0-b720-f73f412ee6c5";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @("high","medium");
        }
        AADConditionalAccessPolicy dfe5105a-7dd8-4ffc-afce-9bb6ee8f0437
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1004-Developers-IdentityProtection-AllApps-AnyPlatform-MFAforHighSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Developers-IdentityProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "e136f350-9639-4f98-b45d-31319e526629";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high","medium");
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 5718b748-c306-4e49-9f1d-373c37963413
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1005-Developers-IdentityProtection-AllApps-AnyPlatform-BlockLegacyAuth";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-Developers-IdentityProtection-Exclusions","CA-BreakGlassAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "6431c65c-d7f6-40bf-8a56-4afa1b2bab16";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 9bcce425-8715-475a-9b18-381be1c04bc7
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1006-Developers-AppProtection-MicrosoftIntuneEnrollment-AnyPlatform-MFA";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Developers-AppProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "f3e7f37e-4034-406f-ab87-ad88dfdecd79";
            IncludeApplications                      = @("d4ebce55-015a-49b5-a083-c84d1797ae8c");
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy df583fba-4ddf-49a5-a50a-384a5876e1bc
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("approvedApplication","compliantApplication");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1007-Developers-DataandAppProtection-AllApps-iOSorAndroid-ClientAppORAPP";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Developers-AppProtection-Exclusions","CA-Persona-Developers-DataProtection-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "a6928a84-2882-47a1-b608-19e2566c7b24";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("android","iOS");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy d15cd5eb-4568-422b-90c6-271ef94991db
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA1008-Developers-AttackSurfaceReduction-AllApps-AnyPlatform-BlockUnknownPlatforms";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Developers-AttackSurfaceReduction-Exclusions");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @("android","iOS","windows","macOS","linux");
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "cc92e749-0b45-4d69-8da5-7b9873ca8826";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Developers");
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy f8226e80-05ae-421b-964a-9bbbd7d9a16d
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("mfa");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA400-Guests-BaseProtection-AllApps-AnyPlatform-MFA";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "8e19f8a3-de9a-4c13-88ea-95adc851c074";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("GuestsOrExternalUsers");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }

        AADConditionalAccessPolicy 9ccf1a4f-7a59-4e65-979c-a01de300148b
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA602-Microsoft365ServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockHighUserRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-Microsoft365ServiceAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "f9310e9a-843e-4635-b74c-ce0054f17514";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Microsoft365ServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @("high");
        }
        AADConditionalAccessPolicy 6d0253b5-e46b-41f2-b9c4-2920a48ccf49
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA603-Microsoft365ServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockHighSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "90caac36-cf70-409f-bb95-7c1ff8f9c6c9";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-Microsoft365ServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high");
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 5615ea56-0159-47c4-9dac-6d6085454df3
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA702-AzureServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockHighUserRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-BreakGlassAccounts","CA-Persona-AzureServiceAccounts-Exclusions");
            ExcludeLocations                         = @("AllTrusted");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "856b8034-cae5-4b54-847f-cec68017a820";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-AzureServiceAccounts");
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @("high");
        }
        AADConditionalAccessPolicy cdc270e5-7255-4a4d-ad73-983bf3e1d70c
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA703-AzureServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockHighSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-AzureServiceAccounts-Exclusions","CA-BreakGlassAccounts");
            ExcludeLocations                         = @("AllTrusted");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "57d1c610-7668-43a8-8a29-f7a51c132de9";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-AzureServiceAccounts");
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high");
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 5e43c564-f1b6-4eaa-87a1-e32f3dad8461
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA802-CorpServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockHighUserRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-CorpServiceAccounts-Exclusions","CA-BreakGlassAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "9e7a9a24-9323-4858-8093-27d4aa76ad83";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-CorpServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @("high");
        }
        AADConditionalAccessPolicy 4caaf9b1-23e4-4a0a-9475-6ee5fdef786e
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA803-CorpServiceAccounts-IdentityProtection-AllApps-AnyPlatform-BlockHighSignInRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @("CA-Persona-CorpServiceAccounts-Exclusions","CA-BreakGlassAccounts");
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "6439546b-7f65-4f8b-aef4-f1fa67e37f96";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @("CA-Persona-CorpServiceAccounts");
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high");
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 0ef6062e-adbe-4719-b696-053561a0fb40
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            DisplayName                              = "CA901-WorkloadIdentities-BaseProtection-AllApps-AnyPlatform-BlockHighRisk";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @();
            GrantControlOperator                     = "OR";
            Id                                       = "78f8f1d7-98ff-42b1-a276-471632be9ff9";
            IncludeApplications                      = @("All");
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("None");
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
    }
}
M365TenantConfig -ConfigurationData .\ConfigurationData.psd1 -Credential $Credential
