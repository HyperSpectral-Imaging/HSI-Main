﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="subVIs" Type="Folder">
			<Item Name="closeMightex.vi" Type="VI" URL="../subVIs/closeMightex.vi"/>
			<Item Name="getTemp.vi" Type="VI" URL="../subVIs/getTemp.vi"/>
			<Item Name="initFile.vi" Type="VI" URL="../subVIs/initFile.vi"/>
			<Item Name="initIxon.vi" Type="VI" URL="../subVIs/initIxon.vi"/>
			<Item Name="initMightex.vi" Type="VI" URL="../subVIs/initMightex.vi"/>
			<Item Name="intiStage.vi" Type="VI" URL="../subVIs/intiStage.vi"/>
			<Item Name="ixonLiveview.vi" Type="VI" URL="../subVIs/ixonLiveview.vi"/>
			<Item Name="ixonScan.vi" Type="VI" URL="../subVIs/ixonScan.vi"/>
			<Item Name="mightexLiveview.vi" Type="VI" URL="../subVIs/mightexLiveview.vi"/>
			<Item Name="queryStagePosition.vi" Type="VI" URL="../subVIs/queryStagePosition.vi"/>
			<Item Name="setExposure.vi" Type="VI" URL="../subVIs/setExposure.vi"/>
			<Item Name="setHss.vi" Type="VI" URL="../subVIs/setHss.vi"/>
			<Item Name="setShutterMode.vi" Type="VI" URL="../subVIs/setShutterMode.vi"/>
			<Item Name="setTemp.vi" Type="VI" URL="../subVIs/setTemp.vi"/>
			<Item Name="setVss.vi" Type="VI" URL="../subVIs/setVss.vi"/>
			<Item Name="stageGoLeft.vi" Type="VI" URL="../subVIs/stageGoLeft.vi"/>
			<Item Name="stageGoOrigin.vi" Type="VI" URL="../subVIs/stageGoOrigin.vi"/>
			<Item Name="stageGoRight.vi" Type="VI" URL="../subVIs/stageGoRight.vi"/>
			<Item Name="stageSetOrigin.vi" Type="VI" URL="../subVIs/stageSetOrigin.vi"/>
			<Item Name="saveFile.vi" Type="VI" URL="../subVIs/saveFile.vi"/>
			<Item Name="stageWaitForStandby.vi" Type="VI" URL="../subVIs/stageWaitForStandby.vi"/>
		</Item>
		<Item Name="variables" Type="Folder">
			<Item Name="configDB.vi" Type="VI" URL="../subVIs/variables/configDB.vi"/>
			<Item Name="imageSettings.vi" Type="VI" URL="../subVIs/variables/imageSettings.vi"/>
			<Item Name="dataCube.vi" Type="VI" URL="../subVIs/variables/dataCube.vi"/>
		</Item>
		<Item Name="array_to_pixmap.vi" Type="VI" URL="../array_to_pixmap.vi"/>
		<Item Name="atmcd64d.llb" Type="Document" URL="/&lt;userlib&gt;/atmcd64d.llb"/>
		<Item Name="browse.vi" Type="VI" URL="../browse.vi"/>
		<Item Name="config.vi" Type="VI" URL="../config.vi"/>
		<Item Name="frontEnd.vi" Type="VI" URL="../frontEnd.vi"/>
		<Item Name="ixon.vi" Type="VI" URL="../ixon.vi"/>
		<Item Name="mightex.vi" Type="VI" URL="../mightex.vi"/>
		<Item Name="motor_stage.vi" Type="VI" URL="../motor_stage.vi"/>
		<Item Name="saveToTIFF.vi" Type="VI" URL="../saveToTIFF.vi"/>
		<Item Name="SetShiftSpeed.vi" Type="VI" URL="../SetShiftSpeed.vi"/>
		<Item Name="take shot.vi" Type="VI" URL="../../test code/take shot.vi"/>
		<Item Name="TIFF.lvproj" Type="Document" URL="../lib/Halloween/SaveTIFF/TIFF.lvproj"/>
		<Item Name="ULSIFD.vi" Type="VI" URL="../ULSIFD.vi"/>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="AbortAcquisition.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/AbortAcquisition.vi"/>
				<Item Name="AcquisitionMode_mode typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/AcquisitionMode_mode typedef.ctl"/>
				<Item Name="Add ECO For DLL.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Add ECO For DLL.vi"/>
				<Item Name="Add ECO For LabVIEW.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Add ECO For LabVIEW.vi"/>
				<Item Name="CoolerOFF.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/CoolerOFF.vi"/>
				<Item Name="CoolerON.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/CoolerON.vi"/>
				<Item Name="Error Code Enum typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/Error Code Enum typedef.ctl"/>
				<Item Name="Error Code Handler.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Error Code Handler.vi"/>
				<Item Name="Error Code Offset global.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Error Code Offset global.vi"/>
				<Item Name="FanMode_mode typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/FanMode_mode typedef.ctl"/>
				<Item Name="Get Error Source.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Get Error Source.vi"/>
				<Item Name="GetAcquiredData.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetAcquiredData.vi"/>
				<Item Name="GetHeadModel.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetHeadModel.vi"/>
				<Item Name="GetHSSpeed.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetHSSpeed.vi"/>
				<Item Name="GetNumberHSSpeeds.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetNumberHSSpeeds.vi"/>
				<Item Name="GetNumberVSSpeeds.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetNumberVSSpeeds.vi"/>
				<Item Name="GetStatus.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetStatus.vi"/>
				<Item Name="GetTemperature.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetTemperature.vi"/>
				<Item Name="GetVSSpeed.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetVSSpeed.vi"/>
				<Item Name="HSSpeed_type typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/HSSpeed_type typedef.ctl"/>
				<Item Name="Initialize.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/Initialize.vi"/>
				<Item Name="Join Strings.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Join Strings.vi"/>
				<Item Name="ReadMode_mode typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/ReadMode_mode typedef.ctl"/>
				<Item Name="SetAcquisitionMode.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetAcquisitionMode.vi"/>
				<Item Name="SetExposureTime.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetExposureTime.vi"/>
				<Item Name="SetFanMode.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetFanMode.vi"/>
				<Item Name="SetHSSpeed.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetHSSpeed.vi"/>
				<Item Name="SetImage.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetImage.vi"/>
				<Item Name="SetReadMode.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetReadMode.vi"/>
				<Item Name="SetShutter.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetShutter.vi"/>
				<Item Name="SetShutters.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetShutters.vi"/>
				<Item Name="SetTemperature.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetTemperature.vi"/>
				<Item Name="SetVSSpeed.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetVSSpeed.vi"/>
				<Item Name="ShutDown.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/ShutDown.vi"/>
				<Item Name="Shutter_mode typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/Shutter_mode typedef.ctl"/>
				<Item Name="Shutter_type typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/Shutter_type typedef.ctl"/>
				<Item Name="StartAcquisition.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/StartAcquisition.vi"/>
				<Item Name="Subtract ECO For DLL.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Subtract ECO For DLL.vi"/>
				<Item Name="U32 To Error Code Enum.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/U32 To Error Code Enum.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="LVStringsAndValuesArrayTypeDef_U16.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVStringsAndValuesArrayTypeDef_U16.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Unflatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Unflatten Pixmap.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
			</Item>
			<Item Name="atmcd64d.dll" Type="Document" URL="atmcd64d.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="IFD Image Array Import.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/MainVI/IFD Image Array Import.vi"/>
			<Item Name="IFD.lvclass" Type="LVClass" URL="../lib/Halloween/SaveTIFF/Class/IFD/IFD.lvclass"/>
			<Item Name="IFD_Tag.lvclass" Type="LVClass" URL="../lib/Halloween/SaveTIFF/Class/Tag/IFD_Tag.lvclass"/>
			<Item Name="Img Data Type.ctl" Type="VI" URL="../lib/Halloween/SaveTIFF/Class/IFD/Img Data Type.ctl"/>
			<Item Name="Offset Content.ctl" Type="VI" URL="../lib/Halloween/SaveTIFF/Class/Tag/Offset Content.ctl"/>
			<Item Name="SaveScan_mk3.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/SaveScan_mk3.vi"/>
			<Item Name="SSClassic_USBCamera_SDK.dll" Type="Document" URL="../lib/SSClassic_USBCamera_SDK.dll"/>
			<Item Name="TIFF Append New IFD.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/MainVI/TIFF Append New IFD.vi"/>
			<Item Name="TIFF ULS.lvclass" Type="LVClass" URL="../lib/Halloween/SaveTIFF/Class/TIFF/TIFF ULS.lvclass"/>
			<Item Name="TIFF.lvclass" Type="LVClass" URL="../lib/Halloween/SaveTIFF/Class/TIFF/TIFF.lvclass"/>
			<Item Name="ULS Detector.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/MainVI/ULS Detector.vi"/>
			<Item Name="ULS Mover.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/MainVI/ULS Mover.vi"/>
			<Item Name="Write All Pending Data.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/Class/IFD/Write All Pending Data.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="HSIDLL" Type="DLL">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{7EB37BDC-8612-4ACD-87EB-0033F70DE9E0}</Property>
				<Property Name="App_INI_GUID" Type="Str">{84D26676-E252-4A01-9CB2-BBCA4BF6A7DD}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E543E713-86D1-4433-9807-7D15C63BD018}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">HSIDLL</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/dll</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{90EFABDF-A589-48D5-91C0-F19BAD759041}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">subVis.dll</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/dll/subVis.dll</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/dll/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Dll_compatibilityWith2011" Type="Bool">false</Property>
				<Property Name="Dll_delayOSMsg" Type="Bool">true</Property>
				<Property Name="Dll_headerGUID" Type="Str">{094A2EAE-1DC3-4DDC-B13E-C74897057C0B}</Property>
				<Property Name="Dll_libGUID" Type="Str">{59188720-327B-468F-98A1-1E7ED11D999B}</Property>
				<Property Name="Source[0].itemID" Type="Str">{F72D3080-79D1-48AA-9D45-CBB74BF805A1}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]CallingConv" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]Name" Type="Str">CloseMightex</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;A#!!!!!!!)!"!!!!&amp;1!]!!-!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Q!!?!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!%!!1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">1</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/subVIs/closeMightex.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">stagePosition</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]CallingConv" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]Name" Type="Str">QueryStagePosition</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">lenOfStagePos</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;A#!!!!!!!-!"!!!!":!-0````].=X2B:W61&lt;X.J&gt;'FP&lt;A"5!0!!$!!!!!!!!!!"!!!!!!!!!!!!!!!!!!!!!!-!!(A!!!!!!!!!!!!!!!!!!!E!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"!!)</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">3</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/subVIs/queryStagePosition.vi</Property>
				<Property Name="Source[10].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[10].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].itemID" Type="Ref">/My Computer/subVIs/setExposure.vi</Property>
				<Property Name="Source[11].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[11].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[12].itemID" Type="Ref">/My Computer/subVIs/setHss.vi</Property>
				<Property Name="Source[12].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[12].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[13].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[13].itemID" Type="Ref">/My Computer/subVIs/setShutterMode.vi</Property>
				<Property Name="Source[13].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[13].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[14].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[14].itemID" Type="Ref">/My Computer/subVIs/setTemp.vi</Property>
				<Property Name="Source[14].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[14].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[15].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[15].itemID" Type="Ref">/My Computer/subVIs/setVss.vi</Property>
				<Property Name="Source[15].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[15].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[16].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[16].itemID" Type="Ref">/My Computer/subVIs/stageGoLeft.vi</Property>
				<Property Name="Source[16].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[16].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[17].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[17].itemID" Type="Ref">/My Computer/subVIs/stageGoOrigin.vi</Property>
				<Property Name="Source[17].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[17].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[18].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[18].itemID" Type="Ref">/My Computer/subVIs/stageGoRight.vi</Property>
				<Property Name="Source[18].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[18].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[19].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[19].itemID" Type="Ref">/My Computer/subVIs/stageSetOrigin.vi</Property>
				<Property Name="Source[19].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[19].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]CallingConv" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]Name" Type="Str">GetTemp</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">isCooled</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;A#!!!!!!!1!"!!!!!Z!)1BJ=U.P&lt;WRF:!!!%5!$!!NU:7VQ:8*B&gt;(6S:1"5!0!!$!!!!!%!!!!#!!!!!!!!!!!!!!!!!!!!!!-!!(A!!!!!!!!*!!!!!!!!!!E!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"!!-</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/subVIs/getTemp.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[20].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[20].itemID" Type="Ref">/My Computer/subVIs/saveFile.vi</Property>
				<Property Name="Source[20].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[20].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]CallingConv" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]Name" Type="Str">InitFile</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">InitFile2</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;A#!!!!!!!-!"!!!!"*!-P````]*37ZJ&gt;#"';7RF!&amp;1!]!!-!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"!Q!!?!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!)!!!!!!%!!A</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/subVIs/initFile.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">DLLErrorCodeFromIni</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">5</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">model</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[3]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[3]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[3]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[3]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[3]VIProtoName" Type="Str">vsArray</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[3]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[4]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[4]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[4]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[4]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[4]VIProtoName" Type="Str">hsArray</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[4]VIProtoOutputIdx" Type="Int">0</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[4]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]CallingConv" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]Name" Type="Str">InitIxon</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]VIProtoName" Type="Str">lenOfModel</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfo[5]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;A#!!!!!!!E!%%!Q`````Q:4&gt;(*J&lt;G=!!!N!"A!&amp;6G&amp;M&gt;75!#A"1!!)!!!!"!"2!1!!"`````Q!#"WBT18*S98E!&amp;%"!!!(`````!!)(&gt;H."=H*B?1!/1$$`````"7VP:'6M!"V!"Q!82%R-)'6S=G^S)'.P:'5A:H*P&lt;3"J&lt;GE!"!!!!&amp;1!]!!-!!-!"!!&amp;!!9!"Q!(!!=!"Q!(!!=!"Q!(!Q!!?!!!#1!!!!E!!!!*!!!!#1!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!%!#!</Property>
				<Property Name="Source[4].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">6</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/subVIs/initIxon.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[4].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/subVIs/initMightex.vi</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[5].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/subVIs/intiStage.vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[6].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">stop</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">newPicture</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]CallingConv" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]Name" Type="Str">IxonLiveview</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]VIProtoName" Type="Str">_8BitPixmap</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[3]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;A#!!!!!!!9!"!!!!!5!"1!!(E"!!!,``````````Q!"$$AN9GFU)("J?'VB=!!!&amp;%!T`````QNO:8=A='FD&gt;(6S:1!+1#%%=X2P=!!!6!$Q!!Q!!!!!!!)!!Q!!!!!!!!!!!!!!!!!!!!1$!!"Y!!!!!!!!!!!!!!E!!!!*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!I!!!!!!1!&amp;</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">4</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/subVIs/ixonLiveview.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[7].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/subVIs/ixonScan.vi</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[8].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]CallingConv" Type="Int">1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]Name" Type="Str">MightexLiveview</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">Close</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;A#!!!!!!!-!"!!!!!J!)16$&lt;'^T:1"5!0!!$!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1-!!(A!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#A!!!!!"!!)</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">2</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/subVIs/mightexLiveview.vi</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[9].type" Type="Str">ExportedVI</Property>
				<Property Name="SourceCount" Type="Int">21</Property>
				<Property Name="TgtF_companyName" Type="Str">NTU</Property>
				<Property Name="TgtF_fileDescription" Type="Str">HSIDLL</Property>
				<Property Name="TgtF_internalName" Type="Str">HSIDLL</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright ?2021 NTU</Property>
				<Property Name="TgtF_productName" Type="Str">HSIDLL</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{CC470A88-AC41-49A3-907A-986FEAB3BAF6}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">subVis.dll</Property>
			</Item>
		</Item>
	</Item>
</Project>
