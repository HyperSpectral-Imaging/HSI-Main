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
using System.Windows.Forms;

namespace CameraControl
{
    public partial class RemoteCapture : Form
    {

        private CameraController _controller = null;

        private ActionSource _actionSource = null;

        private List<IObserver> _observerList = new List<IObserver>();

        public RemoteCapture(ref CameraController controller , ref ActionSource actionSource)
        {
            InitializeComponent();
            
            _controller = controller;

            _actionSource = actionSource;

            CameraEvent e;

            _observerList.Add((IObserver)aeMode1);
            _observerList.Add((IObserver)av1);
            _observerList.Add((IObserver)evfPictureBox1);
            _observerList.Add((IObserver)tv1);
            _observerList.Add((IObserver)iso1);
            _observerList.Add((IObserver)meteringMode1);
            _observerList.Add((IObserver)exposureComp1);
            _observerList.Add((IObserver)imageQuality1);
            _observerList.Add((IObserver)evfAFMode1);
            _observerList.Add((IObserver)driveMode1);
            _observerList.Add((IObserver)whiteBalance1);
            _observerList.Add((IObserver)availableShotLabel1);
            _observerList.Add((IObserver)batteryLebelLabel1);
            _observerList.Add((IObserver)zoom1);
            _observerList.Add((IObserver)afMode1);
            _observerList.Add((IObserver)flashMode1);
            _observerList.Add((IObserver)downloadProgressBar1);

            System.Threading.Thread.Sleep(1000);

            _observerList.ForEach(observer => _controller.GetModel().Add(ref observer));

            e = new CameraEvent(CameraEvent.Type.PROPERTY_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_AEMode);
            _controller.GetModel().NotifyObservers(e);


            av1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_Av);
            _controller.GetModel().NotifyObservers(e);


            evfPictureBox1.SetActionSource(ref _actionSource);
            tv1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_Tv);
            _controller.GetModel().NotifyObservers(e);


