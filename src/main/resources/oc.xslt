<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
               xmlns:oc="https://www.drfits.com/schema/oc"
               exclude-result-prefixes="oc">
    <!-- Pretty Print Output -->
    <xsl:strip-space elements="*"/>
    <xsl:output method="xml" indent="yes"/>
    <xsl:output method="xml" doctype-system="http://www.apple.com/DTDs/PropertyList-1.0.dtd"
                doctype-public="-//Apple//DTD PLIST 1.0//EN"/>
    <xsl:template match="/">
        <plist version="1.0">
            <dict>
                <key>ACPI</key>
                <dict>
                    <key>Patch</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:ACPI/oc:Patch/oc:dict">
                            <dict>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                                <key>Count</key>
                                <integer>
                                    <xsl:value-of select="oc:Count"/>
                                </integer>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Find</key>
                                <data>
                                    <xsl:value-of select="oc:Find"/>
                                </data>
                                <key>Limit</key>
                                <integer>
                                    <xsl:value-of select="oc:Limit"/>
                                </integer>
                                <key>Mask</key>
                                <data>
                                    <xsl:value-of select="oc:Mask"/>
                                </data>
                                <key>OemTableId</key>
                                <data>
                                    <xsl:value-of select="oc:OemTableId"/>
                                </data>
                                <key>Replace</key>
                                <data>
                                    <xsl:value-of select="oc:Replace"/>
                                </data>
                                <key>ReplaceMask</key>
                                <data>
                                    <xsl:value-of select="oc:ReplaceMask"/>
                                </data>
                                <key>Skip</key>
                                <integer>
                                    <xsl:value-of select="oc:Skip"/>
                                </integer>
                                <key>TableLength</key>
                                <integer>
                                    <xsl:value-of select="oc:TableLength"/>
                                </integer>
                                <key>TableSignature</key>
                                <data>
                                    <xsl:value-of select="oc:TableSignature"/>
                                </data>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Delete</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:ACPI/oc:Delete/oc:dict">
                            <dict>
                                <key>All</key>
                                <xsl:element name="{oc:All}"/>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>OemTableId</key>
                                <data>
                                    <xsl:value-of select="oc:OemTableId"/>
                                </data>
                                <key>TableLength</key>
                                <integer>
                                    <xsl:value-of select="oc:TableLength"/>
                                </integer>
                                <key>TableSignature</key>
                                <data>
                                    <xsl:value-of select="oc:TableSignature"/>
                                </data>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Add</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:ACPI/oc:Add/oc:dict">
                            <dict>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Path</key>
                                <string>
                                    <xsl:value-of select="@Path"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Quirks</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:ACPI/oc:Quirks">
                            <key>FadtEnableReset</key>
                            <xsl:element name="{oc:FadtEnableReset}"/>
                            <key>NormalizeHeaders</key>
                            <xsl:element name="{oc:NormalizeHeaders}"/>
                            <key>RebaseRegions</key>
                            <xsl:element name="{oc:RebaseRegions}"/>
                            <key>ResetHwSig</key>
                            <xsl:element name="{oc:ResetHwSig}"/>
                            <key>ResetLogoStatus</key>
                            <xsl:element name="{oc:ResetLogoStatus}"/>
                        </xsl:for-each>
                    </dict>
                </dict>
                <key>Booter</key>
                <dict>
                    <key>MmioWhitelist</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:Booter/oc:MmioWhitelist/oc:dict">
                            <dict>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Address</key>
                                <integer>
                                    <xsl:value-of select="@Address"/>
                                </integer>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Quirks</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:Booter/oc:Quirks">
                            <key>AvoidRuntimeDefrag</key>
                            <xsl:element name="{oc:AvoidRuntimeDefrag}"/>
                            <key>DevirtualiseMmio</key>
                            <xsl:element name="{oc:DevirtualiseMmio}"/>
                            <key>DisableSingleUser</key>
                            <xsl:element name="{oc:DisableSingleUser}"/>
                            <key>DisableVariableWrite</key>
                            <xsl:element name="{oc:DisableVariableWrite}"/>
                            <key>DiscardHibernateMap</key>
                            <xsl:element name="{oc:DiscardHibernateMap}"/>
                            <key>EnableSafeModeSlide</key>
                            <xsl:element name="{oc:EnableSafeModeSlide}"/>
                            <key>EnableWriteUnprotector</key>
                            <xsl:element name="{oc:EnableWriteUnprotector}"/>
                            <key>ForceExitBootServices</key>
                            <xsl:element name="{oc:ForceExitBootServices}"/>
                            <key>ProtectMemoryRegions</key>
                            <xsl:element name="{oc:ProtectMemoryRegions}"/>
                            <key>ProtectSecureBoot</key>
                            <xsl:element name="{oc:ProtectSecureBoot}"/>
                            <key>ProtectUefiServices</key>
                            <xsl:element name="{oc:ProtectUefiServices}"/>
                            <key>ProvideCustomSlide</key>
                            <xsl:element name="{oc:ProvideCustomSlide}"/>
                            <key>ProvideMaxSlide</key>
                            <integer>
                                <xsl:value-of select="oc:ProvideMaxSlide"/>
                            </integer>
                            <key>RebuildAppleMemoryMap</key>
                            <xsl:element name="{oc:RebuildAppleMemoryMap}"/>
                            <key>SetupVirtualMap</key>
                            <xsl:element name="{oc:SetupVirtualMap}"/>
                            <key>SignalAppleOS</key>
                            <xsl:element name="{oc:SignalAppleOS}"/>
                            <key>SyncRuntimePermissions</key>
                            <xsl:element name="{oc:SyncRuntimePermissions}"/>
                        </xsl:for-each>
                    </dict>
                </dict>
                <key>DeviceProperties</key>
                <dict>
                    <key>Add</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:DeviceProperties/oc:Add/oc:device">
                            <key>
                                <xsl:value-of select="@path"/>
                            </key>
                            <xsl:for-each select="oc:prop">
                                <dict>
                                    <key>
                                        <xsl:value-of select="@key"/>
                                    </key>
                                    <data>
                                        <xsl:value-of select="text()"/>
                                    </data>
                                </dict>
                            </xsl:for-each>
                        </xsl:for-each>
                    </dict>
                    <key>Delete</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:DeviceProperties/oc:Delete/oc:device">
                            <key>
                                <xsl:value-of select="@path"/>
                            </key>
                            <xsl:for-each select="oc:prop">
                                <dict>
                                    <key>
                                        <xsl:value-of select="@key"/>
                                    </key>
                                    <data>
                                        <xsl:value-of select="text()"/>
                                    </data>
                                </dict>
                            </xsl:for-each>
                        </xsl:for-each>
                    </dict>
                </dict>
                <key>Kernel</key>
                <dict>
                    <key>Add</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:Kernel/oc:Add/oc:dict">
                            <dict>
                                <key>Arch</key>
                                <string>
                                    <xsl:value-of select="oc:Arch"/>
                                </string>
                                <key>BundlePath</key>
                                <string>
                                    <xsl:value-of select="oc:BundlePath"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>ExecutablePath</key>
                                <string>
                                    <xsl:value-of select="oc:ExecutablePath"/>
                                </string>
                                <key>MaxKernel</key>
                                <string>
                                    <xsl:value-of select="oc:MaxKernel"/>
                                </string>
                                <key>MinKernel</key>
                                <string>
                                    <xsl:value-of select="oc:MinKernel"/>
                                </string>
                                <key>PlistPath</key>
                                <string>
                                    <xsl:value-of select="oc:PlistPath"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Block</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:Kernel/oc:Block/oc:dict">
                            <dict>
                                <key>Arch</key>
                                <string>
                                    <xsl:value-of select="oc:Arch"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Identifier</key>
                                <string>
                                    <xsl:value-of select="oc:Identifier"/>
                                </string>
                                <key>MaxKernel</key>
                                <string>
                                    <xsl:value-of select="oc:MaxKernel"/>
                                </string>
                                <key>MinKernel</key>
                                <string>
                                    <xsl:value-of select="oc:MinKernel"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Emulate</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:Kernel/oc:Emulate">
                            <key>DummyPowerManagement</key>
                            <xsl:element name="{oc:DummyPowerManagement}"/>
                            <key>Cpuid1Data</key>
                            <data>
                                <xsl:value-of select="oc:Cpuid1Data"/>
                            </data>
                            <key>Cpuid1Mask</key>
                            <data>
                                <xsl:value-of select="oc:Cpuid1Mask"/>
                            </data>
                            <key>MaxKernel</key>
                            <string>
                                <xsl:value-of select="oc:MaxKernel"/>
                            </string>
                            <key>MinKernel</key>
                            <string>
                                <xsl:value-of select="oc:MinKernel"/>
                            </string>
                        </xsl:for-each>
                    </dict>
                    <key>Force</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:Kernel/oc:Force/oc:dict">
                            <dict>
                                <key>Arch</key>
                                <string>
                                    <xsl:value-of select="oc:Arch"/>
                                </string>
                                <key>BundlePath</key>
                                <string>
                                    <xsl:value-of select="oc:BundlePath"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Identifier</key>
                                <string>
                                    <xsl:value-of select="oc:Identifier"/>
                                </string>
                                <key>ExecutablePath</key>
                                <string>
                                    <xsl:value-of select="oc:ExecutablePath"/>
                                </string>
                                <key>MaxKernel</key>
                                <string>
                                    <xsl:value-of select="oc:MaxKernel"/>
                                </string>
                                <key>MinKernel</key>
                                <string>
                                    <xsl:value-of select="oc:MinKernel"/>
                                </string>
                                <key>PlistPath</key>
                                <string>
                                    <xsl:value-of select="oc:PlistPath"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Patch</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:Kernel/oc:Patch/oc:dict">
                            <dict>
                                <key>Arch</key>
                                <string>
                                    <xsl:value-of select="oc:Arch"/>
                                </string>
                                <key>Base</key>
                                <string>
                                    <xsl:value-of select="oc:Base"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                                <key>Count</key>
                                <integer>
                                    <xsl:value-of select="oc:Count"/>
                                </integer>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Find</key>
                                <data>
                                    <xsl:value-of select="oc:Find"/>
                                </data>
                                <key>Identifier</key>
                                <string>
                                    <xsl:value-of select="oc:Identifier"/>
                                </string>
                                <key>Limit</key>
                                <integer>
                                    <xsl:value-of select="oc:Limit"/>
                                </integer>
                                <key>Mask</key>
                                <data>
                                    <xsl:value-of select="oc:Mask"/>
                                </data>
                                <key>MaxKernel</key>
                                <string>
                                    <xsl:value-of select="oc:MaxKernel"/>
                                </string>
                                <key>MinKernel</key>
                                <string>
                                    <xsl:value-of select="oc:MinKernel"/>
                                </string>
                                <key>Replace</key>
                                <data>
                                    <xsl:value-of select="oc:Replace"/>
                                </data>
                                <key>ReplaceMask</key>
                                <data>
                                    <xsl:value-of select="oc:ReplaceMask"/>
                                </data>
                                <key>Skip</key>
                                <integer>
                                    <xsl:value-of select="oc:Skip"/>
                                </integer>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Quirks</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:Kernel/oc:Quirks">
                            <key>AppleCpuPmCfgLock</key>
                            <xsl:element name="{oc:AppleCpuPmCfgLock}"/>
                            <key>AppleXcpmCfgLock</key>
                            <xsl:element name="{oc:AppleXcpmCfgLock}"/>
                            <key>AppleXcpmExtraMsrs</key>
                            <xsl:element name="{oc:AppleXcpmExtraMsrs}"/>
                            <key>AppleXcpmForceBoost</key>
                            <xsl:element name="{oc:AppleXcpmForceBoost}"/>
                            <key>CustomSMBIOSGuid</key>
                            <xsl:element name="{oc:CustomSMBIOSGuid}"/>
                            <key>DisableIoMapper</key>
                            <xsl:element name="{oc:DisableIoMapper}"/>
                            <key>DisableLinkeditJettison</key>
                            <xsl:element name="{oc:DisableLinkeditJettison}"/>
                            <key>DisableRtcChecksum</key>
                            <xsl:element name="{oc:DisableRtcChecksum}"/>
                            <key>ExtendBTFeatureFlags</key>
                            <xsl:element name="{oc:ExtendBTFeatureFlags}"/>
                            <key>ExternalDiskIcons</key>
                            <xsl:element name="{oc:ExternalDiskIcons}"/>
                            <key>IncreasePciBarSize</key>
                            <xsl:element name="{oc:IncreasePciBarSize}"/>
                            <key>LapicKernelPanic</key>
                            <xsl:element name="{oc:LapicKernelPanic}"/>
                            <key>LegacyCommpage</key>
                            <xsl:element name="{oc:LegacyCommpage}"/>
                            <key>PanicNoKextDump</key>
                            <xsl:element name="{oc:PanicNoKextDump}"/>
                            <key>PowerTimeoutKernelPanic</key>
                            <xsl:element name="{oc:PowerTimeoutKernelPanic}"/>
                            <key>ThirdPartyDrives</key>
                            <xsl:element name="{oc:ThirdPartyDrives}"/>
                            <key>XhciPortLimit</key>
                            <xsl:element name="{oc:XhciPortLimit}"/>
                        </xsl:for-each>
                    </dict>
                    <key>Scheme</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:Kernel/oc:Scheme">
                            <key>FuzzyMatch</key>
                            <xsl:element name="{oc:FuzzyMatch}"/>
                            <key>KernelArch</key>
                            <string>
                                <xsl:value-of select="oc:KernelArch"/>
                            </string>
                            <key>KernelCache</key>
                            <string>
                                <xsl:value-of select="oc:KernelCache"/>
                            </string>
                        </xsl:for-each>
                    </dict>
                </dict>
                <key>Misc</key>
                <dict>
                    <key>Boot</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:Misc/oc:Boot">
                            <key>ConsoleAttributes</key>
                            <integer>
                                <xsl:value-of select="oc:ConsoleAttributes"/>
                            </integer>
                            <key>HibernateMode</key>
                            <string>
                                <xsl:value-of select="oc:HibernateMode"/>
                            </string>
                            <key>HideAuxiliary</key>
                            <xsl:element name="{oc:HideAuxiliary}"/>
                            <key>PickerAttributes</key>
                            <integer>
                                <xsl:value-of select="oc:PickerAttributes"/>
                            </integer>
                            <key>PickerAudioAssist</key>
                            <xsl:element name="{oc:PickerAudioAssist}"/>
                            <key>PollAppleHotKeys</key>
                            <xsl:element name="{oc:PollAppleHotKeys}"/>
                            <key>ShowPicker</key>
                            <xsl:element name="{oc:ShowPicker}"/>
                            <key>TakeoffDelay</key>
                            <integer>
                                <xsl:value-of select="oc:TakeoffDelay"/>
                            </integer>
                            <key>Timeout</key>
                            <integer>
                                <xsl:value-of select="oc:Timeout"/>
                            </integer>
                            <key>PickerMode</key>
                            <string>
                                <xsl:value-of select="oc:PickerMode"/>
                            </string>
                        </xsl:for-each>
                    </dict>
                    <key>BlessOverride</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:Misc/oc:BlessOverride/oc:path">
                            <string>
                                <xsl:value-of select="text()"/>
                            </string>
                        </xsl:for-each>
                    </array>
                    <key>Debug</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:Misc/oc:Debug">
                            <key>AppleDebug</key>
                            <xsl:element name="{oc:AppleDebug}"/>
                            <key>ApplePanic</key>
                            <xsl:element name="{oc:ApplePanic}"/>
                            <key>DisableWatchDog</key>
                            <xsl:element name="{oc:DisableWatchDog}"/>
                            <key>DisplayDelay</key>
                            <integer>
                                <xsl:value-of select="oc:DisplayDelay"/>
                            </integer>
                            <key>DisplayLevel</key>
                            <integer>
                                <xsl:value-of select="oc:DisplayLevel"/>
                            </integer>
                            <key>SerialInit</key>
                            <xsl:element name="{oc:SerialInit}"/>
                            <key>SysReport</key>
                            <xsl:element name="{oc:SysReport}"/>
                            <key>Target</key>
                            <integer>
                                <xsl:value-of select="oc:Target"/>
                            </integer>
                        </xsl:for-each>
                    </dict>
                    <key>Entries</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:Misc/oc:Entries/oc:entry">
                            <dict>
                                <key>Arguments</key>
                                <string>
                                    <xsl:value-of select="oc:Arguments"/>
                                </string>
                                <key>Auxiliary</key>
                                <xsl:element name="{oc:Auxiliary}"/>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="oc:Comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Name</key>
                                <string>
                                    <xsl:value-of select="@Name"/>
                                </string>
                                <key>Path</key>
                                <string>
                                    <xsl:value-of select="oc:Path"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Security</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:Misc/oc:Security">
                            <key>AllowNvramReset</key>
                            <xsl:element name="{oc:AllowNvramReset}"/>
                            <key>AllowSetDefault</key>
                            <xsl:element name="{oc:AllowSetDefault}"/>
                            <key>ApECID</key>
                            <integer>
                                <xsl:value-of select="oc:ApECID"/>
                            </integer>
                            <key>AuthRestart</key>
                            <xsl:element name="{oc:AuthRestart}"/>
                            <key>BootProtect</key>
                            <string>
                                <xsl:value-of select="oc:BootProtect"/>
                            </string>
                            <key>DmgLoading</key>
                            <string>
                                <xsl:value-of select="oc:DmgLoading"/>
                            </string>
                            <key>EnablePassword</key>
                            <xsl:element name="{oc:EnablePassword}"/>
                            <key>ExposeSensitiveData</key>
                            <integer>
                                <xsl:value-of select="oc:ExposeSensitiveData"/>
                            </integer>
                            <key>HaltLevel</key>
                            <integer>
                                <xsl:value-of select="oc:HaltLevel"/>
                            </integer>
                            <key>PasswordHash</key>
                            <data>
                                <xsl:value-of select="oc:PasswordHash"/>
                            </data>
                            <key>PasswordSalt</key>
                            <data>
                                <xsl:value-of select="oc:PasswordSalt"/>
                            </data>
                            <key>Vault</key>
                            <string>
                                <xsl:value-of select="oc:Vault"/>
                            </string>
                            <key>ScanPolicy</key>
                            <integer>
                                <xsl:value-of select="oc:ScanPolicy"/>
                            </integer>
                            <key>SecureBootModel</key>
                            <string>
                                <xsl:value-of select="oc:SecureBootModel"/>
                            </string>
                        </xsl:for-each>
                    </dict>
                    <key>Tools</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:Misc/oc:Tools/oc:entry">
                            <dict>
                                <key>Arguments</key>
                                <string>
                                    <xsl:value-of select="oc:Arguments"/>
                                </string>
                                <key>Auxiliary</key>
                                <xsl:element name="{oc:Auxiliary}"/>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="oc:Comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Name</key>
                                <string>
                                    <xsl:value-of select="@Name"/>
                                </string>
                                <key>Path</key>
                                <string>
                                    <xsl:value-of select="oc:Path"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                </dict>
                <key>NVRAM</key>
                <dict>
                    <key>Add</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:NVRAM/oc:Add/oc:key">
                            <key>
                                <xsl:value-of select="@value"/>
                            </key>
                            <dict>
                                <xsl:for-each select="oc:prop">
                                    <key>
                                        <xsl:value-of select="@key"/>
                                    </key>
                                    <xsl:choose>
                                        <xsl:when test="@type='data'">
                                            <data>
                                                <xsl:value-of select="text()"/>
                                            </data>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <string>
                                                <xsl:value-of select="text()"/>
                                            </string>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:for-each>
                            </dict>
                        </xsl:for-each>
                    </dict>
                    <key>Delete</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:NVRAM/oc:Delete/oc:key">
                            <key>
                                <xsl:value-of select="@value"/>
                            </key>
                            <array>
                                <xsl:for-each select="oc:prop">
                                    <string>
                                        <xsl:value-of select="text()"/>
                                    </string>
                                </xsl:for-each>
                            </array>
                        </xsl:for-each>
                    </dict>
                    <key>LegacyEnable</key>
                    <xsl:element name="{/oc:root/oc:NVRAM/oc:LegacyEnable/text()}"/>
                    <key>LegacyOverwrite</key>
                    <xsl:element name="{/oc:root/oc:NVRAM/oc:LegacyOverwrite/text()}"/>
                    <key>LegacySchema</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:NVRAM/oc:LegacySchema/oc:key">
                            <key>
                                <xsl:value-of select="@value"/>
                            </key>
                            <array>
                                <xsl:for-each select="oc:prop">
                                    <string>
                                        <xsl:value-of select="text()"/>
                                    </string>
                                </xsl:for-each>
                            </array>
                        </xsl:for-each>
                    </dict>
                    <key>WriteFlash</key>
                    <xsl:element name="{/oc:root/oc:NVRAM/oc:WriteFlash/text()}"/>
                </dict>
                <key>PlatformInfo</key>
                <dict>
                    <key>Automatic</key>
                    <xsl:element name="{/oc:root/oc:PlatformInfo/oc:Automatic/text()}"/>
                    <xsl:choose>
                        <xsl:when test="/oc:root/oc:PlatformInfo/oc:Automatic/text() = 'false'">
                            <key>DataHub</key>
                            <dict>
                                <xsl:for-each select="/oc:root/oc:PlatformInfo/oc:DataHub">
                                    <key>PlatformName</key>
                                    <string>
                                        <xsl:value-of select="oc:PlatformName"/>
                                    </string>
                                    <key>SystemProductName</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemProductName"/>
                                    </string>
                                    <key>SystemSerialNumber</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemSerialNumber"/>
                                    </string>
                                    <key>SystemUUID</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemUUID"/>
                                    </string>
                                    <key>BoardProduct</key>
                                    <string>
                                        <xsl:value-of select="oc:BoardProduct"/>
                                    </string>
                                    <key>BoardRevision</key>
                                    <data>
                                        <xsl:value-of select="oc:BoardRevision"/>
                                    </data>
                                    <key>StartupPowerEvents</key>
                                    <integer>
                                        <xsl:value-of select="oc:StartupPowerEvents"/>
                                    </integer>
                                    <key>InitialTSC</key>
                                    <integer>
                                        <xsl:value-of select="oc:InitialTSC"/>
                                    </integer>
                                    <key>FSBFrequency</key>
                                    <integer>
                                        <xsl:value-of select="oc:FSBFrequency"/>
                                    </integer>
                                    <key>ARTFrequency</key>
                                    <integer>
                                        <xsl:value-of select="oc:ARTFrequency"/>
                                    </integer>
                                    <key>DevicePathsSupported</key>
                                    <integer>
                                        <xsl:value-of select="oc:DevicePathsSupported"/>
                                    </integer>
                                    <key>SmcRevision</key>
                                    <data>
                                        <xsl:value-of select="oc:SmcRevision"/>
                                    </data>
                                    <key>SmcBranch</key>
                                    <data>
                                        <xsl:value-of select="oc:SmcBranch"/>
                                    </data>
                                    <key>SmcPlatform</key>
                                    <data>
                                        <xsl:value-of select="oc:SmcPlatform"/>
                                    </data>
                                </xsl:for-each>
                            </dict>
                            <key>PlatformNVRAM</key>
                            <dict>
                                <xsl:for-each select="/oc:root/oc:PlatformInfo/oc:PlatformNVRAM">
                                    <key>BID</key>
                                    <string>
                                        <xsl:value-of select="oc:BID"/>
                                    </string>
                                    <key>ROM</key>
                                    <data>
                                        <xsl:value-of select="oc:ROM"/>
                                    </data>
                                    <key>MLB</key>
                                    <string>
                                        <xsl:value-of select="oc:MLB"/>
                                    </string>
                                    <key>FirmwareFeatures</key>
                                    <data>
                                        <xsl:value-of select="oc:FirmwareFeatures"/>
                                    </data>
                                    <key>FirmwareFeaturesMask</key>
                                    <data>
                                        <xsl:value-of select="oc:FirmwareFeaturesMask"/>
                                    </data>
                                </xsl:for-each>
                            </dict>
                            <key>SMBIOS</key>
                            <dict>
                                <xsl:for-each select="/oc:root/oc:PlatformInfo/oc:SMBIOS">
                                    <key>BIOSReleaseDate</key>
                                    <string>
                                        <xsl:value-of select="oc:BIOSReleaseDate"/>
                                    </string>
                                    <key>BIOSVendor</key>
                                    <string>
                                        <xsl:value-of select="oc:BIOSVendor"/>
                                    </string>
                                    <key>BIOSVersion</key>
                                    <string>
                                        <xsl:value-of select="oc:BIOSVersion"/>
                                    </string>
                                    <key>BoardAssetTag</key>
                                    <string>
                                        <xsl:value-of select="oc:BoardAssetTag"/>
                                    </string>
                                    <key>BoardLocationInChassis</key>
                                    <string>
                                        <xsl:value-of select="oc:BoardLocationInChassis"/>
                                    </string>
                                    <key>BoardManufacturer</key>
                                    <string>
                                        <xsl:value-of select="oc:BoardManufacturer"/>
                                    </string>
                                    <key>BoardProduct</key>
                                    <string>
                                        <xsl:value-of select="oc:BoardProduct"/>
                                    </string>
                                    <key>BoardSerialNumber</key>
                                    <string>
                                        <xsl:value-of select="oc:BoardSerialNumber"/>
                                    </string>
                                    <key>BoardType</key>
                                    <integer>
                                        <xsl:value-of select="oc:BoardType"/>
                                    </integer>
                                    <key>BoardVersion</key>
                                    <string>
                                        <xsl:value-of select="oc:BoardVersion"/>
                                    </string>
                                    <key>ChassisAssetTag</key>
                                    <string>
                                        <xsl:value-of select="oc:ChassisAssetTag"/>
                                    </string>
                                    <key>ChassisManufacturer</key>
                                    <string>
                                        <xsl:value-of select="oc:ChassisManufacturer"/>
                                    </string>
                                    <key>ChassisSerialNumber</key>
                                    <string>
                                        <xsl:value-of select="oc:ChassisSerialNumber"/>
                                    </string>
                                    <key>ChassisType</key>
                                    <integer>
                                        <xsl:value-of select="oc:ChassisType"/>
                                    </integer>
                                    <key>ChassisVersion</key>
                                    <string>
                                        <xsl:value-of select="oc:ChassisVersion"/>
                                    </string>
                                    <key>FirmwareFeatures</key>
                                    <data>
                                        <xsl:value-of select="oc:FirmwareFeatures"/>
                                    </data>
                                    <key>FirmwareFeaturesMask</key>
                                    <data>
                                        <xsl:value-of select="oc:FirmwareFeaturesMask"/>
                                    </data>
                                    <key>MemoryFormFactor</key>
                                    <integer>
                                        <xsl:value-of select="oc:MemoryFormFactor"/>
                                    </integer>
                                    <key>PlatformFeature</key>
                                    <integer>
                                        <xsl:value-of select="oc:PlatformFeature"/>
                                    </integer>
                                    <key>ProcessorType</key>
                                    <integer>
                                        <xsl:value-of select="oc:ProcessorType"/>
                                    </integer>
                                    <key>SmcVersion</key>
                                    <data>
                                        <xsl:value-of select="oc:SmcVersion"/>
                                    </data>
                                    <key>SystemFamily</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemFamily"/>
                                    </string>
                                    <key>SystemManufacturer</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemManufacturer"/>
                                    </string>
                                    <key>SystemProductName</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemProductName"/>
                                    </string>
                                    <key>SystemSKUNumber</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemSKUNumber"/>
                                    </string>
                                    <key>SystemSerialNumber</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemSerialNumber"/>
                                    </string>
                                    <key>SystemUUID</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemUUID"/>
                                    </string>
                                    <key>SystemVersion</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemVersion"/>
                                    </string>
                                </xsl:for-each>
                            </dict>
                        </xsl:when>
                        <xsl:otherwise>
                            <key>Generic</key>
                            <dict>
                                <xsl:for-each select="/oc:root/oc:PlatformInfo/oc:Generic">
                                    <key>SpoofVendor</key>
                                    <xsl:element name="{oc:SpoofVendor}"/>
                                    <key>AdviseWindows</key>
                                    <xsl:element name="{oc:AdviseWindows}"/>
                                    <key>SystemMemoryStatus</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemMemoryStatus"/>
                                    </string>
                                    <key>ProcessorType</key>
                                    <integer>
                                        <xsl:value-of select="oc:ProcessorType"/>
                                    </integer>
                                    <key>SystemProductName</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemProductName"/>
                                    </string>
                                    <key>SystemSerialNumber</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemSerialNumber"/>
                                    </string>
                                    <key>SystemUUID</key>
                                    <string>
                                        <xsl:value-of select="oc:SystemUUID"/>
                                    </string>
                                    <key>MLB</key>
                                    <string>
                                        <xsl:value-of select="oc:MLB"/>
                                    </string>
                                    <key>ROM</key>
                                    <data>
                                        <xsl:value-of select="oc:ROM"/>
                                    </data>
                                </xsl:for-each>
                            </dict>
                        </xsl:otherwise>
                    </xsl:choose>
                    <key>UpdateDataHub</key>
                    <xsl:element name="{/oc:root/oc:PlatformInfo/oc:UpdateDataHub/text()}"/>
                    <key>UpdateNVRAM</key>
                    <xsl:element name="{/oc:root/oc:PlatformInfo/oc:UpdateNVRAM/text()}"/>
                    <key>UpdateSMBIOS</key>
                    <xsl:element name="{/oc:root/oc:PlatformInfo/oc:UpdateSMBIOS/text()}"/>
                    <key>UpdateSMBIOSMode</key>
                    <string>
                        <xsl:value-of select="/oc:root/oc:PlatformInfo/oc:UpdateSMBIOSMode"/>
                    </string>
                </dict>
                <key>UEFI</key>
                <dict>
                    <key>APFS</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:UEFI/oc:APFS">
                            <key>EnableJumpstart</key>
                            <xsl:element name="{oc:EnableJumpstart}"/>
                            <key>GlobalConnect</key>
                            <xsl:element name="{oc:GlobalConnect}"/>
                            <key>HideVerbose</key>
                            <xsl:element name="{oc:HideVerbose}"/>
                            <key>JumpstartHotPlug</key>
                            <xsl:element name="{oc:JumpstartHotPlug}"/>
                            <key>MinDate</key>
                            <integer>
                                <xsl:value-of select="oc:MinDate"/>
                            </integer>
                            <key>MinVersion</key>
                            <integer>
                                <xsl:value-of select="oc:MinVersion"/>
                            </integer>
                        </xsl:for-each>
                    </dict>
                    <key>Audio</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:UEFI/oc:Audio">
                            <key>AudioCodec</key>
                            <integer>
                                <xsl:value-of select="oc:AudioDevice"/>
                            </integer>
                            <key>AudioDevice</key>
                            <string>
                                <xsl:value-of select="oc:AudioDevice"/>
                            </string>
                            <key>AudioOut</key>
                            <integer>
                                <xsl:value-of select="oc:AudioOut"/>
                            </integer>
                            <key>AudioSupport</key>
                            <xsl:element name="{oc:AudioSupport}"/>
                            <key>MinimumVolume</key>
                            <integer>
                                <xsl:value-of select="oc:MinimumVolume"/>
                            </integer>
                            <key>PlayChime</key>
                            <xsl:element name="{oc:PlayChime}"/>
                            <key>VolumeAmplifier</key>
                            <integer>
                                <xsl:value-of select="oc:VolumeAmplifier"/>
                            </integer>
                        </xsl:for-each>
                    </dict>
                    <key>ConnectDrivers</key>
                    <xsl:element name="{/oc:root/oc:UEFI/oc:ConnectDrivers/text()}"/>
                    <key>Drivers</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:UEFI/oc:Drivers/oc:driver">
                            <string>
                                <xsl:value-of select="@name"/>
                            </string>
                        </xsl:for-each>
                    </array>
                    <key>Input</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:UEFI/oc:Input">
                            <key>KeyFiltering</key>
                            <xsl:element name="{oc:KeyFiltering}"/>
                            <key>KeyForgetThreshold</key>
                            <integer>
                                <xsl:value-of select="oc:KeyForgetThreshold"/>
                            </integer>
                            <key>KeyMergeThreshold</key>
                            <integer>
                                <xsl:value-of select="oc:KeyMergeThreshold"/>
                            </integer>
                            <key>KeySupport</key>
                            <xsl:element name="{oc:KeySupport}"/>
                            <key>KeySupportMode</key>
                            <string>
                                <xsl:value-of select="oc:KeySupportMode"/>
                            </string>
                            <key>KeySwap</key>
                            <xsl:element name="{oc:KeySwap}"/>
                            <key>PointerSupport</key>
                            <xsl:element name="{oc:PointerSupport}"/>
                            <key>PointerSupportMode</key>
                            <string>
                                <xsl:value-of select="oc:PointerSupportMode"/>
                            </string>
                            <key>TimerResolution</key>
                            <integer>
                                <xsl:value-of select="oc:TimerResolution"/>
                            </integer>
                        </xsl:for-each>
                    </dict>
                    <key>Output</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:UEFI/oc:Output">
                            <key>TextRenderer</key>
                            <string>
                                <xsl:value-of select="oc:TextRenderer"/>
                            </string>
                            <key>ConsoleMode</key>
                            <string>
                                <xsl:value-of select="oc:ConsoleMode"/>
                            </string>
                            <key>Resolution</key>
                            <string>
                                <xsl:value-of select="oc:Resolution"/>
                            </string>
                            <key>ClearScreenOnModeSwitch</key>
                            <xsl:element name="{oc:ClearScreenOnModeSwitch}"/>
                            <key>DirectGopRendering</key>
                            <xsl:element name="{oc:DirectGopRendering}"/>
                            <key>IgnoreTextInGraphics</key>
                            <xsl:element name="{oc:IgnoreTextInGraphics}"/>
                            <key>ReplaceTabWithSpace</key>
                            <xsl:element name="{oc:ReplaceTabWithSpace}"/>
                            <key>ProvideConsoleGop</key>
                            <xsl:element name="{oc:ProvideConsoleGop}"/>
                            <key>ReconnectOnResChange</key>
                            <xsl:element name="{oc:ReconnectOnResChange}"/>
                            <key>SanitiseClearScreen</key>
                            <xsl:element name="{oc:SanitiseClearScreen}"/>
                            <key>UgaPassThrough</key>
                            <xsl:element name="{oc:UgaPassThrough}"/>
                        </xsl:for-each>
                    </dict>
                    <key>ProtocolOverrides</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:UEFI/oc:ProtocolOverrides">
                            <key>AppleAudio</key>
                            <xsl:element name="{oc:AppleAudio}"/>
                            <key>AppleBootPolicy</key>
                            <xsl:element name="{oc:AppleBootPolicy}"/>
                            <key>AppleDebugLog</key>
                            <xsl:element name="{oc:AppleDebugLog}"/>
                            <key>AppleEvent</key>
                            <xsl:element name="{oc:AppleEvent}"/>
                            <key>AppleFramebufferInfo</key>
                            <xsl:element name="{oc:AppleFramebufferInfo}"/>
                            <key>AppleImageConversion</key>
                            <xsl:element name="{oc:AppleImageConversion}"/>
                            <key>AppleImg4Verification</key>
                            <xsl:element name="{oc:AppleImg4Verification}"/>
                            <key>AppleKeyMap</key>
                            <xsl:element name="{oc:AppleKeyMap}"/>
                            <key>AppleRtcRam</key>
                            <xsl:element name="{oc:AppleRtcRam}"/>
                            <key>AppleSecureBoot</key>
                            <xsl:element name="{oc:AppleSecureBoot}"/>
                            <key>AppleSmcIo</key>
                            <xsl:element name="{oc:AppleSmcIo}"/>
                            <key>AppleUserInterfaceTheme</key>
                            <xsl:element name="{oc:AppleUserInterfaceTheme}"/>
                            <key>DataHub</key>
                            <xsl:element name="{oc:DataHub}"/>
                            <key>DeviceProperties</key>
                            <xsl:element name="{oc:DeviceProperties}"/>
                            <key>FirmwareVolume</key>
                            <xsl:element name="{oc:FirmwareVolume}"/>
                            <key>HashServices</key>
                            <xsl:element name="{oc:HashServices}"/>
                            <key>OSInfo</key>
                            <xsl:element name="{oc:OSInfo}"/>
                            <key>UnicodeCollation</key>
                            <xsl:element name="{oc:UnicodeCollation}"/>
                        </xsl:for-each>
                    </dict>
                    <key>Quirks</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:UEFI/oc:Quirks">
                            <key>DeduplicateBootOrder</key>
                            <xsl:element name="{oc:DeduplicateBootOrder}"/>
                            <key>ExitBootServicesDelay</key>
                            <integer>
                                <xsl:value-of select="oc:ExitBootServicesDelay"/>
                            </integer>
                            <key>IgnoreInvalidFlexRatio</key>
                            <xsl:element name="{oc:IgnoreInvalidFlexRatio}"/>
                            <key>ReleaseUsbOwnership</key>
                            <xsl:element name="{oc:ReleaseUsbOwnership}"/>
                            <key>RequestBootVarRouting</key>
                            <xsl:element name="{oc:RequestBootVarRouting}"/>
                            <key>TscSyncTimeout</key>
                            <integer>
                                <xsl:value-of select="oc:TscSyncTimeout"/>
                            </integer>
                            <key>UnblockFsConnect</key>
                            <xsl:element name="{oc:UnblockFsConnect}"/>
                        </xsl:for-each>
                    </dict>
                    <key>ReservedMemory</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:UEFI/oc:ReservedMemory/oc:dict">
                            <dict>
                                <key>Address</key>
                                <integer>
                                    <xsl:value-of select="oc:Address"/>
                                </integer>
                                <key>Type</key>
                                <string>
                                    <xsl:value-of select="oc:Type"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@Comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@Enabled}"/>
                                <key>Size</key>
                                <integer>
                                    <xsl:value-of select="oc:Size"/>
                                </integer>
                            </dict>
                        </xsl:for-each>
                    </array>
                </dict>
            </dict>
        </plist>
    </xsl:template>
</xsl:transform>
