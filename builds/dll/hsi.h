#include "extcode.h"
#ifdef __cplusplus
extern "C" {
#endif
typedef struct {
	LStrHandle String;
	uint16_t Value;
} Cluster;
typedef struct {
	int32_t dimSize;
	Cluster elt[1];
} ClusterArrayBase;
typedef ClusterArrayBase **ClusterArray;
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
void __stdcall InitIxon(uint32_t *DLLErrorCodeFromIni, char model[], 
	ClusterArray *vsArray, ClusterArray *hsArray, int32_t *len);
/*!
 * SetShutterMode
 */
void __stdcall SetShutterMode(Shutter_modeTypedef mode);
/*!
 * CloseIxon
 */
void __stdcall CloseIxon(void);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

/*
* Memory Allocation/Resize/Deallocation APIs for type 'ClusterArray'
*/
ClusterArray __cdecl AllocateClusterArray (int32 elmtCount);
MgErr __cdecl ResizeClusterArray (ClusterArray *hdlPtr, int32 elmtCount);
MgErr __cdecl DeAllocateClusterArray (ClusterArray *hdlPtr);

#ifdef __cplusplus
} // extern "C"
#endif