            iso1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_ISOSpeed);
            _controller.GetModel().NotifyObservers(e);


            meteringMode1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_MeteringMode);
            _controller.GetModel().NotifyObservers(e);


            exposureComp1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_ExposureCompensation);
            _controller.GetModel().NotifyObservers(e);


            imageQuality1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_ImageQuality);
            _controller.GetModel().NotifyObservers(e);


            evfAFMode1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_Evf_AFMode);
            _controller.GetModel().NotifyObservers(e);


            driveMode1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_DriveMode);
            _controller.GetModel().NotifyObservers(e);


            whiteBalance1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_WhiteBalance);
            _controller.GetModel().NotifyObservers(e);

            e = new CameraEvent(CameraEvent.Type.PROPERTY_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_AFMode);
            _controller.GetModel().NotifyObservers(e);

            flashMode1.SetActionSource(ref _actionSource);
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_DC_Strobe);
            _controller.GetModel().NotifyObservers(e);
            
            zoom1.SetActionSource(ref _actionSource);
            label16.Text = zoom1.Value.ToString();
            e = new CameraEvent(CameraEvent.Type.PROPERTY_DESC_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_DC_Zoom);
            _controller.GetModel().NotifyObservers(e);

            actionButton1.SetActionSource(ref _actionSource);
            actionButton1.Command = ActionEvent.Command.TAKE_PICTURE;

            actionButton3.SetActionSource(ref _actionSource);
            actionButton3.Command = ActionEvent.Command.PRESS_COMPLETELY;

            actionButton2.SetActionSource(ref _actionSource);
            actionButton2.Command = ActionEvent.Command.PRESS_HALFWAY;

            actionButton4.SetActionSource(ref _actionSource);
            actionButton4.Command = ActionEvent.Command.PRESS_OFF;

            actionButton5.SetActionSource(ref _actionSource);
            actionButton5.Command = ActionEvent.Command.START_EVF;

            actionButton6.SetActionSource(ref _actionSource);
            actionButton6.Command = ActionEvent.Command.END_EVF;

            actionButton10.SetActionSource(ref _actionSource);
            actionButton10.Command = ActionEvent.Command.FOCUS_NEAR3;

            actionButton11.SetActionSource(ref _actionSource);
            actionButton11.Command = ActionEvent.Command.FOCUS_NEAR2;

            actionButton12.SetActionSource(ref _actionSource);
            actionButton12.Command = ActionEvent.Command.FOCUS_NEAR1;

            actionButton13.SetActionSource(ref _actionSource);
            actionButton13.Command = ActionEvent.Command.FOCUS_FAR1;

            actionButton14.SetActionSource(ref _actionSource);
            actionButton14.Command = ActionEvent.Command.FOCUS_FAR2;

            actionButton15.SetActionSource(ref _actionSource);
            actionButton15.Command = ActionEvent.Command.FOCUS_FAR3;

            actionButton7.SetActionSource(ref _actionSource);
            actionButton7.Command = ActionEvent.Command.EVF_AF_ON;

            actionButton8.SetActionSource(ref _actionSource);
            actionButton8.Command = ActionEvent.Command.EVF_AF_OFF;

            actionButton9.SetActionSource(ref _actionSource);
            actionButton9.Command = ActionEvent.Command.ZOOM_FIT;

            actionButton16.SetActionSource(ref _actionSource);
            actionButton16.Command = ActionEvent.Command.ZOOM_ZOOM;

            actionButton17.SetActionSource(ref _actionSource);
            actionButton17.Command = ActionEvent.Command.POSITION_UP;

            actionButton18.SetActionSource(ref _actionSource);
            actionButton18.Command = ActionEvent.Command.POSITION_LEFT;

            actionButton19.SetActionSource(ref _actionSource);
            actionButton19.Command = ActionEvent.Command.POSITION_RIGHT;

            actionButton20.SetActionSource(ref _actionSource);
            actionButton20.Command = ActionEvent.Command.POSITION_DOWN;

            // invalidate it in the DC
            label26.Enabled = _controller.GetModel().isTypeDS;
            actionButton9.Enabled = _controller.GetModel().isTypeDS;
            actionButton16.Enabled = _controller.GetModel().isTypeDS;
            label19.Enabled = _controller.GetModel().isTypeDS;
            actionButton10.Enabled = _controller.GetModel().isTypeDS;
            actionButton11.Enabled = _controller.GetModel().isTypeDS;
            actionButton12.Enabled = _controller.GetModel().isTypeDS;
            actionButton13.Enabled = _controller.GetModel().isTypeDS;
            actionButton14.Enabled = _controller.GetModel().isTypeDS;
            actionButton15.Enabled = _controller.GetModel().isTypeDS;
            
            // invalidate it in the DS
            label18.Enabled = !_controller.GetModel().isTypeDS;
            flashMode1.Enabled = !_controller.GetModel().isTypeDS;
            label15.Enabled = !_controller.GetModel().isTypeDS;
            zoom1.Enabled = false; // At the time of start, ZoomBar is off
            label16.Enabled = !_controller.GetModel().isTypeDS;

            e = new CameraEvent(CameraEvent.Type.PROPERTY_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_Evf_AFMode);
            _controller.GetModel().NotifyObservers(e);

            e = new CameraEvent(CameraEvent.Type.PROPERTY_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_AvailableShots);
            _controller.GetModel().NotifyObservers(e);

            e = new CameraEvent(CameraEvent.Type.PROPERTY_CHANGED, (IntPtr)EDSDKLib.EDSDK.PropID_BatteryLevel);
            _controller.GetModel().NotifyObservers(e);

            if (!_controller.GetModel().isTypeDS)
            {
                _actionSource.FireEvent(ActionEvent.Command.REMOTESHOOTING_START, IntPtr.Zero);
            }

        }

        private void RemoteCapture_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.DoEvents();
            if (!_controller.GetModel().isTypeDS)
            {
                _actionSource.FireEvent(ActionEvent.Command.REMOTESHOOTING_STOP, IntPtr.Zero);
            }
            _actionSource.FireEvent(ActionEvent.Command.PRESS_OFF, IntPtr.Zero);
            _actionSource.FireEvent(ActionEvent.Command.EVF_AF_OFF, IntPtr.Zero);
            _actionSource.FireEvent(ActionEvent.Command.END_EVF, IntPtr.Zero);
            _observerList.ForEach(observer => _controller.GetModel().Remove(ref observer));
        }

        private void zoom1_ValueChanged(object sender, EventArgs e)
        {
            label16.Text = zoom1.Value.ToString();
        }

        private void actionButton5_Click(object sender, EventArgs e)
        {
            if (!_controller.GetModel().isTypeDS)
            {
                zoom1.Enabled = true;
            }
        }

        private void actionButton6_Click(object sender, EventArgs e)
        {
            zoom1.Enabled = false;
        }
    }
}
