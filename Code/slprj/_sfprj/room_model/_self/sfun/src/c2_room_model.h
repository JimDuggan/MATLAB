#ifndef __c2_room_model_h__
#define __c2_room_model_h__

/* Type Definitions */
#ifndef typedef_SFc2_room_modelInstanceStruct
#define typedef_SFc2_room_modelInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c2_sfEvent;
  boolean_T c2_doneDoubleBufferReInit;
  uint8_T c2_is_active_c2_room_model;
  void *c2_fEmlrtCtx;
  real_T (*c2_u)[4];
  int32_T *c2_y;
  real_T *c2_t;
} SFc2_room_modelInstanceStruct;

#endif                                 /*typedef_SFc2_room_modelInstanceStruct*/

/* Named Constants */

/* Variable Declarations */
extern struct SfDebugInstanceStruct *sfGlobalDebugInstanceStruct;

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c2_room_model_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c2_room_model_get_check_sum(mxArray *plhs[]);
extern void c2_room_model_method_dispatcher(SimStruct *S, int_T method, void
  *data);

#endif
