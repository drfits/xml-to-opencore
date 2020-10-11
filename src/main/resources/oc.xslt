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
            </dict>
        </plist>
    </xsl:template>
</xsl:transform>
