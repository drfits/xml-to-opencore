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
                        <xsl:for-each select="/oc:root/oc:acpi/oc:patch/oc:dict">
                            <dict>
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
                                <key>Limit</key>
                                <integer>
                                    <xsl:value-of select="oc:limit"/>
                                </integer>
                                <key>Mask</key>
                                <data>
                                    <xsl:value-of select="oc:mask"/>
                                </data>
                                <key>OemTableId</key>
                                <data>
                                    <xsl:value-of select="oc:oemTableId"/>
                                </data>
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
                                <key>TableLength</key>
                                <integer>
                                    <xsl:value-of select="oc:tableLength"/>
                                </integer>
                                <key>TableSignature</key>
                                <data>
                                    <xsl:value-of select="oc:tableSignature"/>
                                </data>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Delete</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:acpi/oc:delete/oc:dict">
                            <dict>
                                <key>All</key>
                                <xsl:element name="{oc:all}"/>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@enabled}"/>
                                <key>OemTableId</key>
                                <data>
                                    <xsl:value-of select="oc:oemTableId"/>
                                </data>
                                <key>TableLength</key>
                                <integer>
                                    <xsl:value-of select="oc:tableLength"/>
                                </integer>
                                <key>TableSignature</key>
                                <data>
                                    <xsl:value-of select="oc:tableSignature"/>
                                </data>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Add</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:acpi/oc:add/oc:dict">
                            <dict>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@comment"/>
                                </string>
                                <key>Enabled</key>
                                <xsl:element name="{@enabled}"/>
                                <key>Path</key>
                                <string>
                                    <xsl:value-of select="@path"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Quirks</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:acpi/oc:quirks">
                            <key>FadtEnableReset</key>
                            <xsl:element name="{oc:fadtEnableReset}"/>
                            <key>NormalizeHeaders</key>
                            <xsl:element name="{oc:normalizeHeaders}"/>
                            <key>RebaseRegions</key>
                            <xsl:element name="{oc:rebaseRegions}"/>
                            <key>ResetHwSig</key>
                            <xsl:element name="{oc:resetHwSig}"/>
                            <key>ResetLogoStatus</key>
                            <xsl:element name="{oc:resetLogoStatus}"/>
                        </xsl:for-each>
                    </dict>
                </dict>
                <key>Booter</key>
                <dict>
                    <key>MmioWhitelist</key>
                    <array>
                        <xsl:for-each select="/oc:root/oc:booter/oc:mmioWhitelist/oc:dict">
                            <dict>
                                <key>Enabled</key>
                                <xsl:element name="{@enabled}"/>
                                <key>Address</key>
                                <integer>
                                    <xsl:value-of select="@address"/>
                                </integer>
                                <key>Comment</key>
                                <string>
                                    <xsl:value-of select="@comment"/>
                                </string>
                            </dict>
                        </xsl:for-each>
                    </array>
                    <key>Quirks</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:booter/oc:quirks">
                            <key>AvoidRuntimeDefrag</key>
                            <xsl:element name="{oc:avoidRuntimeDefrag}"/>
                            <key>DevirtualiseMmio</key>
                            <xsl:element name="{oc:devirtualiseMmio}"/>
                            <key>DisableSingleUser</key>
                            <xsl:element name="{oc:disableSingleUser}"/>
                            <key>DisableVariableWrite</key>
                            <xsl:element name="{oc:disableVariableWrite}"/>
                            <key>DiscardHibernateMap</key>
                            <xsl:element name="{oc:discardHibernateMap}"/>
                            <key>EnableSafeModeSlide</key>
                            <xsl:element name="{oc:enableSafeModeSlide}"/>
                            <key>EnableWriteUnprotector</key>
                            <xsl:element name="{oc:enableWriteUnprotector}"/>
                            <key>ForceExitBootServices</key>
                            <xsl:element name="{oc:forceExitBootServices}"/>
                            <key>ProtectMemoryRegions</key>
                            <xsl:element name="{oc:protectMemoryRegions}"/>
                            <key>ProtectSecureBoot</key>
                            <xsl:element name="{oc:protectSecureBoot}"/>
                            <key>ProtectUefiServices</key>
                            <xsl:element name="{oc:protectUefiServices}"/>
                            <key>ProvideCustomSlide</key>
                            <xsl:element name="{oc:provideCustomSlide}"/>
                            <key>ProvideMaxSlide</key>
                            <integer>
                                <xsl:value-of select="oc:provideMaxSlide"/>
                            </integer>
                            <key>RebuildAppleMemoryMap</key>
                            <xsl:element name="{oc:rebuildAppleMemoryMap}"/>
                            <key>SetupVirtualMap</key>
                            <xsl:element name="{oc:setupVirtualMap}"/>
                            <key>SignalAppleOS</key>
                            <xsl:element name="{oc:signalAppleOS}"/>
                            <key>SyncRuntimePermissions</key>
                            <xsl:element name="{oc:syncRuntimePermissions}"/>
                        </xsl:for-each>
                    </dict>
                </dict>
                <key>DeviceProperties</key>
                <dict>
                    <key>Add</key>
                    <dict>
                        <xsl:for-each select="/oc:root/oc:deviceProperties/oc:add/oc:device">
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
                        <xsl:for-each select="/oc:root/oc:deviceProperties/oc:delete/oc:device">
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
            </dict>
        </plist>
    </xsl:template>
</xsl:transform>
