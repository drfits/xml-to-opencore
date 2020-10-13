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
                        <xsl:for-each select="/oc:root/oc:kernel/oc:add/oc:dict">
                            <dict>
                                <key>Arch</key>
                                <string>
                                    <xsl:value-of select="oc:arch"/>
                                </string>
                                <key>BundlePath</key>
                                <string>
                                    <xsl:value-of select="oc:bundlePath"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@enabled}"/>
                                <key>ExecutablePath</key>
                                <string>
                                    <xsl:value-of select="oc:executablePath"/>
                                </string>
                                <key>MaxKernel</key>
                                <string>
                                    <xsl:value-of select="oc:maxKernel"/>
                                </string>
                                <key>MinKernel</key>
                                <string>
                                    <xsl:value-of select="oc:minKernel"/>
                                </string>
                                <key>PlistPath</key>
                                <string>
                                    <xsl:value-of select="oc:plistPath"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Block</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:kernel/oc:block/oc:dict">
                            <dict>
                                <key>Arch</key>
                                <string>
                                    <xsl:value-of select="oc:arch"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@enabled}"/>
                                <key>Identifier</key>
                                <string>
                                    <xsl:value-of select="oc:identifier"/>
                                </string>
                                <key>MaxKernel</key>
                                <string>
                                    <xsl:value-of select="oc:maxKernel"/>
                                </string>
                                <key>MinKernel</key>
                                <string>
                                    <xsl:value-of select="oc:minKernel"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Emulate</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:kernel/oc:emulate">
                            <key>DummyPowerManagement</key>
                            <xsl:element name="{oc:dummyPowerManagement}"/>
                            <key>Cpuid1Data</key>
                            <data>
                                <xsl:value-of select="oc:cpuid1Data"/>
                            </data>
                            <key>Cpuid1Mask</key>
                            <data>
                                <xsl:value-of select="oc:cpuid1Mask"/>
                            </data>
                            <key>MaxKernel</key>
                            <string>
                                <xsl:value-of select="oc:maxKernel"/>
                            </string>
                            <key>MinKernel</key>
                            <string>
                                <xsl:value-of select="oc:minKernel"/>
                            </string>
                        </xsl:for-each>
                    </dict>
                    <key>Force</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:kernel/oc:force/oc:dict">
                            <dict>
                                <key>Arch</key>
                                <string>
                                    <xsl:value-of select="oc:arch"/>
                                </string>
                                <key>BundlePath</key>
                                <string>
                                    <xsl:value-of select="oc:bundlePath"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@enabled}"/>
                                <key>Identifier</key>
                                <string>
                                    <xsl:value-of select="oc:identifier"/>
                                </string>
                                <key>ExecutablePath</key>
                                <string>
                                    <xsl:value-of select="oc:executablePath"/>
                                </string>
                                <key>MaxKernel</key>
                                <string>
                                    <xsl:value-of select="oc:maxKernel"/>
                                </string>
                                <key>MinKernel</key>
                                <string>
                                    <xsl:value-of select="oc:minKernel"/>
                                </string>
                                <key>PlistPath</key>
                                <string>
                                    <xsl:value-of select="oc:plistPath"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Patch</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:kernel/oc:patch/oc:dict">
                            <dict>
                                <key>Arch</key>
                                <string>
                                    <xsl:value-of select="oc:arch"/>
                                </string>
                                <key>Base</key>
                                <string>
                                    <xsl:value-of select="oc:base"/>
                                </string>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@comment"/>
                                </string>
                                <key>Count</key>
                                <integer>
                                    <xsl:value-of select="oc:count"/>
                                </integer>
                                <key>Enabled</key>
                                <xsl:element name="{@enabled}"/>
                                <key>Find</key>
                                <data>
                                    <xsl:value-of select="oc:find"/>
                                </data>
                                <key>Identifier</key>
                                <string>
                                    <xsl:value-of select="oc:identifier"/>
                                </string>
                                <key>Limit</key>
                                <integer>
                                    <xsl:value-of select="oc:limit"/>
                                </integer>
                                <key>Mask</key>
                                <data>
                                    <xsl:value-of select="oc:mask"/>
                                </data>
                                <key>MaxKernel</key>
                                <string>
                                    <xsl:value-of select="oc:maxKernel"/>
                                </string>
                                <key>MinKernel</key>
                                <string>
                                    <xsl:value-of select="oc:minKernel"/>
                                </string>
                                <key>Replace</key>
                                <data>
                                    <xsl:value-of select="oc:replace"/>
                                </data>
                                <key>ReplaceMask</key>
                                <data>
                                    <xsl:value-of select="oc:replaceMask"/>
                                </data>
                                <key>Skip</key>
                                <integer>
                                    <xsl:value-of select="oc:skip"/>
                                </integer>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Quirks</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:kernel/oc:quirks">
                            <key>AppleCpuPmCfgLock</key>
                            <xsl:element name="{oc:appleCpuPmCfgLock}"/>
                            <key>AppleXcpmCfgLock</key>
                            <xsl:element name="{oc:appleXcpmCfgLock}"/>
                            <key>AppleXcpmExtraMsrs</key>
                            <xsl:element name="{oc:appleXcpmExtraMsrs}"/>
                            <key>AppleXcpmForceBoost</key>
                            <xsl:element name="{oc:appleXcpmForceBoost}"/>
                            <key>CustomSMBIOSGuid</key>
                            <xsl:element name="{oc:customSMBIOSGuid}"/>
                            <key>DisableIoMapper</key>
                            <xsl:element name="{oc:disableIoMapper}"/>
                            <key>DisableLinkeditJettison</key>
                            <xsl:element name="{oc:disableLinkeditJettison}"/>
                            <key>DisableRtcChecksum</key>
                            <xsl:element name="{oc:disableRtcChecksum}"/>
                            <key>ExtendBTFeatureFlags</key>
                            <xsl:element name="{oc:extendBTFeatureFlags}"/>
                            <key>ExternalDiskIcons</key>
                            <xsl:element name="{oc:externalDiskIcons}"/>
                            <key>IncreasePciBarSize</key>
                            <xsl:element name="{oc:increasePciBarSize}"/>
                            <key>LapicKernelPanic</key>
                            <xsl:element name="{oc:lapicKernelPanic}"/>
                            <key>LegacyCommpage</key>
                            <xsl:element name="{oc:legacyCommpage}"/>
                            <key>PanicNoKextDump</key>
                            <xsl:element name="{oc:panicNoKextDump}"/>
                            <key>PowerTimeoutKernelPanic</key>
                            <xsl:element name="{oc:powerTimeoutKernelPanic}"/>
                            <key>ThirdPartyDrives</key>
                            <xsl:element name="{oc:thirdPartyDrives}"/>
                            <key>XhciPortLimit</key>
                            <xsl:element name="{oc:xhciPortLimit}"/>
                        </xsl:for-each>
                    </dict>
                    <key>Scheme</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:kernel/oc:scheme">
                            <key>FuzzyMatch</key>
                            <xsl:element name="{oc:fuzzyMatch}"/>
                            <key>KernelArch</key>
                            <string>
                                <xsl:value-of select="oc:kernelArch"/>
                            </string>
                            <key>KernelCache</key>
                            <string>
                                <xsl:value-of select="oc:kernelCache"/>
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
            </dict>
        </plist>
    </xsl:template>
</xsl:transform>
