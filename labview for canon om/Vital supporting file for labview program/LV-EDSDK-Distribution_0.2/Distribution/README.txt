Set of Labview wrappers for the Canon EDSDK v.2.9

Developed and tested so far only under LV2010SP1, Windows Vista, 
with up to two EOS550D.

Provided as-is, no guarantee that it works with other versions of the 
SDK, cameras, environments.

Released under the GPLv3 License.

Enrico Segre, Weizmann Institute

v.0.1, 1/4/2011

v.0.2, 7/7/2011

Contents:
---------

EDSDKCallTree.vi is a dummy VI containing all the relevant subvis on
 its block diagram, and all the implemented custom controls (mainly 
 for EDS structures) on its front panel.

EDSDK-Labview.llb contains the code of all those.

The callback mechanism is implemented via one additional DLL function,
 written with VS2010. Its source files are in the directory named
 Development/CallbackEvent

The directory DEvelopment contains also a standalone test of the
 callback notification; and also a couple of VIs used for parsing
 the .h files coming with the EDSDK and extracting some information
 about structures and typedefs, which was used to build custom controls.

The directory Examples contains some application examples, for
 shooting from multiple cameras and grab to memory, display LiveView,
 etc.


TODO:
-----

Some documentation.

Add the option of using the jpeg stream decoder provided by cosmin
for Labview, which is many times faster than the one coming with 
the EDSDK. See https://decibel.ni.com/content/docs/DOC-13513
