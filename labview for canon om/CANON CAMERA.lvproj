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
		<Item Name="Control_demo.vi" Type="VI" URL="../Control_demo.vi"/>
		<Item Name="savephoto.vi" Type="VI" URL="../savephoto.vi"/>
		<Item Name="TEST.vi" Type="VI" URL="../TEST.vi"/>
		<Item Name="Test0823.vi" Type="VI" URL="../Test0823.vi"/>
		<Item Name="Untitled 1.vi" Type="VI" URL="../Untitled 1.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="compatOverwrite.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOverwrite.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="Empty Picture" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Empty Picture"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Flatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Flatten Pixmap.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ MemPeek" Type="VI" URL="/&lt;vilib&gt;/vision/Extlibsp.llb/IMAQ MemPeek"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
			</Item>
			<Item Name="byteArray2Cstring.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/byteArray2Cstring.vi"/>
			<Item Name="byteArray2uint32.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/byteArray2uint32.vi"/>
			<Item Name="Dll for liveview.dll" Type="Document" URL="../../Dll for liveview/x64/Debug/Dll for liveview.dll"/>
			<Item Name="Dll for liveview.dll" Type="Document" URL="../Vital supporting file for labview program/C++/Dll for liveview/x64/Debug/Dll for liveview.dll"/>
			<Item Name="EDS_Errors.ctl" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EDS_Errors.ctl"/>
			<Item Name="EDS_MAX_NAME.ctl" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EDS_MAX_NAME.ctl"/>
			<Item Name="EdsCloseSession.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsCloseSession.vi"/>
			<Item Name="EdsCloseSession.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsCloseSession.vi"/>
			<Item Name="EdsCreateEvfImageRef.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsCreateEvfImageRef.vi"/>
			<Item Name="EdsCreateImageRef.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsCreateImageRef.vi"/>
			<Item Name="EdsCreateMemoryStream.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsCreateMemoryStream.vi"/>
			<Item Name="EDSDK.dll" Type="Document" URL="../../../EDSDK13.13.41/EDSDK13.13.41/Windows/EDSDK_64/Dll/EDSDK.dll"/>
			<Item Name="EDSDK.dll" Type="Document" URL="../EDSDK131020CD(13.10.20)/EDSDK131020CD(13.10.20)/Windows/EDSDK_64/Dll/EDSDK.dll"/>
			<Item Name="EDSDK.dll" Type="Document" URL="../Vital supporting file for labview program/C++/ConsoleApplication/x64/Debug/EDSDK.dll"/>
			<Item Name="EdsDownloadEvfImage.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsDownloadEvfImage.vi"/>
			<Item Name="EdsErrorCodes.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsErrorCodes.vi"/>
			<Item Name="EdsGetCameraList.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetCameraList.vi"/>
			<Item Name="EdsGetCameraList.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetCameraList.vi"/>
			<Item Name="EdsGetChildAtIndex.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetChildAtIndex.vi"/>
			<Item Name="EdsGetChildAtIndex.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetChildAtIndex.vi"/>
			<Item Name="EdsGetChildCount.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetChildCount.vi"/>
			<Item Name="EdsGetChildCount.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetChildCount.vi"/>
			<Item Name="EdsGetDeviceInfo.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetDeviceInfo.vi"/>
			<Item Name="EdsGetDeviceInfo.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetDeviceInfo.vi"/>
			<Item Name="EdsGetImage.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetImage.vi"/>
			<Item Name="EdsGetImageInfo.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetImageInfo.vi"/>
			<Item Name="EdsGetLength.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetLength.vi"/>
			<Item Name="EdsGetPointer.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetPointer.vi"/>
			<Item Name="EdsGetPropertySize.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetPropertySize.vi"/>
			<Item Name="EdsGetPropertySize.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsGetPropertySize.vi"/>
			<Item Name="EdsImageInfo.ctl" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsImageInfo.ctl"/>
			<Item Name="EdsInitialize.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsInitialize.vi"/>
			<Item Name="EdsInitialize.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsInitialize.vi"/>
			<Item Name="EdsOpenSession.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsOpenSession.vi"/>
			<Item Name="EdsOpenSession.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsOpenSession.vi"/>
			<Item Name="EdsRelease.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsRelease.vi"/>
			<Item Name="EdsRelease.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsRelease.vi"/>
			<Item Name="EdsSendCommand.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsSendCommand.vi"/>
			<Item Name="EdsSetPropertyData.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsSetPropertyData.vi"/>
			<Item Name="EdsSetPropertyData.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsSetPropertyData.vi"/>
			<Item Name="EdsTerminate.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsTerminate.vi"/>
			<Item Name="EdsTerminate.vi" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/EdsTerminate.vi"/>
			<Item Name="kEdsCameraCommands.ctl" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/kEdsCameraCommands.ctl"/>
			<Item Name="kEdsDataTypes.ctl" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/kEdsDataTypes.ctl"/>
			<Item Name="kEdsImageSrcs.ctl" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/kEdsImageSrcs.ctl"/>
			<Item Name="kEdsProperties.ctl" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/kEdsProperties.ctl"/>
			<Item Name="kEdsProperties.ctl" Type="VI" URL="../Vital supporting file for labview program/LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/kEdsProperties.ctl"/>
			<Item Name="kEdsTargetImageTypes.ctl" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/kEdsTargetImageTypes.ctl"/>
			<Item Name="RGBarrayToIMAQ.vi" Type="VI" URL="../LV-EDSDK-Distribution_0.2/Distribution/EDSDK-Labview.llb/RGBarrayToIMAQ.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
