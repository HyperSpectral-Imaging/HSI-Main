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
    public partial class MainWindow : Form, IObserver
    {
        private CameraController _controller = null;
        private ActionSource _actionSource = new ActionSource();
        private List<ActionListener> _actionListenerList = new List<ActionListener>();
        private IObserver formAs = null;
        private Form _remoteCapture = null;

        public MainWindow(ref CameraController controller)
        {
            formAs = this;
            InitializeComponent();
            _controller = controller;

            _actionListenerList.Add((ActionListener)_controller);

            _actionListenerList.ForEach(actionListener => _actionSource.AddActionListener(ref actionListener));
        }

        private void button1_Click(object sender, EventArgs e)
        {
            _remoteCapture = new RemoteCapture(ref _controller, ref _actionSource);
            _remoteCapture.ShowDialog(this);
            _remoteCapture.Dispose();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            IObserver frmProgress = new Progress(ref _controller);
            _controller.GetModel().Add(ref frmProgress);

            _controller.DownloadFile();

            ((Progress)frmProgress).ShowDialog();

            _controller.GetModel().Remove(ref frmProgress);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            IObserver frmSetting = new CameraSetting(ref _controller);

            // UIlock
            EDSDKLib.EDSDK.EdsSendStatusCommand(_controller.GetModel().Camera, EDSDKLib.EDSDK.CameraState_UILock, 1);
            _controller.GetModel().Add(ref frmSetting);

            ((CameraSetting)frmSetting).ShowSettingDialog();

            _controller.GetModel().Remove(ref frmSetting);

            // UIUnlock
            EDSDKLib.EDSDK.EdsSendStatusCommand(_controller.GetModel().Camera, EDSDKLib.EDSDK.CameraState_UIUnLock, 1);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            IObserver frmProgress = new Progress(ref _controller);
            _controller.GetModel().Add(ref frmProgress);

            _controller.DeleteFile();

            ((Progress)frmProgress).ShowDialog();

            _controller.GetModel().Remove(ref frmProgress);
        }

        public void Update(Observable from, CameraEvent e)
        {
            CameraEvent.Type eventType = e.GetEventType();

            switch (eventType)
            {
                case CameraEvent.Type.SHUT_DOWN:

                    MessageBox.Show("Camera is disconnected");

                    if (_remoteCapture != null && !_remoteCapture.IsDisposed)
                    {
                        _remoteCapture.Close();
                        _remoteCapture.Dispose();
                    }

                    this.Close();

                    break;

                default:
                    break;
            }
        }

        private void MainWindow_FormClosing(object sender, FormClosingEventArgs e)
        {
            _actionSource.FireEvent(ActionEvent.Command.CLOSING, IntPtr.Zero);

            _actionListenerList.ForEach(actionListener => _actionSource.RemoveActionListener(ref actionListener));
        }
    }
}
