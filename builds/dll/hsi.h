#include "extcode.h"
#ifdef __cplusplus
extern "C" {
#endif

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
void __stdcall SetShutterMode(uint16_t mode);
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

