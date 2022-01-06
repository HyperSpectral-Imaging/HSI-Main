// CallbackEvent.cpp : Defines the exported functions for the DLL application.
//
// after ideas in this thread:
// http://lavag.org/topic/13507-labview-queue-from-native-windows-dll/page__p__81061__hl__postlvuserevent__fromsearch__1#entry81061

#include "stdafx.h"
// absolute path to next include absolutely inelegant, but I can't make it work otherwise
#include "C:\Program Files\National Instruments\LabVIEW 2010\cintools\extcode.h"
//#include "extcode.h"

extern "C" __declspec(dllexport) void PumpUp()
{
	/* Message pump according to
 http://tech.groups.yahoo.com/group/CanonSDK/message/1592
       Probably useless (not called from any LV VI), originally thought to be required
	   because of a misunderstanding. Code left in for reference */
  MSG Msg;
  if (GetMessage(&Msg, NULL, 0, 0)){
       TranslateMessage(&Msg);
       DispatchMessage(&Msg);

    }
}

extern "C" __declspec(dllexport) int *EdsObjectEventHandler(unsigned int inEvent,
                                            unsigned int inRef, unsigned int inContext[2])
{
	    inContext[1]=inEvent;
		inContext[2]=inRef;
	    PostLVUserEvent(inContext[0], (void *) inContext);
		return 0;
}

