#include "extcode.h"
#ifdef __cplusplus
extern "C" {
#endif
typedef uint16_t  Shutter_modeTypedef;
#define Shutter_modeTypedef_Auto 0
#define Shutter_modeTypedef_Open 1
#define Shutter_modeTypedef_Close 2
#define Shutter_modeTypedef_NA3 3
#define Shutter_modeTypedef_OpenFVBSeries 4
#define Shutter_modeTypedef_OpenAnySeries 5

/*!
 * InitIxon
 */
void __stdcall InitIxon(char model[], double vsArray[], double hsArray[], 
	int32_t modelLen, int32_t vsArrayLen, int32_t hsArrayLen);
/*!
 * IxonLiveview
 */
void __stdcall IxonLiveview(LVBoolean *stop);
/*!
 * SetShutterMode
 */
void __stdcall SetShutterMode(Shutter_modeTypedef mode);
/*!
 * CloseIxon
 */
void __stdcall CloseIxon(double *Temp);
/*!
 * InterOpTest
 */
double __stdcall InterOpTest(double input);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

#ifdef __cplusplus
} // extern "C"
#endif

