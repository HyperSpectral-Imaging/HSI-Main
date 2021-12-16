/******************************************************************************
*                                                                             *
*   PROJECT : EOS Digital Software Development Kit EDSDK                      *
*      NAME : ImageQuality.cpp                                                *
*                                                                             *
*   Description: This is the Sample code to show the usage of EDSDK.          *
*                                                                             *
*                                                                             *
*******************************************************************************
*                                                                             *
*   Written and developed by Camera Design Dept.53                            *
*   Copyright Canon Inc. 2006-2008 All Rights Reserved                        *
*                                                                             *
*******************************************************************************/

#include "stdafx.h"
#include "CameraControl.h"
#include "ImageQuality.h"

#define WM_USER_PROPERTY_CHANGED		WM_APP+1
#define WM_USER_PROPERTYDESC_CHANGED	WM_APP+2
// CImageQuality

IMPLEMENT_DYNAMIC(CImageQuality, CPropertyComboBox)
CImageQuality::CImageQuality()
{
	// set up action command
	setActionCommand("set_ImageQuality");

	// PTP Camera
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LR,     "RAW"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRLJF,  "RAW + Large Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRMJF,  "RAW + Middle Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRSJF,  "RAW + Small Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRLJN,  "RAW + Large Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRMJN,  "RAW + Middle Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRSJN,  "RAW + Small Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRS1JF, "RAW + Small1 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRS1JN, "RAW + Small1 Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRS2JF, "RAW + Small2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRS3JF, "RAW + Small3 Jpeg"));
	
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRLJ,   "RAW + Large Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRM1J,  "RAW + Middle1 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRM2J,  "RAW + Middle2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LRSJ,   "RAW + Small Jpeg"));

	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MR,     "Middle Raw(Small RAW1)"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRLJF,  "Middle Raw(Small RAW1) + Large Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRMJF,  "Middle Raw(Small RAW1) + Middle Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRSJF,  "Middle Raw(Small RAW1) + Small Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRLJN,  "Middle Raw(Small RAW1) + Large Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRMJN,  "Middle Raw(Small RAW1) + Middle Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRSJN,  "Middle Raw(Small RAW1) + Small Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRS1JF, "Middle RAW + Small1 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRS1JN, "Middle RAW + Small1 Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRS2JF, "Middle RAW + Small2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRS3JF, "Middle RAW + Small3 Jpeg"));

	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRLJ,   "Middle Raw + Large Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRM1J,  "Middle Raw + Middle1 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRM2J,  "Middle Raw + Middle2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MRSJ,   "Middle Raw + Small Jpeg"));

	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SR,     "Small RAW(Small RAW2)"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRLJF,  "Small RAW(Small RAW2) + Large Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRMJF,  "Small RAW(Small RAW2) + Middle Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRSJF,  "Small RAW(Small RAW2) + Small Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRLJN,  "Small RAW(Small RAW2) + Large Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRMJN,  "Small RAW(Small RAW2) + Middle Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRSJN,  "Small RAW(Small RAW2) + Small Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRS1JF, "Small RAW + Small1 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRS1JN, "Small RAW + Small1 Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRS2JF, "Small RAW + Small2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRS3JF, "Small RAW + Small3 Jpeg"));

	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRLJ,   "Small RAW + Large Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRM1J,  "Small RAW + Middle1 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRM2J,  "Small RAW + Middle2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SRSJ,   "Small RAW + Small Jpeg"));

	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CR,		"CRAW"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRLJF,	"CRAW + Large Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRMJF,	"CRAW + Middle Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRM1JF,	"CRAW + Middle1 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRM2JF,	"CRAW + Middle2 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRSJF,	"CRAW + Small Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRS1JF,	"CRAW + Small1 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRS2JF,	"CRAW + Small2 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRS3JF,	"CRAW + Small3 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRLJN,	"CRAW + Large Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRMJN,	"CRAW + Middle Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRM1JN,	"CRAW + Middle1 Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRM2JN,	"CRAW + Middle2 Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRSJN,	"CRAW + Small Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRS1JN,	"CRAW + Small1 Normal Jpeg"));

	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRLJ,		"CRAW + Large Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRM1J,	"CRAW + Middle1 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRM2J,	"CRAW + Middle2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_CRSJ,		"CRAW + Small Jpeg"));
	
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LJF,    "Large Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LJN,    "Large Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MJF,    "Middle Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_MJN,    "Middle Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SJF,    "Small Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SJN,    "Small Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_S1JF,   "Small1 Fine Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_S1JN,   "Small1 Normal Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_S2JF,   "Small2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_S3JF,   "Small3 Jpeg"));

	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_LJ,     "Large Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_M1J,    "Middle1 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_M2J,    "Middle2 Jpeg"));
	_propertyTable.insert( std::pair<EdsUInt32, const char *>(EdsImageQuality_SJ,     "Small Jpeg"));

}

CImageQuality::~CImageQuality()
{
}


BEGIN_MESSAGE_MAP(CImageQuality, CPropertyComboBox)
	ON_MESSAGE(WM_USER_PROPERTY_CHANGED, OnPropertyChanged)
	ON_MESSAGE(WM_USER_PROPERTYDESC_CHANGED, OnPropertyDescChanged)
	ON_CONTROL_REFLECT(CBN_SELCHANGE, OnSelChange)
END_MESSAGE_MAP()


// CImageQuality message handler
void CImageQuality::OnSelChange() 
{
	DWORD_PTR data = GetItemData(GetCurSel());
	
	fireEvent(&data);
}

void CImageQuality::update(Observable* from, CameraEvent *e)
{

	std::string event = e->getEvent();

	//Update property
	if(event == "PropertyChanged")
	{
		EdsInt32 propertyID = *static_cast<EdsInt32 *>(e->getArg());
		
		if(propertyID == kEdsPropID_ImageQuality)
		{
			//The update processing can be executed from another thread. 
			::PostMessage(this->m_hWnd, WM_USER_PROPERTY_CHANGED, NULL, NULL);
		}
	}

	//Update of list that can set property
	if(event == "PropertyDescChanged")
	{
		EdsInt32 propertyID = *static_cast<EdsInt32 *>(e->getArg());
		
		if(propertyID == kEdsPropID_ImageQuality)
		{
			//The update processing can be executed from another thread. 
			::PostMessage(this->m_hWnd, WM_USER_PROPERTYDESC_CHANGED, NULL, NULL);
		}	
	}
}

LRESULT CImageQuality::OnPropertyChanged(WPARAM wParam, LPARAM lParam)
{
	updateProperty(getCameraModel()->getImageQuality());
	return 0;
}

LRESULT CImageQuality::OnPropertyDescChanged(WPARAM wParam, LPARAM lParam)
{
	updatePropertyDesc(&getCameraModel()->getImageQualityDesc());
	return 0;
}


