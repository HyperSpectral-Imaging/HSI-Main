<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="atmcd64d.llb" Type="Document" URL="/&lt;userlib&gt;/atmcd64d.llb"/>
		<Item Name="ixon.vi" Type="VI" URL="../ixon.vi"/>
		<Item Name="motor_stage.vi" Type="VI" URL="../motor_stage.vi"/>
		<Item Name="saveToTIFF.vi" Type="VI" URL="../saveToTIFF.vi"/>
		<Item Name="SetShiftSpeed.vi" Type="VI" URL="../SetShiftSpeed.vi"/>
		<Item Name="take shot.vi" Type="VI" URL="../../test code/take shot.vi"/>
		<Item Name="TIFF.lvproj" Type="Document" URL="../lib/Halloween/SaveTIFF/TIFF.lvproj"/>
		<Item Name="ULSIFD.vi" Type="VI" URL="../ULSIFD.vi"/>
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
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
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
			<Item Name="TIFF Append New IFD.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/MainVI/TIFF Append New IFD.vi"/>
			<Item Name="TIFF ULS.lvclass" Type="LVClass" URL="../lib/Halloween/SaveTIFF/Class/TIFF/TIFF ULS.lvclass"/>
			<Item Name="TIFF.lvclass" Type="LVClass" URL="../lib/Halloween/SaveTIFF/Class/TIFF/TIFF.lvclass"/>
			<Item Name="ULS Detector.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/MainVI/ULS Detector.vi"/>
			<Item Name="ULS Mover.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/MainVI/ULS Mover.vi"/>
			<Item Name="Write All Pending Data.vi" Type="VI" URL="../lib/Halloween/SaveTIFF/Class/IFD/Write All Pending Data.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
