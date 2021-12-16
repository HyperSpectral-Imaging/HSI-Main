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
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CameraControl
{
    class WhiteBalanceComboBox : PropertyComboBox, IObserver
    {

        private ActionSource _actionSource;

        private EDSDKLib.EDSDK.EdsPropertyDesc _desc;

        public void SetActionSource(ref ActionSource actionSource) { _actionSource = actionSource; }


        public WhiteBalanceComboBox()
        {
            map.Add(0, "Auto: Ambience priority");
            map.Add(1, "Daylight");
            map.Add(2, "Cloudy");
            map.Add(3, "Tungsten light");
            map.Add(4, "White fluorescent light");
            map.Add(5, "Flash");
            map.Add(6, "Custom");
            map.Add(8, "Shade");
            map.Add(9, "Color temp.");
            map.Add(10, "Custom white balance: PC-1");
            map.Add(11, "Custom white balance: PC-2");
            map.Add(12, "Custom white balance: PC-3");
            map.Add(15, "Custom2");
            map.Add(16, "Custom3");
            map.Add(17, "Underwater");
            map.Add(18, "Custom4");
            map.Add(19, "Custom5");
            map.Add(20, "Custom white balance: PC-4");
            map.Add(21, "Custom white balance: PC-5");
            map.Add(23, "Auto: White priority");
        }

        protected override void OnSelectionChangeCommitted(EventArgs e)
        {
            if (this.SelectedItem != null)
            {
                uint key = (uint)_desc.PropDesc[this.SelectedIndex];

                _actionSource.FireEvent(ActionEvent.Command.SET_WHITE_BALANCE, (IntPtr)key);
            }
        }

        public void Update(Observable from, CameraEvent e)
        {

            CameraModel model = (CameraModel)from;
            CameraEvent.Type eventType = CameraEvent.Type.NONE;

            if ((eventType = e.GetEventType()) == CameraEvent.Type.PROPERTY_CHANGED || eventType == CameraEvent.Type.PROPERTY_DESC_CHANGED)
            {
                uint propertyID = (uint)e.GetArg();

                if (propertyID == EDSDKLib.EDSDK.PropID_WhiteBalance)
                {
                    uint property = (uint)model.WhiteBalance;

                    //Update property
                    switch (eventType)
                    {
                        case CameraEvent.Type.PROPERTY_CHANGED:
                            this.UpdateProperty(property);
                            break;

                        case CameraEvent.Type.PROPERTY_DESC_CHANGED:
                            _desc = model.WhiteBalanceDesc;
                            this.UpdatePropertyDesc(ref _desc);
                            this.UpdateProperty(property);
                            break;
                    }
                }
            }
        }
    }
}
