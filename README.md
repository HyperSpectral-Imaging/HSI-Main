# Getting Started
This is the main project of HSI software, you can find the source code here. That will be everything you need to continue the development of HSI software.
## Environment
### LabVIEW
I developed the whole project using LabVIEW 2016, please install a valid LabVIEW environment before openning any files.
### Andor SDK
You can get Andor SDK from Andor if you buyed one of their imaging sensor product. Install Andor SDK according to the instructions provided by Andor. Make sure the LabVIEW version you wish to use is already installed before installing Andor SDK, this will make sure Andor SDK installs itself as LabVIEW compatible and includes the LabVIEW library and sub VIs of Andor SDK. 
### EDSDK
You may have to apply for newer version of EDSDK from Canon if you use a newer camera. Using Canon SDK is basically calling functions in the dynamic load library (.dll) provided by EDSDK with LabVIEW Call Function Node. There is also no need for any installation process.
The correct version of EDSDK should be placed at HSI-Main/labview for canon om/Vital supporting file for labview program/EDSDK13.13.41.
### Mightex SDK
You download the SDK for crontrolling your mightex camera directly from Mightex official website. Using Mightex SDK is the same as using EDSDK.
## Folders
### `labview for canon om`
This folder includes a LabVIEW project solely for controlling Canon cameras. It includes functions (VIs) called by the HSI project and standalone VI for calibration like control_demo.vi. Please read the instructions inside this folder and the sub folder Vital supporting file for labview program.
### `lib/Halloween`
This folder contains a project developed by former members of ULS lab to compose a custom ULS TIFF file. It's used in this project to construct and save the scan image data cube.

## Documentation
- [HSI Main Project Documentation](https://cheng-posheng.gitbook.io/hsi-main-project-api-documentation/)
- [The documentation repo](https://github.com/HyperSpectral-Imaging/HSI-Docs)
  - [recommanded reading](https://github.com/HyperSpectral-Imaging/HSI-docs/blob/main/final.pdf)
