// ConsoleApplication.cpp : 此檔案包含 'main' 函式。程式會於該處開始執行及結束執行。
//

#include <iostream>
#include<cstdlib>
#include <EDSDK.h>
#include <EDSDKErrors.h>
#include <EDSDKTypes.h>
#include <stdint.h>

using namespace std;

int test()
{
	//initialize
	EdsError error = 0;
	error = EdsInitializeSDK();
	cout << error;
	EdsCameraListRef CamList;
	error = EdsGetCameraList(&CamList);
	cout << error;
	EdsCameraRef Cam = NULL;
	error = EdsGetChildAtIndex(CamList, 0, &Cam);
	cout << error;
	EdsRelease(CamList);
	error = EdsOpenSession(Cam);
	cout << error << endl;

	//getinfo
	EdsDeviceInfo Info;
	EdsGetDeviceInfo(Cam,&Info);
	cout <<(string)Info.szPortName << endl << Info.szDeviceDescription << endl << Info.deviceSubType << endl;

	//set property
	EdsDataType Property_data_type;
	EdsUInt32 Property_size;
	/*EdsUInt32 ISO;
	EdsUInt32 Tv;
	EdsUInt32 EC;
	//ISO
	cout << "ISO"<< endl;
	EdsGetPropertySize(Cam, kEdsPropID_ISOSpeed, 0, &Property_data_type, &Property_size);
	cout << Property_data_type << endl;
	EdsGetPropertyData(Cam, kEdsPropID_ISOSpeed, 0, Property_size, &ISO);
	cout << ISO << endl;

	cout << "please set iso";
	cin >> ISO;
	EdsSetPropertyData(Cam, kEdsPropID_ISOSpeed, 0, Property_data_type, &ISO);

	//Tv
	cout << "Shutter speed" << endl;
	EdsGetPropertySize(Cam, kEdsPropID_Tv, 0, &Property_data_type, &Property_size);
	cout << Property_data_type << endl;
	EdsGetPropertyData(Cam, kEdsPropID_Tv, 0, Property_size, &Tv);
	cout << Tv << endl;

	cout << "please set shutter speed";
	cin >> Tv;
	EdsSetPropertyData(Cam, kEdsPropID_Tv, 0, Property_data_type, &Tv);

	//Exposure compensation
	cout << "Exposure compensation" << endl;
	EdsGetPropertySize(Cam, kEdsPropID_ExposureCompensation, 0, &Property_data_type, &Property_size);
	cout << Property_data_type << endl;
	EdsGetPropertyData(Cam, kEdsPropID_ExposureCompensation, 0, Property_size, &EC);
	cout << Tv << endl;

	cout << "please set exposure compensation";
	cin >> EC;
	EdsSetPropertyData(Cam, kEdsPropID_ExposureCompensation, 0, Property_data_type, &EC);*/

	//liveview
	EdsError LVerror = 0;
	int LV = 2;
	EdsGetPropertySize(Cam, kEdsPropID_Evf_OutputDevice, 0, &Property_data_type, &Property_size);
	EdsSetPropertyData(Cam, kEdsPropID_Evf_OutputDevice, 0, Property_data_type, &LV);
	/*
	EdsStreamRef MemoryStream = NULL;
	EdsStreamRef RGBStream = NULL;
	//EdsImageRef ImageRef = NULL;
	EdsEvfImageRef EVFImageRef = NULL;
	EdsImageInfo ImageInfo;
	void* RGBPtr = NULL;
	EdsUInt64 lengh = 0;


	LVerror = EdsCreateMemoryStream(0, &MemoryStream);
	LVerror = EdsCreateMemoryStream(0, &RGBStream);
	LVerror = EdsCreateEvfImageRef(MemoryStream, &EVFImageRef);
	LVerror = EdsDownloadEvfImage(Cam, EVFImageRef);
	//EdsCreateImageRef(MemoryStream, &ImageRef);

	LVerror = EdsGetImageInfo(EVFImageRef, kEdsImageSrc_Thumbnail, &ImageInfo);
	cout << ImageInfo.effectiveRect.size.width << "  "<<ImageInfo.effectiveRect.size.height;
	EdsSize ImageSize;
	ImageSize.height = ImageInfo.effectiveRect.size.height;
	ImageSize.width = ImageInfo.effectiveRect.size.width;
	LVerror = EdsGetImage(EVFImageRef, kEdsImageSrc_Thumbnail, kEdsTargetImageType_RGB, ImageInfo.effectiveRect, ImageSize, RGBStream);
	LVerror = EdsGetPointer(RGBStream, &RGBPtr);
	LVerror = EdsGetLength(RGBStream, &lengh);


	cout << endl << RGBPtr << endl << lengh;
	*/

	Sleep(2000);
	EdsError err = EDS_ERR_OK;
	EdsStreamRef stream = NULL;
	EdsEvfImageRef evfImage = NULL;
	// Create memory stream.
	err = EdsCreateMemoryStream(0, &stream);
	// Create EvfImageRef.
	if (err == EDS_ERR_OK)
	{
		err = EdsCreateEvfImageRef(stream, &evfImage);
	}
	// Download live view image data.
	Sleep(2000);
	if (err == EDS_ERR_OK)
	{
		err = EdsDownloadEvfImage(Cam, evfImage);
	}
	// Get the incidental data of the image.
	if (err == EDS_ERR_OK)
	{
		// Get the zoom ratio
		EdsUInt32 zoom;
		EdsGetPropertyData(evfImage, kEdsPropID_Evf_ZoomPosition, 0, sizeof(zoom), &zoom);
		// Get the focus and zoom border position
		EdsPoint point;
		EdsGetPropertyData(evfImage, kEdsPropID_Evf_ZoomPosition, 0, sizeof(point), &point);
	}
	//
	// Display image
	//

	int release = 0;
	while (release == 0) {
		cin >> release;
		if (release == 1)break;
	}

	// Release stream
	if (stream != NULL)
	{
		EdsRelease(stream);
		stream = NULL;
	}
	// Release evfImage
	if (evfImage != NULL)
	{
		EdsRelease(evfImage);
		evfImage = NULL;
	}
	

	/*EdsError err = EDS_ERR_OK;
	EdsEvfImageRef image = NULL;
	EdsStreamRef stream = NULL;
	unsigned char* data = NULL;
	EdsUInt64 size = 0;

	err = EdsCreateMemoryStream(0, &stream);

	if (err != EDS_ERR_OK) {
		cout << "Download Live View Image Error in Function EdsCreateMemoryStream: " << err << "\n";
		return false;
	}

	err = EdsCreateEvfImageRef(stream, &image);

	if (err != EDS_ERR_OK) {
		cout << "Download Live View Image Error in Function EdsCreateEvfImageRef: " << err << "\n";
		return false;

	}

	err = EdsDownloadEvfImage(Cam, image);

	if (err != EDS_ERR_OK) {
		cout << "Download Live View Image Error in Function EdsDownloadEvfImage: " << err << "\n";
		return false;
	}

	err = EdsGetPointer(stream, (EdsVoid * *)& data);

	if (err != EDS_ERR_OK) {
		cout << "Download Live View Image Error in Function EdsGetPointer: " << err << "\n";
		return false;
	}

	err = EdsGetLength(stream, &size);

	if (err != EDS_ERR_OK) {
		cout << "Download Live View Image Error in Function EdsGetLength: " << err << "\n";
		return false;
	}

	// libjpegTurbo(data, size);
	// display RGB image in opencv

	if (stream != NULL) {
		EdsRelease(stream);
		stream = NULL;
	}

	if (image != NULL) {
		EdsRelease(image);
		image = NULL;
	}

	data = NULL;
	return true;
	*/
	int exit = 0;
	while (exit == 0) {
		cin >> exit;
		if (exit == 1)break;
	}

	EdsCloseSession(Cam);
	EdsRelease(Cam);
	EdsTerminateSDK();
	
	return 0;
}
EdsError getFirstCamera(EdsCameraRef* camera)
{
	EdsError err = EDS_ERR_OK;
	EdsCameraListRef cameraList = NULL;
	EdsUInt32 count = 0;
	// Get camera list
	err = EdsGetCameraList(&cameraList);
	// Get number of cameras
	if (err == EDS_ERR_OK)
	{
		err = EdsGetChildCount(cameraList, &count);
		if (count == 0)
		{
			err = EDS_ERR_DEVICE_NOT_FOUND;
		}
	}
	// Get first camera retrieved
	if (err == EDS_ERR_OK)
	{
		err = EdsGetChildAtIndex(cameraList, 0, camera);
	}
	// Release camera list
	if (cameraList != NULL)
	{
		EdsRelease(cameraList);
		cameraList = NULL;
	}
	return err;
}
EdsError startLiveview(EdsCameraRef camera)
{
	EdsError err = EDS_ERR_OK;
	// Get the output device for the live view image
	EdsUInt32 device;
	err = EdsGetPropertyData(camera, kEdsPropID_Evf_OutputDevice, 0, sizeof(device), &device);
	// PC live view starts by setting the PC as the output device for the live view image.
	if (err == EDS_ERR_OK)
	{
		device = kEdsEvfOutputDevice_PC;
		err = EdsSetPropertyData(camera, kEdsPropID_Evf_OutputDevice, 0, sizeof(device), &device);
	}
	// A property change event notification is issued from the camera if property settings are made successfully.
	// Start downloading of the live view image once the property change notification arrives.
	return err;
}
EdsError downloadEvfData(EdsCameraRef camera)
{
	EdsError err = EDS_ERR_OK;
	EdsStreamRef stream = NULL;
	EdsEvfImageRef evfImage = NULL;
	// Create memory stream.
	err = EdsCreateMemoryStream(0, &stream);
	// Create EvfImageRef.
	if (err == EDS_ERR_OK)
	{
		err = EdsCreateEvfImageRef(stream, &evfImage);
	}
	// Download live view image data.
	if (err == EDS_ERR_OK)
	{
		err = EdsDownloadEvfImage(camera, evfImage);
	}
	// Get the incidental data of the image.
	if (err == EDS_ERR_OK)
	{
		// Get the zoom ratio
		EdsUInt32 zoom;
		EdsGetPropertyData(evfImage, kEdsPropID_Evf_ZoomPosition, 0, sizeof(zoom), &zoom);
		// Get the focus and zoom border position
		EdsPoint point;
		EdsGetPropertyData(evfImage, kEdsPropID_Evf_ZoomPosition, 0, sizeof(point), &point);
	}
	// Display image
	EdsImageInfo Info;
	EdsStreamRef rgbstream = NULL;
	EdsImageRef rgbimageref = NULL;
	err = EdsCreateImageRef(stream, &rgbimageref);
	cout << err << endl;
	err = EdsCreateMemoryStream(0, &rgbstream);
	cout << err << endl;
	err = EdsGetImageInfo(rgbimageref, kEdsImageSrc_Thumbnail, &Info);
	cout << err << endl;
	cout << Info.effectiveRect.size.height << " " << Info.effectiveRect.size.width << endl;
	err = EdsGetImage(rgbimageref, kEdsImageSrc_Thumbnail, kEdsTargetImageType_RGB, Info.effectiveRect, Info.effectiveRect.size, rgbstream);
	cout << err << endl;
	EdsVoid* pointer;
	EdsUInt64 length = 0;
	err = EdsGetPointer(rgbstream, &pointer);
	cout << err << endl << pointer;
	err = EdsGetLength(rgbstream, &length);
	cout << err << endl << length;
	EdsUInt8* data = (EdsUInt8*)(pointer);
	//for (int i = 0; i < length/8; i++) {
 	//	cout << (int)data[i] << " ";
	//}

	// Release stream
	if (stream != NULL)
	{
		EdsRelease(stream);
		stream = NULL;
	}
	// Release evfImage
	if (evfImage != NULL)
	{
		EdsRelease(evfImage);
		evfImage = NULL;
	}
	return err;
}
EdsError endLiveview(EdsCameraRef camera)
{
	EdsError err = EDS_ERR_OK;
	// Get the output device for the live view image
	EdsUInt32 device;
	err = EdsGetPropertyData(camera, kEdsPropID_Evf_OutputDevice, 0, sizeof(device), &device);
	// PC live view ends if the PC is disconnected from the live view image output device.
	if (err == EDS_ERR_OK)
	{
		device = kEdsEvfOutputDevice_TFT;
		err = EdsSetPropertyData(camera, kEdsPropID_Evf_OutputDevice, 0, sizeof(device), &device);
	}
	return err;
}
EdsDirectoryItemRef* getDCIMFolder(EdsVolumeRef volume, EdsDirectoryItemRef* directoryItem)
{
	EdsError err = EDS_ERR_OK;
	EdsDirectoryItemRef dirItem = NULL;
	EdsDirectoryItemInfo dirItemInfo;
	EdsUInt32 count = 0;
	// Get number of items under the volume
	err = EdsGetChildCount(volume, &count);
	if (err == EDS_ERR_OK && count == 0)
	{
		err = EDS_ERR_DIR_NOT_FOUND;
	}
	// Get DCIM folder
	for (int i = 0; i < count && err == EDS_ERR_OK; i++)
	{
		// Get the ith item under the specified volume
		if (err == EDS_ERR_OK)
		{
			err = EdsGetChildAtIndex(volume, i, &dirItem);
		}
		// Get retrieved item information
		if (err == EDS_ERR_OK)
		{
			err = EdsGetDirectoryItemInfo(dirItem, &dirItemInfo);
		}
		// Indicates whether or not the retrieved item is a DCIM folder.
		if (err == EDS_ERR_OK)
		{
			if (_stricmp(dirItemInfo.szFileName, "DCIM") == 0 &&
				dirItemInfo.isFolder == true)
			{
				directoryItem = &dirItem;
				break;
			}
		}
		// Release retrieved item
		if (dirItem)
		{
			EdsRelease(dirItem);
			dirItem = NULL;
		}
	}
	return &dirItem;
}
EdsError downloadImage(EdsDirectoryItemRef directoryItem)
{
	EdsError err = EDS_ERR_OK;
	EdsStreamRef stream = NULL;
	// Get directory item information
	EdsDirectoryItemInfo dirItemInfo;
	err = EdsGetDirectoryItemInfo(directoryItem, &dirItemInfo);
	// Create file stream for transfer destination
	if (err == EDS_ERR_OK)
	{
		err = EdsCreateFileStream(dirItemInfo.szFileName,
			kEdsFileCreateDisposition_CreateAlways,
			kEdsAccess_ReadWrite, &stream);
	}
	// Download image
	if (err == EDS_ERR_OK)
	{
		err = EdsDownload(directoryItem, dirItemInfo.size, stream);
	}
	// Issue notification that download is complete
	if (err == EDS_ERR_OK)
	{
		err = EdsDownloadComplete(directoryItem);
	}

	EdsImageInfo Info;
	EdsStreamRef rgbstream = NULL;
	EdsImageRef rgbimageref = NULL;
	err = EdsCreateImageRef(stream, &rgbimageref);
	cout << err << endl;
	err = EdsCreateMemoryStream(0, &rgbstream);
	cout << err << endl;
	err = EdsGetImageInfo(rgbimageref, kEdsImageSrc_FullView, &Info);
	cout << err << endl;
	cout << Info.effectiveRect.size.height << " " << Info.effectiveRect.size.width << endl;
	err = EdsGetImage(rgbimageref, kEdsImageSrc_FullView, kEdsTargetImageType_RGB, Info.effectiveRect, Info.effectiveRect.size, rgbstream);
	cout << err << endl;
	EdsVoid* pointer;
	EdsUInt64 length = 0;
	err = EdsGetPointer(rgbstream, &pointer);
	cout << err << endl << pointer;
	err = EdsGetLength(rgbstream, &length);
	cout << err << endl << length;
	EdsUInt8* data = (EdsUInt8*)(pointer);
	//for (int i = 0; i < length/8; i++) {
	//	cout << (int)data[i] << " ";
	//}


	// Release stream
	if (stream != NULL)
	{
		EdsRelease(stream);
		stream = NULL;
	}
	return err;
}

