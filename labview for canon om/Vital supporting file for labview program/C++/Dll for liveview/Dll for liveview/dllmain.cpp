// dllmain.cpp : 定義 DLL 應用程式的進入點。

#include <iostream>
#include <cstdlib>
#include <EDSDK.h>
#include <EDSDKErrors.h>
#include <EDSDKTypes.h>
#include <stdint.h>
#include "pch.h"

#define DLL __declspec(dllexport)

using namespace std;

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

extern "C" DLL EdsError getFirstCamera(EdsCameraRef* camera)
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
extern "C" DLL EdsError startLiveview(EdsCameraRef camera)
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
extern "C" DLL EdsUInt8* downloadEvfData(EdsCameraRef camera)
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
	//cout << err << endl;
	err = EdsCreateMemoryStream(0, &rgbstream);
	//cout << err << endl;
	err = EdsGetImageInfo(rgbimageref, kEdsImageSrc_Thumbnail, &Info);
	//cout << err << endl;
	//cout << Info.effectiveRect.size.height << " " << Info.effectiveRect.size.width << endl;
	err = EdsGetImage(rgbimageref, kEdsImageSrc_Thumbnail, kEdsTargetImageType_RGB, Info.effectiveRect, Info.effectiveRect.size, rgbstream);
	//cout << err << endl;
	EdsVoid* pointer;
	EdsUInt64 length = 0;
	err = EdsGetPointer(rgbstream, &pointer);
	//cout << err << endl << pointer;
	err = EdsGetLength(rgbstream, &length);
	//cout << err << endl << length;
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
	return data;
}
extern "C" DLL EdsError endLiveview(EdsCameraRef camera)
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
EdsUInt8* downloadImage(EdsDirectoryItemRef directoryItem)
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
	//cout << err << endl;
	err = EdsCreateMemoryStream(0, &rgbstream);
	//cout << err << endl;
	err = EdsGetImageInfo(rgbimageref, kEdsImageSrc_FullView, &Info);
	//cout << err << endl;
	//cout << Info.effectiveRect.size.height << " " << Info.effectiveRect.size.width << endl;
	err = EdsGetImage(rgbimageref, kEdsImageSrc_FullView, kEdsTargetImageType_RGB, Info.effectiveRect, Info.effectiveRect.size, rgbstream);
	//cout << err << endl;
	EdsVoid* pointer;
	EdsUInt64 length = 0;
	err = EdsGetPointer(rgbstream, &pointer);
	//cout << err << endl << pointer;
	err = EdsGetLength(rgbstream, &length);
	//cout << err << endl << length;
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
	EdsRelease(rgbimageref);
	rgbimageref = 0;
	return data;
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
extern "C" DLL EdsUInt8* dowloadphoto(EdsCameraRef camera)
{
	EdsUInt8* pointer;
	EdsVolumeRef volume = 0;
	EdsDirectoryItemRef DCIM = 0;
	EdsDirectoryItemRef* watchDCIM = &DCIM;
	EdsUInt32 foldercount = 0;
	EdsUInt32 volumecount = 0;
	EdsGetChildCount(camera, &volumecount);
	EdsGetChildAtIndex(camera, 0, &volume);
	watchDCIM = getDCIMFolder(volume, &DCIM);
	DCIM = *watchDCIM;
	EdsRelease(volume);
	EdsGetChildCount(DCIM, &foldercount);
	foldercount = foldercount - 1;
	EdsDirectoryItemRef folder = 0;
	EdsGetChildAtIndex(DCIM, foldercount, &folder);
	EdsRelease(DCIM);
	EdsUInt32 imagecount = 0;
	EdsGetChildCount(folder, &imagecount);
	imagecount--;
	EdsDirectoryItemRef image = 0;
	EdsGetChildAtIndex(folder, imagecount, &image);
	EdsRelease(folder);
	EdsDirectoryItemInfo imageinfo;
	EdsGetDirectoryItemInfo(image, &imageinfo);
	

	pointer = downloadImage(image);
	
	
	
	EdsRelease(image);
	volume = 0;
	DCIM = 0;
	folder = 0;
	image = 0;
	
	return pointer;
}

