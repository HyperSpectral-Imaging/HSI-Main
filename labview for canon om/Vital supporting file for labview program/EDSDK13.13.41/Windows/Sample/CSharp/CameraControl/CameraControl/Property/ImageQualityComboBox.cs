/******************************************************************************
*                                                                             *
*   PROJECT : Eos Digital camera Software Development Kit EDSDK               *
*                                                                             *
*   Description: This is the Sample code to show the usage of EDSDK.          *
*                                                                             *
*                                                                             *
*******************************************************************************
*                                                                             *
*   Written and developed by Canon Inc.                                       *
*   Copyright Canon Inc. 2018 All Rights Reserved                             *
*                                                                             *
*******************************************************************************/

using System;

namespace CameraControl
{
    class ImageQualityComboBox : PropertyComboBox, IObserver
    {
        private ActionSource _actionSource;

        private EDSDKLib.EDSDK.EdsPropertyDesc _desc;

        public void SetActionSource(ref ActionSource actionSource) { _actionSource = actionSource; }

        public ImageQualityComboBox()
        {
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LR, "RAW");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRLJF, "RAW + Large Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRMJF, "RAW + Middle Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRSJF, "RAW + Small Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRLJN, "RAW + Large Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRMJN, "RAW + Middle Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRSJN, "RAW + Small Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRS1JF, "RAW + Small1 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRS1JN, "RAW + Small1 Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRS2JF, "RAW + Small2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRS3JF, "RAW + Small3 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRLJ, "RAW + Large Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRM1J, "RAW + Middle1 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRM2J, "RAW + Middle2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LRSJ, "RAW + Small Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MR, "Middle RAW");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRLJF, "Middle RAW + Large Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRMJF, "Middle RAW + Middle Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRSJF, "Middle RAW + Small Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRLJN, "Middle RAW + Large Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRMJN, "Middle RAW + Middle Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRSJN, "Middle RAW + Small Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRS1JF, "Middle RAW + Small1 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRS1JN, "Middle RAW + Small1 Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRS2JF, "Middle RAW + Small2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRS3JF, "Middle RAW + Small3 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRLJ, "Middle RAW + Large Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRM1J, "Middle RAW + Middle1 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRM2J, "Middle RAW + Middle2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MRSJ, "Middle RAW + Small Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SR, "Small RAW");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRLJF, "Small RAW + Large Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRMJF, "Small RAW + Middle Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRSJF, "Small RAW + Small Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRLJN, "Small RAW + Large Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRMJN, "Small RAW + Middle Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRSJN, "Small RAW + Small Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRS1JF, "Small RAW + Small1 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRS1JN, "Small RAW + Small1 Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRS2JF, "Small RAW + Small2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRS3JF, "Small RAW + Small3 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRLJ, "Small RAW + Large Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRM1J, "Small RAW + Middle1 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRM2J, "Small RAW + Middle2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SRSJ, "Small RAW + Small Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LJF, "Large Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LJN, "Large Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MJF, "Middle Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_MJN, "Middle Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SJF, "Small Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SJN, "Small Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_S1JF, "Small1 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_S1JN, "Small1 Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_S2JF, "Small2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_S3JF, "Small3 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_LJ, "Large Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_M1J, "Middle1 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_M2J, "Middle2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_SJ, "Small Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CR, "CRAW");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRLJF, "CRAW + Large Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRMJF, "CRAW + Middle Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRM1JF, "CRAW + Middle1 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRM2JF, "CRAW + Middle2 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRSJF, "CRAW + Small Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRS1JF, "CRAW + Small1 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRS2JF, "CRAW + Small2 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRS3JF, "CRAW + Small3 Fine Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRLJN, "CRAW + Large Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRMJN, "CRAW + Middle Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRM1JN, "CRAW + Middle1 Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRM2JN, "CRAW + Middle2 Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRSJN, "CRAW + Small Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRS1JN, "CRAW + Small1 Normal Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRLJ, "CRAW + Large Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRM1J, "CRAW + Middle1 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRM2J, "CRAW + Middle2 Jpeg");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRSJ, "CRAW + Small Jpeg");

            //HEIF
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_HEIFL, "HEIF Large");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_RHEIFL, "RAW  + HEIF Large");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRHEIFL, "CRAW + HEIF Large");

            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_HEIFLF, "HEIF Large Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_HEIFLN, "HEIF Large Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_HEIFMF, "HEIF Middle Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_HEIFMN, "HEIF Middle Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_HEIFS1F, "HEIF Small1 Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_HEIFS1N, "HEIF Small1 Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_HEIFS2F, "HEIF Small2 Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_RHEIFLF, "RAW + HEIF Large Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_RHEIFLN, "RAW + HEIF Large Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_RHEIFMF, "RAW + HEIF Middle Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_RHEIFMN, "RAW + HEIF Middle Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_RHEIFS1F, "RAW + HEIF Small1 Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_RHEIFS1N, "RAW + HEIF Small1 Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_RHEIFS2F, "RAW + HEIF Small2 Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRHEIFLF, "CRAW + HEIF Large Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRHEIFLN, "CRAW + HEIF Large Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRHEIFMF, "CRAW + HEIF Middle Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRHEIFMN, "CRAW + HEIF Middle Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRHEIFS1F, "CRAW + HEIF Small1 Fine");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRHEIFS1N, "CRAW + HEIF Small1 Normal");
            map.Add((uint)EDSDKLib.EDSDK.ImageQuality.EdsImageQuality_CRHEIFS2F, "CRAW + HEIF Small2 Fine");
        }

        protected override void OnSelectionChangeCommitted(EventArgs e)
        {
            if (this.SelectedItem != null)
            {
                uint key = (uint)_desc.PropDesc[this.SelectedIndex];

                _actionSource.FireEvent(ActionEvent.Command.SET_IMAGEQUALITY, (IntPtr)key);
            }
        }


        public void Update(Observable from, CameraEvent e)
        {

            CameraModel model = (CameraModel)from;
            CameraEvent.Type eventType = CameraEvent.Type.NONE;

            if ((eventType = e.GetEventType()) == CameraEvent.Type.PROPERTY_CHANGED || eventType == CameraEvent.Type.PROPERTY_DESC_CHANGED)
            {
                uint propertyID = (uint)e.GetArg();

                if (propertyID == EDSDKLib.EDSDK.PropID_ImageQuality)
                {
                    uint property = model.ImageQuality;

                    //Update property
                    switch (eventType)
                    {
                        case CameraEvent.Type.PROPERTY_CHANGED:
                            this.UpdateProperty(property);
                            break;

                        case CameraEvent.Type.PROPERTY_DESC_CHANGED:
                            _desc = model.ImageQualityDesc;
                            this.UpdatePropertyDesc(ref _desc);
                            this.UpdateProperty(property);
                            break;
                    }
                }
            }
        }
    }
}