int main() {
	EdsError err = EDS_ERR_OK;
	EdsCameraRef camera = NULL;
	bool isSDKLoaded = false;
	// Initialize SDK
	err = EdsInitializeSDK();
	if (err == EDS_ERR_OK)
	{
		isSDKLoaded = true;
	}
	// Get first camera
	if (err == EDS_ERR_OK)
	{
		// See Sample 2.
		err = getFirstCamera(&camera);
	}
	if (err == EDS_ERR_OK)
	{
		err = EdsOpenSession(camera);
	}
	for (int i = 0; i <= 10; i++) 
	{
		EdsVolumeRef volume = 0;
		EdsDirectoryItemRef DCIM = 0;
		EdsDirectoryItemRef* watchDCIM = &DCIM;
		EdsUInt32 foldercount = 0;
		EdsUInt32 volumecount = 0;
		EdsGetChildCount(camera, &volumecount);
		EdsGetChildAtIndex(camera, 0, &volume);
		watchDCIM = getDCIMFolder(volume, &DCIM);
		DCIM = *watchDCIM;
		EdsGetChildCount(DCIM, &foldercount);
		foldercount = foldercount - 1;
		EdsDirectoryItemRef folder;
		EdsGetChildAtIndex(DCIM, foldercount, &folder);
		EdsUInt32 imagecount = 0;
		EdsGetChildCount(folder, &imagecount);
		imagecount--;
		EdsDirectoryItemRef image;
		EdsGetChildAtIndex(folder, imagecount, &image);
		EdsDirectoryItemInfo imageinfo;
		EdsGetDirectoryItemInfo(image, &imageinfo);
		downloadImage(image);
	}
	// Close session with camera
	if (err == EDS_ERR_OK)
	{
		err = EdsCloseSession(camera);
	}
	// Release camera
	if (camera != NULL)
	{
		EdsRelease(camera);
	}
	// Terminate SDK
	if (isSDKLoaded)
	{
		EdsTerminateSDK();
	}
}


// 執行程式: Ctrl + F5 或 [偵錯] > [啟動但不偵錯] 功能表
// 偵錯程式: F5 或 [偵錯] > [啟動偵錯] 功能表

// 開始使用的提示: 
//   1. 使用 [方案總管] 視窗，新增/管理檔案
//   2. 使用 [Team Explorer] 視窗，連線到原始檔控制
//   3. 使用 [輸出] 視窗，參閱組建輸出與其他訊息
//   4. 使用 [錯誤清單] 視窗，檢視錯誤
//   5. 前往 [專案] > [新增項目]，建立新的程式碼檔案，或是前往 [專案] > [新增現有項目]，將現有程式碼檔案新增至專案
//   6. 之後要再次開啟此專案時，請前往 [檔案] > [開啟] > [專案]，然後選取 .sln 檔案
