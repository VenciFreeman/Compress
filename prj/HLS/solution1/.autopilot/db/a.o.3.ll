; ModuleID = 'C:/Users/Venci/Videos/Project/new/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1946] ; [#uses=0 type=[2 x void ()*]*]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535] ; [#uses=0 type=[2 x i32]*]
@DCT_8x8_2D_str = internal unnamed_addr constant [11 x i8] c"DCT_8x8_2D\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=1]
define internal fastcc float @singleGUV([64 x float]* nocapture %subimg, i4 %u, i4 %v, i32 %inv, [64 x float]* nocapture %cosMat) readonly {
  %G = alloca float                               ; [#uses=4 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %G}, metadata !1226) ; [debug variable = G]
  %inv_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %inv) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %inv_read}, i64 0, metadata !1240), !dbg !1241 ; [debug line = 68:55] [debug variable = inv]
  %v_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %v) ; [#uses=3 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %v_read}, i64 0, metadata !1242), !dbg !1243 ; [debug line = 68:48] [debug variable = v]
  call void @llvm.dbg.value(metadata !{i4 %v_read}, i64 0, metadata !1244), !dbg !1253 ; [debug line = 61:14@76:19] [debug variable = x]
  %u_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %u) ; [#uses=3 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %u_read}, i64 0, metadata !1254), !dbg !1255 ; [debug line = 68:41] [debug variable = u]
  call void @llvm.dbg.value(metadata !{i4 %u_read}, i64 0, metadata !1256), !dbg !1258 ; [debug line = 61:14@76:13] [debug variable = x]
  %v_cast2_cast = zext i4 %v_read to i8           ; [#uses=1 type=i8]
  %tmp_18 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %v_read, i3 0) ; [#uses=1 type=i7]
  %tmp_19_cast = zext i7 %tmp_18 to i8            ; [#uses=1 type=i8]
  %u_cast1_cast = zext i4 %u_read to i8           ; [#uses=1 type=i8]
  %tmp_19 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %u_read, i3 0) ; [#uses=1 type=i7]
  %tmp_21_cast = zext i7 %tmp_19 to i8            ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{[64 x float]* %subimg}, i64 0, metadata !1259), !dbg !1262 ; [debug line = 68:23] [debug variable = subimg]
  call void @llvm.dbg.value(metadata !{i4 %u}, i64 0, metadata !1254), !dbg !1255 ; [debug line = 68:41] [debug variable = u]
  call void @llvm.dbg.value(metadata !{i4 %v}, i64 0, metadata !1242), !dbg !1243 ; [debug line = 68:48] [debug variable = v]
  call void @llvm.dbg.value(metadata !{i32 %inv}, i64 0, metadata !1240), !dbg !1241 ; [debug line = 68:55] [debug variable = inv]
  call void @llvm.dbg.value(metadata !{[64 x float]* %cosMat}, i64 0, metadata !1263), !dbg !1264 ; [debug line = 68:66] [debug variable = cosMat]
  %tmp = icmp eq i32 %inv_read, 0, !dbg !1265     ; [#uses=1 type=i1] [debug line = 75:4]
  %tmp_i = icmp eq i4 %u_read, 0, !dbg !1266      ; [#uses=1 type=i1] [debug line = 62:2@76:13]
  %tmp_4 = select i1 %tmp_i, double 0x3FC6A09E60000000, double 2.500000e-01, !dbg !1257 ; [#uses=1 type=double] [debug line = 76:13]
  %tmp_i1 = icmp eq i4 %v_read, 0, !dbg !1268     ; [#uses=1 type=i1] [debug line = 62:2@76:19]
  %tmp_6 = select i1 %tmp_i1, double 0x3FE6A09E60000000, double 1.000000e+00, !dbg !1248 ; [#uses=1 type=double] [debug line = 76:19]
  %tmp_7 = fmul double %tmp_4, %tmp_6, !dbg !1248 ; [#uses=1 type=double] [debug line = 76:19]
  store float 0.000000e+00, float* %G
  br label %.loopexit, !dbg !1269                 ; [debug line = 73:6]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %x_assign = phi i4 [ 0, %0 ], [ %x, %.loopexit.loopexit ] ; [#uses=5 type=i4]
  %x_assign_cast2_cast = zext i4 %x_assign to i8  ; [#uses=1 type=i8]
  %tmp_20 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %x_assign, i3 0) ; [#uses=1 type=i7]
  %tmp_23_cast = zext i7 %tmp_20 to i8, !dbg !1248 ; [#uses=2 type=i8] [debug line = 76:19]
  %tmp_21 = add i8 %x_assign_cast2_cast, %tmp_21_cast, !dbg !1248 ; [#uses=1 type=i8] [debug line = 76:19]
  %tmp_24_cast = zext i8 %tmp_21 to i32, !dbg !1248 ; [#uses=1 type=i32] [debug line = 76:19]
  %cosMat_addr = getelementptr [64 x float]* %cosMat, i32 0, i32 %tmp_24_cast, !dbg !1248 ; [#uses=1 type=float*] [debug line = 76:19]
  %tmp_22 = add i8 %u_cast1_cast, %tmp_23_cast, !dbg !1270 ; [#uses=1 type=i8] [debug line = 78:19]
  %tmp_25_cast = zext i8 %tmp_22 to i32, !dbg !1270 ; [#uses=1 type=i32] [debug line = 78:19]
  %cosMat_addr_1 = getelementptr [64 x float]* %cosMat, i32 0, i32 %tmp_25_cast, !dbg !1270 ; [#uses=1 type=float*] [debug line = 78:19]
  %exitcond1 = icmp eq i4 %x_assign, -8, !dbg !1269 ; [#uses=1 type=i1] [debug line = 73:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %x = add i4 %x_assign, 1, !dbg !1271            ; [#uses=1 type=i4] [debug line = 73:16]
  call void @llvm.dbg.value(metadata !{i4 %x}, i64 0, metadata !1272), !dbg !1271 ; [debug line = 73:16] [debug variable = x]
  br i1 %exitcond1, label %1, label %.preheader.preheader, !dbg !1269 ; [debug line = 73:6]

.preheader.preheader:                             ; preds = %.loopexit
  %cosMat_load = load float* %cosMat_addr, align 4, !dbg !1248 ; [#uses=1 type=float] [debug line = 76:19]
  %tmp_s = fpext float %cosMat_load to double, !dbg !1248 ; [#uses=1 type=double] [debug line = 76:19]
  %tmp_i2 = icmp eq i4 %x_assign, 0, !dbg !1273   ; [#uses=1 type=i1] [debug line = 62:2@78:13]
  %tmp_2 = select i1 %tmp_i2, double 0x3FC6A09E60000000, double 2.500000e-01, !dbg !1274 ; [#uses=1 type=double] [debug line = 78:13]
  %cosMat_load_2 = load float* %cosMat_addr_1, align 4, !dbg !1270 ; [#uses=1 type=float] [debug line = 78:19]
  %tmp_3 = fpext float %cosMat_load_2 to double, !dbg !1270 ; [#uses=1 type=double] [debug line = 78:19]
  br label %.preheader, !dbg !1275                ; [debug line = 74:7]

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %x_assign_1 = phi i4 [ %y, %_ifconv ], [ 0, %.preheader.preheader ] ; [#uses=5 type=i4]
  %x_assign_1_cast1_cas = zext i4 %x_assign_1 to i8, !dbg !1248 ; [#uses=2 type=i8] [debug line = 76:19]
  %tmp_23 = add i8 %x_assign_1_cast1_cas, %tmp_23_cast, !dbg !1248 ; [#uses=1 type=i8] [debug line = 76:19]
  %tmp_26_cast = zext i8 %tmp_23 to i32, !dbg !1248 ; [#uses=1 type=i32] [debug line = 76:19]
  %subimg_addr = getelementptr [64 x float]* %subimg, i32 0, i32 %tmp_26_cast, !dbg !1248 ; [#uses=1 type=float*] [debug line = 76:19]
  %tmp_24 = add i8 %x_assign_1_cast1_cas, %tmp_19_cast, !dbg !1248 ; [#uses=1 type=i8] [debug line = 76:19]
  %tmp_27_cast = zext i8 %tmp_24 to i32, !dbg !1248 ; [#uses=1 type=i32] [debug line = 76:19]
  %cosMat_addr_2 = getelementptr [64 x float]* %cosMat, i32 0, i32 %tmp_27_cast, !dbg !1248 ; [#uses=1 type=float*] [debug line = 76:19]
  %tmp_25 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %x_assign_1, i3 0) ; [#uses=1 type=i7]
  %tmp_29_cast = zext i7 %tmp_25 to i8, !dbg !1270 ; [#uses=1 type=i8] [debug line = 78:19]
  %tmp_26 = add i8 %v_cast2_cast, %tmp_29_cast, !dbg !1270 ; [#uses=1 type=i8] [debug line = 78:19]
  %tmp_30_cast = zext i8 %tmp_26 to i32, !dbg !1270 ; [#uses=1 type=i32] [debug line = 78:19]
  %cosMat_addr_3 = getelementptr [64 x float]* %cosMat, i32 0, i32 %tmp_30_cast, !dbg !1270 ; [#uses=1 type=float*] [debug line = 78:19]
  %exitcond = icmp eq i4 %x_assign_1, -8, !dbg !1275 ; [#uses=1 type=i1] [debug line = 74:7]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %y = add i4 %x_assign_1, 1, !dbg !1276          ; [#uses=1 type=i4] [debug line = 74:17]
  br i1 %exitcond, label %.loopexit.loopexit, label %_ifconv, !dbg !1275 ; [debug line = 74:7]

_ifconv:                                          ; preds = %.preheader
  %G_load_1 = load float* %G, !dbg !1248          ; [#uses=1 type=float] [debug line = 76:19]
  call void @llvm.dbg.value(metadata !{i4 %u}, i64 0, metadata !1256), !dbg !1258 ; [debug line = 61:14@76:13] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i4 %v}, i64 0, metadata !1244), !dbg !1253 ; [debug line = 61:14@76:19] [debug variable = x]
  %subimg_load = load float* %subimg_addr, align 4, !dbg !1248 ; [#uses=1 type=float] [debug line = 76:19]
  %tmp_8 = fpext float %subimg_load to double, !dbg !1248 ; [#uses=2 type=double] [debug line = 76:19]
  %tmp_9 = fmul double %tmp_7, %tmp_8, !dbg !1248 ; [#uses=1 type=double] [debug line = 76:19]
  %tmp_1 = fmul double %tmp_9, %tmp_s, !dbg !1248 ; [#uses=1 type=double] [debug line = 76:19]
  %cosMat_load_1 = load float* %cosMat_addr_2, align 4, !dbg !1248 ; [#uses=1 type=float] [debug line = 76:19]
  %tmp_5 = fpext float %cosMat_load_1 to double, !dbg !1248 ; [#uses=1 type=double] [debug line = 76:19]
  %tmp_10 = fmul double %tmp_1, %tmp_5, !dbg !1248 ; [#uses=1 type=double] [debug line = 76:19]
  %tmp_11 = fpext float %G_load_1 to double, !dbg !1248 ; [#uses=1 type=double] [debug line = 76:19]
  call void @llvm.dbg.value(metadata !{i4 %x_assign}, i64 0, metadata !1277), !dbg !1278 ; [debug line = 61:14@78:13] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i4 %x_assign_1}, i64 0, metadata !1279), !dbg !1280 ; [debug line = 61:14@78:19] [debug variable = x]
  %tmp_i3 = icmp eq i4 %x_assign_1, 0, !dbg !1281 ; [#uses=1 type=i1] [debug line = 62:2@78:19]
  %tmp_12 = select i1 %tmp_i3, double 0x3FE6A09E60000000, double 1.000000e+00, !dbg !1270 ; [#uses=1 type=double] [debug line = 78:19]
  %tmp_13 = fmul double %tmp_2, %tmp_12, !dbg !1270 ; [#uses=1 type=double] [debug line = 78:19]
  %tmp_14 = fmul double %tmp_13, %tmp_8, !dbg !1270 ; [#uses=1 type=double] [debug line = 78:19]
  %tmp_15 = fmul double %tmp_14, %tmp_3, !dbg !1270 ; [#uses=1 type=double] [debug line = 78:19]
  %cosMat_load_3 = load float* %cosMat_addr_3, align 4, !dbg !1270 ; [#uses=1 type=float] [debug line = 78:19]
  %tmp_16 = fpext float %cosMat_load_3 to double, !dbg !1270 ; [#uses=1 type=double] [debug line = 78:19]
  %tmp_17 = fmul double %tmp_15, %tmp_16, !dbg !1270 ; [#uses=1 type=double] [debug line = 78:19]
  %G_2_in_v = select i1 %tmp, double %tmp_10, double %tmp_17 ; [#uses=1 type=double]
  %G_2_in = fadd double %tmp_11, %G_2_in_v        ; [#uses=1 type=double]
  %G_1 = fptrunc double %G_2_in to float, !dbg !1248 ; [#uses=1 type=float] [debug line = 76:19]
  call void @llvm.dbg.value(metadata !{float %G_1}, i64 0, metadata !1226), !dbg !1248 ; [debug line = 76:19] [debug variable = G]
  call void @llvm.dbg.value(metadata !{i4 %y}, i64 0, metadata !1282), !dbg !1276 ; [debug line = 74:17] [debug variable = y]
  store float %G_1, float* %G, !dbg !1248         ; [debug line = 76:19]
  br label %.preheader, !dbg !1276                ; [debug line = 74:17]

; <label>:1                                       ; preds = %.loopexit
  %G_load = load float* %G, !dbg !1283            ; [#uses=1 type=float] [debug line = 81:2]
  ret float %G_load, !dbg !1283                   ; [debug line = 81:2]
}

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=6]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_4 = zext i3 %1 to i7                     ; [#uses=1 type=i7]
  %empty_5 = shl i7 %empty, 3                     ; [#uses=1 type=i7]
  %empty_6 = or i7 %empty_5, %empty_4             ; [#uses=1 type=i7]
  ret i7 %empty_6
}

; [#uses=1]
declare void @_GLOBAL__I_a1946() nounwind

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

; [#uses=0]
define void @DCT_8x8_2D([64 x float]* %G, [64 x float]* %subimg, i32 %shift, i32 %inv, [64 x float]* %cosMat) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x float]* %G) nounwind, !map !1284
  call void (...)* @_ssdm_op_SpecBitsMap([64 x float]* %subimg) nounwind, !map !1290
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %shift) nounwind, !map !1294
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %inv) nounwind, !map !1300
  call void (...)* @_ssdm_op_SpecBitsMap([64 x float]* %cosMat) nounwind, !map !1304
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @DCT_8x8_2D_str) nounwind
  %inv_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %inv) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %inv_read}, i64 0, metadata !1308), !dbg !1312 ; [debug line = 95:67] [debug variable = inv]
  %shift_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %shift) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %shift_read}, i64 0, metadata !1313), !dbg !1314 ; [debug line = 95:56] [debug variable = shift]
  call void @llvm.dbg.value(metadata !{[64 x float]* %G}, i64 0, metadata !1315), !dbg !1316 ; [debug line = 95:23] [debug variable = G]
  call void @llvm.dbg.value(metadata !{[64 x float]* %subimg}, i64 0, metadata !1317), !dbg !1318 ; [debug line = 95:38] [debug variable = subimg]
  call void @llvm.dbg.value(metadata !{i32 %shift}, i64 0, metadata !1313), !dbg !1314 ; [debug line = 95:56] [debug variable = shift]
  call void @llvm.dbg.value(metadata !{i32 %inv}, i64 0, metadata !1308), !dbg !1312 ; [debug line = 95:67] [debug variable = inv]
  call void @llvm.dbg.value(metadata !{[64 x float]* %cosMat}, i64 0, metadata !1319), !dbg !1320 ; [debug line = 95:78] [debug variable = cosMat]
  %tmp = icmp eq i32 %shift_read, 1, !dbg !1321   ; [#uses=1 type=i1] [debug line = 97:2]
  br i1 %tmp, label %.preheader4.preheader, label %._crit_edge, !dbg !1321 ; [debug line = 97:2]

.preheader4.preheader:                            ; preds = %0
  br label %.preheader4

.preheader4.loopexit:                             ; preds = %.preheader.i
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.loopexit, %.preheader4.preheader
  %i_i = phi i4 [ %i_1, %.preheader4.loopexit ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i4]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_i, i3 0) ; [#uses=1 type=i7]
  %tmp_32_cast = zext i7 %tmp_s to i8, !dbg !1323 ; [#uses=1 type=i8] [debug line = 88:6@98:3]
  %exitcond1_i = icmp eq i4 %i_i, -8, !dbg !1323  ; [#uses=1 type=i1] [debug line = 88:6@98:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %i_1 = add i4 %i_i, 1, !dbg !1330               ; [#uses=1 type=i4] [debug line = 88:16@98:3]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !1331) nounwind, !dbg !1330 ; [debug line = 88:16@98:3] [debug variable = i]
  br i1 %exitcond1_i, label %._crit_edge.loopexit, label %.preheader.i.preheader, !dbg !1323 ; [debug line = 88:6@98:3]

.preheader.i.preheader:                           ; preds = %.preheader4
  br label %.preheader.i, !dbg !1332              ; [debug line = 90:4@98:3]

.preheader.i:                                     ; preds = %1, %.preheader.i.preheader
  %j_i = phi i4 [ %j_1, %1 ], [ 0, %.preheader.i.preheader ] ; [#uses=3 type=i4]
  %j_i_cast3_cast = zext i4 %j_i to i8, !dbg !1332 ; [#uses=1 type=i8] [debug line = 90:4@98:3]
  %tmp_27 = add i8 %tmp_32_cast, %j_i_cast3_cast, !dbg !1332 ; [#uses=1 type=i8] [debug line = 90:4@98:3]
  %tmp_33_cast = zext i8 %tmp_27 to i32, !dbg !1332 ; [#uses=1 type=i32] [debug line = 90:4@98:3]
  %subimg_addr = getelementptr [64 x float]* %subimg, i32 0, i32 %tmp_33_cast, !dbg !1332 ; [#uses=2 type=float*] [debug line = 90:4@98:3]
  %exitcond_i = icmp eq i4 %j_i, -8, !dbg !1336   ; [#uses=1 type=i1] [debug line = 89:7@98:3]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %j_1 = add i4 %j_i, 1, !dbg !1337               ; [#uses=1 type=i4] [debug line = 89:17@98:3]
  br i1 %exitcond_i, label %.preheader4.loopexit, label %1, !dbg !1336 ; [debug line = 89:7@98:3]

; <label>:1                                       ; preds = %.preheader.i
  %subimg_load = load float* %subimg_addr, align 4, !dbg !1332 ; [#uses=1 type=float] [debug line = 90:4@98:3]
  %tmp_i = fadd float %subimg_load, -1.280000e+02, !dbg !1332 ; [#uses=1 type=float] [debug line = 90:4@98:3]
  store float %tmp_i, float* %subimg_addr, align 4, !dbg !1332 ; [debug line = 90:4@98:3]
  call void @llvm.dbg.value(metadata !{i4 %j_1}, i64 0, metadata !1338) nounwind, !dbg !1337 ; [debug line = 89:17@98:3] [debug variable = j]
  br label %.preheader.i, !dbg !1337              ; [debug line = 89:17@98:3]

._crit_edge.loopexit:                             ; preds = %.preheader4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  br label %.loopexit, !dbg !1339                 ; [debug line = 101:6]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %i = phi i4 [ 0, %._crit_edge ], [ %i_2, %.loopexit.loopexit ] ; [#uses=4 type=i4]
  %tmp_28 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i, i3 0) ; [#uses=1 type=i7]
  %tmp_35_cast = zext i7 %tmp_28 to i8, !dbg !1339 ; [#uses=1 type=i8] [debug line = 101:6]
  %exitcond1 = icmp eq i4 %i, -8, !dbg !1339      ; [#uses=1 type=i1] [debug line = 101:6]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %i_2 = add i4 %i, 1, !dbg !1341                 ; [#uses=1 type=i4] [debug line = 101:20]
  call void @llvm.dbg.value(metadata !{i4 %i_2}, i64 0, metadata !1342), !dbg !1341 ; [debug line = 101:20] [debug variable = i]
  br i1 %exitcond1, label %3, label %.preheader.preheader, !dbg !1339 ; [debug line = 101:6]

.preheader.preheader:                             ; preds = %.loopexit
  br label %.preheader, !dbg !1343                ; [debug line = 103:14]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j = phi i4 [ %j_2, %2 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i4]
  %j_cast1_cast = zext i4 %j to i8, !dbg !1343    ; [#uses=1 type=i8] [debug line = 103:14]
  %tmp_29 = add i8 %tmp_35_cast, %j_cast1_cast, !dbg !1343 ; [#uses=1 type=i8] [debug line = 103:14]
  %tmp_36_cast = zext i8 %tmp_29 to i32, !dbg !1343 ; [#uses=1 type=i32] [debug line = 103:14]
  %G_addr = getelementptr [64 x float]* %G, i32 0, i32 %tmp_36_cast, !dbg !1343 ; [#uses=1 type=float*] [debug line = 103:14]
  %exitcond = icmp eq i4 %j, -8, !dbg !1345       ; [#uses=1 type=i1] [debug line = 102:7]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %j_2 = add i4 %j, 1, !dbg !1346                 ; [#uses=1 type=i4] [debug line = 102:21]
  br i1 %exitcond, label %.loopexit.loopexit, label %2, !dbg !1345 ; [debug line = 102:7]

; <label>:2                                       ; preds = %.preheader
  %tmp_11 = call fastcc float @singleGUV([64 x float]* %subimg, i4 %i, i4 %j, i32 %inv_read, [64 x float]* %cosMat) nounwind, !dbg !1343 ; [#uses=1 type=float] [debug line = 103:14]
  store float %tmp_11, float* %G_addr, align 4, !dbg !1343 ; [debug line = 103:14]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !1347), !dbg !1346 ; [debug line = 102:21] [debug variable = j]
  br label %.preheader, !dbg !1346                ; [debug line = 102:21]

; <label>:3                                       ; preds = %.loopexit
  ret void, !dbg !1348                            ; [debug line = 104:1]
}

!opencl.kernels = !{!0, !7, !13, !17, !23, !29, !33, !37, !39, !39, !0, !43, !45, !45, !43, !45, !45, !45, !47, !50, !45, !45, !51, !57, !43, !45, !59, !61, !59, !61, !59, !61, !43, !45, !43, !45, !43, !45, !43, !45, !43, !45, !43, !43, !45, !45, !62, !66, !62, !66, !68, !71, !73, !75, !43, !45, !43, !45, !43, !45, !77, !79, !77, !79, !77, !79, !79, !77, !79, !79, !77, !79, !77, !79, !80, !80, !84, !84, !86, !88, !94, !94, !88, !96, !88, !88, !88, !99, !99, !101, !101, !103, !88, !88, !88, !106, !94, !94, !88, !109, !88, !88, !88, !111, !111, !113, !113, !115, !88, !88, !88, !88, !88, !88, !117, !88, !88, !88, !88, !84, !84, !86, !117, !88, !84, !84, !86, !117, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !119, !119, !119, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !119, !119, !119, !121, !121, !121, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !121, !121, !121, !88, !121, !121, !121, !125, !88, !88, !88, !88, !127, !127, !130, !130, !134, !137, !137, !88, !88, !88, !88, !139, !141, !141, !88, !127, !127, !142, !142, !144, !146, !146, !88, !88, !88, !88, !147, !149, !149, !127, !150, !150, !152, !88, !154, !154, !157, !152, !159, !159, !88, !88, !88, !161, !161, !88, !162, !161, !161, !164, !161, !161, !166, !88, !88, !88, !88, !88, !88, !88, !88, !125, !88, !88, !88, !88, !127, !127, !168, !168, !170, !172, !172, !88, !88, !88, !88, !173, !175, !175, !127, !127, !176, !176, !178, !180, !180, !88, !181, !113, !113, !127, !182, !182, !157, !152, !184, !184, !88, !88, !161, !161, !186, !161, !161, !188, !88, !88, !88, !88, !88, !88, !79, !190, !192, !193, !192, !194, !194, !196, !198, !198, !88, !199, !201, !201, !127, !196, !199, !201, !201, !127, !202, !88, !157, !152, !157, !157, !77, !204, !192, !206, !192, !208, !208, !209, !211, !211, !88, !88, !212, !214, !214, !127, !209, !212, !214, !214, !127, !215, !88, !217, !217, !79, !193, !192, !77, !206, !192, !79, !190, !192, !77, !204, !192, !79, !77, !79, !77, !219, !88, !88, !221, !88, !45, !43, !45, !43, !45, !45, !43, !43, !75, !88, !73, !88, !71, !217, !217, !88, !88, !222, !223, !149, !149, !68, !217, !217, !88, !66, !225, !227, !227, !228, !88, !88, !88, !214, !214, !230, !230, !232, !232, !235, !204, !141, !141, !88, !238, !240, !88, !88, !88, !111, !111, !242, !242, !88, !127, !127, !243, !243, !245, !247, !214, !214, !88, !249, !88, !88, !88, !141, !141, !101, !101, !251, !251, !88, !146, !146, !146, !88, !253, !255, !253, !255, !253, !255, !256, !62, !190, !175, !175, !88, !127, !127, !243, !243, !259, !261, !201, !201, !88, !180, !180, !180, !263, !255, !263, !255, !265, !66, !62, !45, !267, !88, !88, !88, !271, !94, !94, !88, !88, !274, !274, !88, !276, !276, !276, !278, !280, !280, !274, !88, !157, !152, !282, !282, !161, !161, !88, !284, !286, !286, !288, !290, !290, !88, !292, !292, !294, !292, !292, !294, !296, !300, !88, !88, !88, !302, !94, !94, !304, !88, !88, !88, !306, !306, !306, !88, !157, !308, !309, !309, !134, !139, !141, !141, !88, !88, !127, !311, !311, !313, !313, !314, !316, !316, !317, !319, !319, !317, !45, !321, !88, !88, !88, !271, !88, !323, !323, !325, !325, !325, !327, !329, !329, !323, !88, !157, !152, !331, !331, !161, !161, !88, !333, !288, !335, !335, !88, !337, !337, !339, !337, !337, !339, !296, !341, !88, !88, !88, !343, !94, !94, !304, !88, !88, !88, !345, !345, !345, !319, !319, !317, !43, !347, !349, !349, !351, !349, !349, !351, !353, !88, !88, !88, !355, !94, !94, !304, !88, !88, !88, !357, !357, !357, !88, !157, !308, !359, !359, !170, !173, !175, !175, !88, !88, !127, !361, !361, !313, !313, !314, !316, !316, !363, !365, !365, !363, !43, !367, !369, !369, !371, !369, !369, !371, !373, !88, !88, !88, !375, !94, !94, !304, !88, !88, !88, !377, !377, !377, !365, !365, !363, !45, !256, !43, !379, !381, !88, !88, !88, !201, !201, !383, !383, !385, !385, !387, !265, !45, !43, !45, !43, !45, !43, !45, !43, !61, !88, !389, !192, !391, !394, !88, !141, !141, !111, !111, !59, !88, !396, !398, !61, !59, !61, !59, !77, !79, !57, !400, !88, !88, !402, !157, !152, !403, !403, !405, !405, !88, !88, !88, !88, !407, !88, !88, !88, !409, !409, !101, !101, !411, !88, !88, !88, !413, !415, !415, !416, !416, !88, !88, !413, !415, !415, !88, !88, !418, !418, !418, !88, !420, !88, !88, !88, !88, !88, !88, !422, !422, !422, !88, !424, !88, !88, !88, !88, !88, !88, !88, !88, !426, !426, !426, !428, !428, !430, !432, !88, !435, !288, !316, !316, !88, !437, !437, !439, !441, !127, !444, !444, !446, !446, !448, !88, !319, !319, !317, !127, !449, !449, !451, !453, !451, !451, !88, !88, !88, !88, !88, !88, !304, !88, !88, !415, !415, !455, !437, !437, !439, !88, !127, !457, !457, !459, !459, !459, !88, !453, !461, !461, !462, !439, !439, !463, !463, !88, !88, !462, !439, !439, !88, !88, !465, !467, !469, !469, !88, !316, !316, !88, !88, !470, !470, !470, !472, !88, !88, !474, !474, !474, !476, !88, !88, !88, !88, !88, !88, !88, !88, !478, !478, !478, !88, !480, !480, !482, !484, !88, !88, !88, !88, !88, !486, !486, !486, !88, !488, !488, !490, !88, !492, !492, !494, !88, !88, !127, !495, !495, !497, !497, !499, !88, !88, !500, !504, !304, !88, !88, !88, !494, !494, !494, !505, !505, !507, !88, !88, !88, !88, !508, !508, !508, !510, !513, !513, !515, !492, !517, !88, !127, !519, !519, !521, !523, !523, !88, !88, !88, !88, !524, !526, !526, !157, !152, !527, !527, !88, !127, !529, !529, !531, !531, !531, !88, !88, !88, !533, !535, !535, !127, !88, !88, !217, !217, !88, !536, !538, !508, !508, !88, !316, !316, !88, !88, !539, !539, !539, !541, !152, !543, !543, !545, !88, !547, !547, !549, !271, !94, !94, !88, !88, !161, !161, !88, !551, !547, !547, !549, !127, !552, !552, !554, !556, !556, !88, !88, !88, !88, !557, !88, !127, !559, !559, !561, !561, !564, !566, !566, !127, !567, !567, !569, !571, !571, !88, !88, !88, !88, !572, !573, !566, !566, !127, !575, !575, !577, !580, !580, !88, !88, !88, !88, !582, !584, !584, !586, !586, !588, !588, !589, !88, !88, !591, !127, !594, !594, !127, !596, !596, !598, !598, !598, !88, !88, !88, !600, !88, !88, !88, !602, !602, !602, !88, !604, !604, !192, !161, !161, !606, !157, !152, !608, !608, !134, !139, !127, !610, !610, !88, !88, !88, !88, !88, !88, !88, !161, !161, !88, !88, !612, !88, !88, !88, !88, !88, !88, !88, !88, !88, !51, !614, !616, !193, !192, !88, !618, !618, !88, !620, !88, !623, !192, !625, !625, !625, !88, !88, !627, !629, !629, !630, !304, !88, !88, !632, !632, !88, !625, !627, !629, !629, !161, !161, !127, !634, !634, !636, !638, !638, !88, !627, !127, !639, !639, !88, !88, !161, !161, !623, !641, !88, !88, !88, !643, !643, !629, !629, !645, !645, !88, !88, !161, !161, !647, !88, !643, !643, !647, !192, !649, !649, !651, !88, !88, !88, !88, !652, !655, !658, !660, !660, !661, !661, !88, !88, !663, !663, !665, !88, !663, !663, !663, !88, !88, !88, !667, !667, !669, !510, !671, !88, !88, !88, !88, !673, !675, !88, !663, !663, !663, !676, !665, !665, !304, !88, !88, !661, !661, !308, !678, !678, !680, !680, !682, !88, !683, !643, !643, !313, !313, !314, !316, !316, !661, !684, !127, !127, !686, !192, !255, !255, !88, !688, !101, !101, !115, !111, !111, !152, !88, !602, !602, !690, !692, !692, !88, !127, !693, !693, !88, !88, !623, !629, !629, !695, !88, !88, !696, !699, !700, !175, !175, !629, !629, !127, !702, !702, !704, !704, !704, !88, !706, !708, !708, !645, !645, !127, !710, !710, !712, !712, !712, !88, !88, !88, !88, !714, !716, !716, !718, !720, !720, !720, !127, !722, !722, !724, !726, !726, !88, !88, !88, !88, !727, !729, !729, !88, !127, !730, !730, !732, !734, !729, !729, !736, !736, !738, !88, !88, !127, !740, !740, !742, !745, !745, !88, !88, !88, !88, !747, !88, !88, !749, !749, !751, !751, !88, !753, !88, !88, !88, !88, !754, !754, !127, !756, !756, !758, !758, !758, !88, !88, !88, !88, !127, !760, !760, !762, !762, !762, !88, !88, !88, !88, !764, !766, !766, !768, !770, !770, !772, !774, !774, !127, !775, !775, !777, !779, !779, !88, !88, !88, !88, !780, !781, !774, !774, !127, !783, !783, !785, !787, !787, !88, !88, !88, !88, !789, !791, !791, !793, !793, !766, !766, !795, !88, !88, !797, !161, !161, !799, !192, !127, !801, !801, !803, !803, !803, !88, !88, !88, !88, !805, !88, !88, !88, !807, !807, !807, !88, !88, !88, !127, !809, !809, !161, !161, !811, !161, !161, !88, !813, !88, !815, !791, !791, !817, !819, !819, !819, !88, !88, !88, !821, !127, !127, !823, !823, !819, !819, !819, !825, !88, !88, !88, !88, !88, !88, !88, !88, !88, !88, !88, !88, !88, !88, !77, !77, !826, !206, !192, !206, !192, !828, !828, !88, !831, !149, !149, !833, !834, !836, !836, !238, !240, !88, !88, !88, !838, !840, !192, !88, !842, !843, !845, !847, !849, !849, !88, !88, !88, !850, !850, !852, !88, !850, !850, !850, !88, !88, !854, !854, !856, !858, !852, !852, !860, !304, !88, !88, !849, !849, !308, !862, !862, !864, !864, !866, !88, !88, !88, !867, !867, !869, !313, !313, !314, !316, !316, !849, !871, !871, !86, !117, !872, !875, !875, !877, !88, !867, !879, !777, !772, !127, !881, !881, !883, !883, !173, !175, !175, !170, !885, !190, !886, !888, !888, !88, !88, !88, !890, !892, !892, !774, !774, !127, !894, !894, !896, !896, !896, !88, !898, !127, !899, !899, !88, !88, !88, !88, !88, !901, !901, !903, !88, !88, !88, !271, !94, !94, !905, !905, !906, !127, !908, !908, !910, !912, !912, !88, !88, !88, !88, !913, !127, !915, !915, !917, !917, !173, !175, !175, !170, !919, !921, !921, !88, !88, !88, !88, !923, !892, !892, !925, !925, !927, !927, !127, !928, !928, !930, !930, !930, !88, !932, !932, !932, !88, !934, !127, !935, !935, !88, !88, !88, !88, !88, !88, !88, !84, !84, !86, !117, !84, !84, !86, !117, !304, !88, !88, !937, !937, !939, !157, !308, !941, !941, !139, !141, !141, !127, !943, !943, !313, !313, !314, !316, !316, !937, !88, !88, !88, !77, !77, !945, !945, !945, !945, !945, !88, !88, !838, !842, !947, !949, !951, !953, !953, !88, !954, !954, !88, !88, !956, !956, !958, !88, !956, !956, !956, !88, !88, !88, !667, !667, !669, !510, !960, !88, !88, !88, !962, !964, !88, !956, !956, !956, !965, !958, !958, !304, !88, !88, !954, !954, !88, !967, !967, !304, !157, !308, !968, !968, !139, !141, !141, !127, !970, !970, !313, !313, !314, !316, !316, !954, !972, !88, !88, !974, !976, !222, !223, !255, !45, !977, !977, !977, !977, !977, !88, !88, !978, !88, !127, !979, !979, !981, !983, !983, !88, !88, !88, !88, !984, !986, !986, !88, !88, !88, !987, !989, !991, !993, !993, !994, !994, !88, !88, !996, !996, !998, !88, !996, !996, !996, !88, !88, !88, !667, !667, !669, !510, !1000, !88, !88, !88, !1002, !1004, !88, !996, !996, !996, !1005, !998, !998, !304, !88, !88, !994, !994, !88, !304, !157, !308, !1007, !1007, !173, !175, !175, !127, !1009, !1009, !313, !313, !314, !316, !316, !994, !1011, !88, !88, !88, !1013, !113, !113, !1015, !106, !109, !1016, !43, !1017, !1017, !77, !77, !77, !1019, !1022, !1022, !1024, !1026, !1028, !88, !1030, !192, !1032, !1032, !1032, !88, !1034, !1036, !1036, !304, !88, !88, !1037, !1037, !157, !88, !1032, !1034, !1036, !1036, !1039, !1041, !1041, !88, !1034, !127, !1042, !1042, !1032, !1034, !127, !1044, !1044, !1046, !1046, !1048, !1050, !88, !88, !1052, !1054, !1056, !1058, !1058, !1024, !1024, !88, !88, !1059, !1059, !1061, !88, !1059, !1059, !1059, !88, !88, !667, !667, !669, !510, !1063, !88, !88, !88, !1065, !1067, !88, !1059, !1059, !1059, !1068, !1061, !1061, !304, !88, !88, !1024, !1024, !88, !308, !1070, !1070, !313, !313, !314, !316, !316, !1024, !1022, !1030, !1034, !1036, !1036, !88, !127, !1072, !1072, !1074, !1074, !1074, !88, !88, !88, !1076, !88, !88, !88, !88, !1078, !1080, !1080, !1082, !584, !584, !127, !1083, !1083, !161, !161, !1085, !161, !161, !1087, !88, !1089, !584, !584, !1091, !1093, !214, !214, !88, !88, !77, !77, !1095, !474, !474, !474, !478, !478, !478, !1098, !1098, !1100, !313, !313, !314, !316, !316, !296, !94, !94, !1102, !94, !94, !1104, !1106, !1106, !1104, !157, !152, !1108, !1108, !497, !497, !499, !1110, !1116, !288, !316, !316, !547, !547, !549, !1118, !192, !255, !255, !1120, !1120, !1122, !77, !77, !79, !79, !77, !77, !77, !77, !79, !79, !45, !45, !45, !45, !43, !43, !43, !43, !45, !45, !45, !45, !43, !43, !43, !43, !1124, !88, !88, !88, !271, !94, !94, !88, !88, !88, !88, !161, !161, !88, !284, !286, !286, !88, !288, !290, !290, !88, !349, !349, !351, !349, !349, !351, !296, !94, !94, !353, !88, !88, !88, !355, !94, !94, !88, !88, !88, !106, !94, !94, !109, !88, !88, !88, !111, !111, !113, !113, !304, !88, !88, !88, !357, !357, !357, !88, !157, !308, !359, !359, !127, !127, !168, !168, !170, !172, !172, !88, !88, !88, !88, !173, !175, !175, !88, !88, !127, !361, !361, !313, !313, !314, !316, !316, !363, !365, !365, !363, !194, !194, !196, !198, !198, !88, !88, !199, !201, !201, !127, !127, !182, !182, !196, !199, !201, !201, !88, !127, !176, !176, !152, !184, !184, !202, !88, !157, !152, !154, !154, !157, !157, !88, !88, !88, !88, !88, !88, !88, !88, !1126, !88, !88, !88, !271, !94, !94, !88, !88, !161, !161, !88, !333, !288, !335, !335, !88, !369, !369, !371, !369, !369, !371, !296, !373, !88, !88, !88, !375, !94, !94, !304, !88, !88, !88, !377, !377, !377, !365, !365, !363, !1128, !88, !88, !88, !271, !94, !94, !88, !88, !161, !161, !88, !1130, !288, !1132, !1132, !88, !1134, !1134, !1136, !1134, !1134, !1136, !296, !1138, !88, !88, !88, !1140, !94, !94, !304, !88, !88, !88, !1142, !1142, !1142, !365, !365, !363, !1144, !88, !88, !88, !271, !94, !94, !88, !88, !161, !161, !88, !1146, !288, !1148, !1148, !88, !1150, !1150, !1152, !1150, !1150, !1152, !296, !1154, !88, !88, !88, !1156, !94, !94, !304, !88, !88, !88, !1158, !1158, !1158, !365, !365, !363, !1160, !88, !292, !292, !294, !292, !292, !294, !300, !88, !88, !88, !302, !94, !94, !88, !222, !223, !149, !149, !304, !88, !88, !88, !306, !306, !306, !88, !157, !308, !309, !309, !127, !127, !130, !130, !134, !137, !137, !88, !88, !88, !88, !139, !141, !141, !88, !88, !127, !311, !311, !313, !313, !314, !316, !316, !317, !319, !319, !317, !208, !208, !209, !211, !211, !88, !88, !212, !214, !214, !127, !127, !150, !150, !209, !212, !214, !214, !127, !142, !142, !152, !159, !159, !215, !88, !217, !217, !88, !88, !88, !88, !1162, !337, !337, !339, !337, !337, !339, !341, !88, !88, !88, !343, !94, !94, !304, !88, !88, !88, !345, !345, !345, !319, !319, !317, !1164, !1166, !1166, !1168, !1166, !1166, !1168, !1170, !88, !88, !88, !1172, !94, !94, !304, !88, !88, !88, !1174, !1174, !1174, !319, !319, !317, !1176, !1178, !1178, !1180, !1178, !1178, !1180, !1182, !88, !88, !88, !1184, !94, !94, !304, !88, !88, !88, !1185, !1185, !1185, !319, !319, !317, !1187, !88, !88, !88, !271, !88, !323, !323, !325, !325, !325, !327, !329, !329, !323, !88, !157, !152, !331, !331, !161, !161, !88, !1189, !88, !88, !88, !271, !94, !94, !88, !88, !1191, !1191, !88, !1193, !1193, !1193, !1195, !1197, !1197, !1191, !88, !157, !152, !1199, !1199, !161, !161, !88, !1201, !88, !88, !88, !271, !94, !94, !88, !88, !1203, !1203, !88, !1205, !1205, !1205, !1207, !1209, !1209, !1203, !88, !157, !152, !1211, !1211, !161, !161, !88, !1213, !1215, !1217, !84, !84, !86, !88, !96, !88, !88, !88, !99, !99, !101, !101, !103, !88, !88, !88, !115, !88, !88, !88, !88, !117, !88, !84, !84, !86, !117, !88, !84, !84, !86, !117, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !119, !119, !119, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !267, !88, !88, !88, !271, !94, !94, !88, !88, !274, !274, !88, !276, !276, !276, !278, !280, !280, !274, !88, !157, !152, !282, !282, !161, !161, !88, !347, !119, !119, !119, !88, !119, !119, !119, !119, !119, !119, !121, !121, !121, !88, !119, !119, !119, !88, !119, !119, !119, !88, !119, !119, !119, !88, !121, !121, !121, !88, !121, !121, !121}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!1219}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"short [400][3]*", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"image", metadata !"row", metadata !"col", metadata !"flag"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"float [8]*", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"matrix", metadata !"quality"}
!13 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"float [8]*", metadata !"float [8]*"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"matrix", metadata !"G"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!19 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!21 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 1}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"float [8]*", metadata !"int", metadata !"int", metadata !"int", metadata !"float [8]*"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"subimg", metadata !"u", metadata !"v", metadata !"inv", metadata !"cosMat"}
!29 = metadata !{null, metadata !30, metadata !19, metadata !31, metadata !21, metadata !32, metadata !6}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"float [8]*"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"subimg"}
!33 = metadata !{null, metadata !34, metadata !25, metadata !35, metadata !27, metadata !36, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 1}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"float [8]*", metadata !"float [8]*", metadata !"int", metadata !"int", metadata !"float [8]*"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"G", metadata !"subimg", metadata !"shift", metadata !"inv", metadata !"cosMat"}
!37 = metadata !{null, metadata !30, metadata !19, metadata !31, metadata !21, metadata !38, metadata !6}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"cosMatrix"}
!39 = metadata !{null, metadata !40, metadata !9, metadata !41, metadata !11, metadata !42, metadata !6}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!43 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !22, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!45 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !22, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!47 = metadata !{null, metadata !40, metadata !9, metadata !48, metadata !11, metadata !49, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!50 = metadata !{null, metadata !40, metadata !9, metadata !41, metadata !11, metadata !49, metadata !6}
!51 = metadata !{null, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !6}
!52 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!53 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*", metadata !"double*"}
!55 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"sin", metadata !"cos"}
!57 = metadata !{null, metadata !52, metadata !53, metadata !58, metadata !55, metadata !56, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!59 = metadata !{null, metadata !40, metadata !9, metadata !48, metadata !11, metadata !60, metadata !6}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!61 = metadata !{null, metadata !40, metadata !9, metadata !41, metadata !11, metadata !60, metadata !6}
!62 = metadata !{null, metadata !63, metadata !9, metadata !64, metadata !11, metadata !65, metadata !6}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*"}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"intpart"}
!66 = metadata !{null, metadata !63, metadata !9, metadata !67, metadata !11, metadata !65, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*"}
!68 = metadata !{null, metadata !63, metadata !9, metadata !69, metadata !11, metadata !70, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int*"}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"exp"}
!71 = metadata !{null, metadata !63, metadata !9, metadata !72, metadata !11, metadata !70, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int*"}
!73 = metadata !{null, metadata !40, metadata !9, metadata !74, metadata !11, metadata !70, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!75 = metadata !{null, metadata !40, metadata !9, metadata !76, metadata !11, metadata !70, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int"}
!77 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !78, metadata !6}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"t_in"}
!79 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !78, metadata !6}
!80 = metadata !{null, metadata !30, metadata !19, metadata !81, metadata !82, metadata !83, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!82 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"p"}
!84 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !85, metadata !6}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!86 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !87, metadata !6}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!88 = metadata !{null, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !6}
!89 = metadata !{metadata !"kernel_arg_addr_space"}
!90 = metadata !{metadata !"kernel_arg_access_qual"}
!91 = metadata !{metadata !"kernel_arg_type"}
!92 = metadata !{metadata !"kernel_arg_type_qual"}
!93 = metadata !{metadata !"kernel_arg_name"}
!94 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !95, metadata !6}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!96 = metadata !{null, metadata !40, metadata !9, metadata !97, metadata !11, metadata !98, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!98 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!99 = metadata !{null, metadata !18, metadata !19, metadata !100, metadata !21, metadata !95, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!101 = metadata !{null, metadata !18, metadata !19, metadata !102, metadata !21, metadata !95, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!103 = metadata !{null, metadata !18, metadata !19, metadata !104, metadata !21, metadata !105, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!106 = metadata !{null, metadata !40, metadata !9, metadata !107, metadata !11, metadata !108, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!108 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!109 = metadata !{null, metadata !40, metadata !9, metadata !110, metadata !11, metadata !98, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!111 = metadata !{null, metadata !18, metadata !19, metadata !112, metadata !21, metadata !95, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!113 = metadata !{null, metadata !18, metadata !19, metadata !114, metadata !21, metadata !95, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!115 = metadata !{null, metadata !18, metadata !19, metadata !116, metadata !21, metadata !105, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!117 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !118, metadata !6}
!118 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!119 = metadata !{null, metadata !30, metadata !19, metadata !81, metadata !82, metadata !120, metadata !6}
!120 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!121 = metadata !{null, metadata !8, metadata !9, metadata !122, metadata !123, metadata !124, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!123 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!124 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!125 = metadata !{null, metadata !30, metadata !19, metadata !81, metadata !82, metadata !126, metadata !6}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"tagp"}
!127 = metadata !{null, metadata !40, metadata !9, metadata !128, metadata !11, metadata !129, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!130 = metadata !{null, metadata !131, metadata !53, metadata !132, metadata !55, metadata !133, metadata !6}
!131 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!134 = metadata !{null, metadata !18, metadata !19, metadata !135, metadata !21, metadata !136, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!137 = metadata !{null, metadata !18, metadata !19, metadata !135, metadata !21, metadata !138, metadata !6}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!139 = metadata !{null, metadata !18, metadata !19, metadata !140, metadata !21, metadata !136, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!141 = metadata !{null, metadata !18, metadata !19, metadata !140, metadata !21, metadata !95, metadata !6}
!142 = metadata !{null, metadata !131, metadata !53, metadata !143, metadata !55, metadata !133, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!144 = metadata !{null, metadata !18, metadata !19, metadata !145, metadata !21, metadata !136, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!146 = metadata !{null, metadata !18, metadata !19, metadata !145, metadata !21, metadata !138, metadata !6}
!147 = metadata !{null, metadata !18, metadata !19, metadata !148, metadata !21, metadata !136, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!149 = metadata !{null, metadata !18, metadata !19, metadata !148, metadata !21, metadata !95, metadata !6}
!150 = metadata !{null, metadata !131, metadata !53, metadata !151, metadata !55, metadata !133, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!152 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !153, metadata !6}
!153 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!154 = metadata !{null, metadata !8, metadata !9, metadata !155, metadata !11, metadata !156, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!156 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!157 = metadata !{null, metadata !18, metadata !19, metadata !158, metadata !21, metadata !136, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!159 = metadata !{null, metadata !8, metadata !9, metadata !160, metadata !11, metadata !156, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!161 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !136, metadata !6}
!162 = metadata !{null, metadata !18, metadata !19, metadata !163, metadata !21, metadata !105, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!164 = metadata !{null, metadata !18, metadata !19, metadata !165, metadata !21, metadata !105, metadata !6}
!165 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!166 = metadata !{null, metadata !18, metadata !19, metadata !167, metadata !21, metadata !105, metadata !6}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<23> &"}
!168 = metadata !{null, metadata !131, metadata !53, metadata !169, metadata !55, metadata !133, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!170 = metadata !{null, metadata !18, metadata !19, metadata !171, metadata !21, metadata !136, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!172 = metadata !{null, metadata !18, metadata !19, metadata !171, metadata !21, metadata !138, metadata !6}
!173 = metadata !{null, metadata !18, metadata !19, metadata !174, metadata !21, metadata !136, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!175 = metadata !{null, metadata !18, metadata !19, metadata !174, metadata !21, metadata !95, metadata !6}
!176 = metadata !{null, metadata !131, metadata !53, metadata !177, metadata !55, metadata !133, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!178 = metadata !{null, metadata !18, metadata !19, metadata !179, metadata !21, metadata !136, metadata !6}
!179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<11, false> &"}
!180 = metadata !{null, metadata !18, metadata !19, metadata !179, metadata !21, metadata !138, metadata !6}
!181 = metadata !{null, metadata !18, metadata !19, metadata !114, metadata !21, metadata !136, metadata !6}
!182 = metadata !{null, metadata !131, metadata !53, metadata !183, metadata !55, metadata !133, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!184 = metadata !{null, metadata !8, metadata !9, metadata !185, metadata !11, metadata !156, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!186 = metadata !{null, metadata !18, metadata !19, metadata !187, metadata !21, metadata !105, metadata !6}
!187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<11> &"}
!188 = metadata !{null, metadata !18, metadata !19, metadata !189, metadata !21, metadata !105, metadata !6}
!189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<52> &"}
!190 = metadata !{null, metadata !40, metadata !9, metadata !191, metadata !11, metadata !98, metadata !6}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"int"}
!192 = metadata !{null, metadata !18, metadata !19, metadata !112, metadata !21, metadata !105, metadata !6}
!193 = metadata !{null, metadata !40, metadata !9, metadata !107, metadata !11, metadata !98, metadata !6}
!194 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !195, metadata !6}
!195 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!196 = metadata !{null, metadata !18, metadata !19, metadata !197, metadata !21, metadata !136, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!198 = metadata !{null, metadata !18, metadata !19, metadata !197, metadata !21, metadata !138, metadata !6}
!199 = metadata !{null, metadata !18, metadata !19, metadata !200, metadata !21, metadata !136, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!201 = metadata !{null, metadata !18, metadata !19, metadata !200, metadata !21, metadata !95, metadata !6}
!202 = metadata !{null, metadata !18, metadata !19, metadata !203, metadata !21, metadata !136, metadata !6}
!203 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!204 = metadata !{null, metadata !40, metadata !9, metadata !205, metadata !11, metadata !98, metadata !6}
!205 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"int"}
!206 = metadata !{null, metadata !40, metadata !9, metadata !207, metadata !11, metadata !98, metadata !6}
!207 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!208 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !195, metadata !6}
!209 = metadata !{null, metadata !18, metadata !19, metadata !210, metadata !21, metadata !136, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!211 = metadata !{null, metadata !18, metadata !19, metadata !210, metadata !21, metadata !138, metadata !6}
!212 = metadata !{null, metadata !18, metadata !19, metadata !213, metadata !21, metadata !136, metadata !6}
!213 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!214 = metadata !{null, metadata !18, metadata !19, metadata !213, metadata !21, metadata !95, metadata !6}
!215 = metadata !{null, metadata !18, metadata !19, metadata !216, metadata !21, metadata !136, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!217 = metadata !{null, metadata !18, metadata !19, metadata !218, metadata !21, metadata !136, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!219 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !220, metadata !6}
!220 = metadata !{metadata !"kernel_arg_name", metadata !"a_re"}
!221 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !220, metadata !6}
!222 = metadata !{null, metadata !40, metadata !9, metadata !207, metadata !11, metadata !108, metadata !6}
!223 = metadata !{null, metadata !40, metadata !9, metadata !224, metadata !11, metadata !98, metadata !6}
!224 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!225 = metadata !{null, metadata !40, metadata !9, metadata !226, metadata !11, metadata !108, metadata !6}
!226 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"uint"}
!227 = metadata !{null, metadata !18, metadata !19, metadata !218, metadata !21, metadata !95, metadata !6}
!228 = metadata !{null, metadata !40, metadata !9, metadata !229, metadata !11, metadata !98, metadata !6}
!229 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, false> &"}
!230 = metadata !{null, metadata !18, metadata !19, metadata !231, metadata !21, metadata !95, metadata !6}
!231 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!232 = metadata !{null, metadata !18, metadata !19, metadata !233, metadata !21, metadata !234, metadata !6}
!233 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32>"}
!234 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!235 = metadata !{null, metadata !18, metadata !19, metadata !236, metadata !21, metadata !237, metadata !6}
!236 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<float> &"}
!237 = metadata !{metadata !"kernel_arg_name", metadata !""}
!238 = metadata !{null, metadata !40, metadata !9, metadata !239, metadata !11, metadata !108, metadata !6}
!239 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!240 = metadata !{null, metadata !40, metadata !9, metadata !241, metadata !11, metadata !98, metadata !6}
!241 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!242 = metadata !{null, metadata !18, metadata !19, metadata !116, metadata !21, metadata !95, metadata !6}
!243 = metadata !{null, metadata !18, metadata !19, metadata !244, metadata !21, metadata !95, metadata !6}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!245 = metadata !{null, metadata !40, metadata !9, metadata !246, metadata !11, metadata !108, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"uint"}
!247 = metadata !{null, metadata !40, metadata !9, metadata !248, metadata !11, metadata !98, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"const ap_int_base<32, false> &"}
!249 = metadata !{null, metadata !40, metadata !9, metadata !250, metadata !11, metadata !98, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<23, false> &"}
!251 = metadata !{null, metadata !18, metadata !19, metadata !252, metadata !21, metadata !95, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, true> &"}
!253 = metadata !{null, metadata !40, metadata !9, metadata !254, metadata !11, metadata !98, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!255 = metadata !{null, metadata !18, metadata !19, metadata !213, metadata !21, metadata !105, metadata !6}
!256 = metadata !{null, metadata !30, metadata !19, metadata !257, metadata !21, metadata !258, metadata !6}
!257 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t*"}
!258 = metadata !{metadata !"kernel_arg_name", metadata !"mask_table"}
!259 = metadata !{null, metadata !40, metadata !9, metadata !260, metadata !11, metadata !108, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"ap_ulong"}
!261 = metadata !{null, metadata !40, metadata !9, metadata !262, metadata !11, metadata !98, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"const ap_int_base<64, false> &"}
!263 = metadata !{null, metadata !40, metadata !9, metadata !264, metadata !11, metadata !98, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"uint"}
!265 = metadata !{null, metadata !30, metadata !19, metadata !266, metadata !21, metadata !258, metadata !6}
!266 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t*"}
!267 = metadata !{null, metadata !268, metadata !53, metadata !269, metadata !55, metadata !270, metadata !6}
!268 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!269 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!270 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !"dummy"}
!271 = metadata !{null, metadata !18, metadata !19, metadata !272, metadata !21, metadata !273, metadata !6}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!273 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!274 = metadata !{null, metadata !18, metadata !19, metadata !275, metadata !21, metadata !95, metadata !6}
!275 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!276 = metadata !{null, metadata !18, metadata !19, metadata !277, metadata !21, metadata !95, metadata !6}
!277 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 65, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!278 = metadata !{null, metadata !18, metadata !19, metadata !279, metadata !21, metadata !95, metadata !6}
!279 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!280 = metadata !{null, metadata !18, metadata !19, metadata !281, metadata !21, metadata !95, metadata !6}
!281 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!282 = metadata !{null, metadata !8, metadata !9, metadata !283, metadata !11, metadata !156, metadata !6}
!283 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!284 = metadata !{null, metadata !40, metadata !9, metadata !285, metadata !11, metadata !108, metadata !6}
!285 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!286 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !287, metadata !6}
!287 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!288 = metadata !{null, metadata !18, metadata !19, metadata !289, metadata !21, metadata !105, metadata !6}
!289 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!290 = metadata !{null, metadata !18, metadata !19, metadata !291, metadata !21, metadata !95, metadata !6}
!291 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!292 = metadata !{null, metadata !18, metadata !19, metadata !293, metadata !21, metadata !95, metadata !6}
!293 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<87, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!294 = metadata !{null, metadata !18, metadata !19, metadata !295, metadata !21, metadata !95, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!296 = metadata !{null, metadata !297, metadata !2, metadata !298, metadata !4, metadata !299, metadata !6}
!297 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!298 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!299 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!300 = metadata !{null, metadata !40, metadata !9, metadata !301, metadata !11, metadata !98, metadata !6}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &", metadata !"int"}
!302 = metadata !{null, metadata !18, metadata !19, metadata !303, metadata !21, metadata !105, metadata !6}
!303 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &"}
!304 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !305, metadata !6}
!305 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!306 = metadata !{null, metadata !18, metadata !19, metadata !307, metadata !21, metadata !95, metadata !6}
!307 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<110, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!308 = metadata !{null, metadata !18, metadata !19, metadata !218, metadata !21, metadata !153, metadata !6}
!309 = metadata !{null, metadata !8, metadata !9, metadata !310, metadata !11, metadata !156, metadata !6}
!310 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!311 = metadata !{null, metadata !131, metadata !53, metadata !312, metadata !55, metadata !133, metadata !6}
!312 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!313 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !85, metadata !6}
!314 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !315, metadata !6}
!315 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!316 = metadata !{null, metadata !18, metadata !19, metadata !289, metadata !21, metadata !95, metadata !6}
!317 = metadata !{null, metadata !18, metadata !19, metadata !318, metadata !21, metadata !95, metadata !6}
!318 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!319 = metadata !{null, metadata !18, metadata !19, metadata !320, metadata !21, metadata !95, metadata !6}
!320 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!321 = metadata !{null, metadata !268, metadata !53, metadata !322, metadata !55, metadata !270, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!323 = metadata !{null, metadata !18, metadata !19, metadata !324, metadata !21, metadata !95, metadata !6}
!324 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!325 = metadata !{null, metadata !18, metadata !19, metadata !326, metadata !21, metadata !95, metadata !6}
!326 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!327 = metadata !{null, metadata !18, metadata !19, metadata !328, metadata !21, metadata !95, metadata !6}
!328 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!329 = metadata !{null, metadata !18, metadata !19, metadata !330, metadata !21, metadata !95, metadata !6}
!330 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!331 = metadata !{null, metadata !8, metadata !9, metadata !332, metadata !11, metadata !156, metadata !6}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!333 = metadata !{null, metadata !40, metadata !9, metadata !334, metadata !11, metadata !108, metadata !6}
!334 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!335 = metadata !{null, metadata !18, metadata !19, metadata !336, metadata !21, metadata !95, metadata !6}
!336 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!337 = metadata !{null, metadata !18, metadata !19, metadata !338, metadata !21, metadata !95, metadata !6}
!338 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!339 = metadata !{null, metadata !18, metadata !19, metadata !340, metadata !21, metadata !95, metadata !6}
!340 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!341 = metadata !{null, metadata !40, metadata !9, metadata !342, metadata !11, metadata !98, metadata !6}
!342 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!343 = metadata !{null, metadata !18, metadata !19, metadata !344, metadata !21, metadata !105, metadata !6}
!344 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!345 = metadata !{null, metadata !18, metadata !19, metadata !346, metadata !21, metadata !95, metadata !6}
!346 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!347 = metadata !{null, metadata !268, metadata !53, metadata !348, metadata !55, metadata !270, metadata !6}
!348 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!349 = metadata !{null, metadata !18, metadata !19, metadata !350, metadata !21, metadata !95, metadata !6}
!350 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<116, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!351 = metadata !{null, metadata !18, metadata !19, metadata !352, metadata !21, metadata !95, metadata !6}
!352 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<116, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!353 = metadata !{null, metadata !40, metadata !9, metadata !354, metadata !11, metadata !98, metadata !6}
!354 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &", metadata !"int"}
!355 = metadata !{null, metadata !18, metadata !19, metadata !356, metadata !21, metadata !105, metadata !6}
!356 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &"}
!357 = metadata !{null, metadata !18, metadata !19, metadata !358, metadata !21, metadata !95, metadata !6}
!358 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<168, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!359 = metadata !{null, metadata !8, metadata !9, metadata !360, metadata !11, metadata !156, metadata !6}
!360 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!361 = metadata !{null, metadata !131, metadata !53, metadata !362, metadata !55, metadata !133, metadata !6}
!362 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!363 = metadata !{null, metadata !18, metadata !19, metadata !364, metadata !21, metadata !95, metadata !6}
!364 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!365 = metadata !{null, metadata !18, metadata !19, metadata !366, metadata !21, metadata !95, metadata !6}
!366 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!367 = metadata !{null, metadata !268, metadata !53, metadata !368, metadata !55, metadata !270, metadata !6}
!368 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!369 = metadata !{null, metadata !18, metadata !19, metadata !370, metadata !21, metadata !95, metadata !6}
!370 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<84, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!371 = metadata !{null, metadata !18, metadata !19, metadata !372, metadata !21, metadata !95, metadata !6}
!372 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<84, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!373 = metadata !{null, metadata !40, metadata !9, metadata !374, metadata !11, metadata !98, metadata !6}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &", metadata !"int"}
!375 = metadata !{null, metadata !18, metadata !19, metadata !376, metadata !21, metadata !105, metadata !6}
!376 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &"}
!377 = metadata !{null, metadata !18, metadata !19, metadata !378, metadata !21, metadata !95, metadata !6}
!378 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<136, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!379 = metadata !{null, metadata !40, metadata !9, metadata !380, metadata !11, metadata !108, metadata !6}
!380 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"ap_ulong"}
!381 = metadata !{null, metadata !40, metadata !9, metadata !382, metadata !11, metadata !98, metadata !6}
!382 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, false> &"}
!383 = metadata !{null, metadata !18, metadata !19, metadata !384, metadata !21, metadata !95, metadata !6}
!384 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, false> &"}
!385 = metadata !{null, metadata !18, metadata !19, metadata !386, metadata !21, metadata !234, metadata !6}
!386 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<64>"}
!387 = metadata !{null, metadata !18, metadata !19, metadata !388, metadata !21, metadata !237, metadata !6}
!388 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<double> &"}
!389 = metadata !{null, metadata !40, metadata !9, metadata !390, metadata !11, metadata !98, metadata !6}
!390 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!391 = metadata !{null, metadata !40, metadata !9, metadata !392, metadata !11, metadata !393, metadata !6}
!392 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, false> &"}
!393 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!394 = metadata !{null, metadata !40, metadata !9, metadata !395, metadata !11, metadata !98, metadata !6}
!395 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, false> &"}
!396 = metadata !{null, metadata !40, metadata !9, metadata !397, metadata !11, metadata !393, metadata !6}
!397 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong", metadata !"const ap_int_base<52, false> &"}
!398 = metadata !{null, metadata !40, metadata !9, metadata !399, metadata !11, metadata !98, metadata !6}
!399 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<52, false> &"}
!400 = metadata !{null, metadata !52, metadata !53, metadata !58, metadata !55, metadata !401, metadata !6}
!401 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s", metadata !"c"}
!402 = metadata !{null, metadata !18, metadata !19, metadata !102, metadata !21, metadata !136, metadata !6}
!403 = metadata !{null, metadata !8, metadata !9, metadata !404, metadata !11, metadata !156, metadata !6}
!404 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<4, false>*", metadata !"int"}
!405 = metadata !{null, metadata !18, metadata !19, metadata !406, metadata !21, metadata !95, metadata !6}
!406 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!407 = metadata !{null, metadata !40, metadata !9, metadata !408, metadata !11, metadata !98, metadata !6}
!408 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, true> &"}
!409 = metadata !{null, metadata !18, metadata !19, metadata !410, metadata !21, metadata !95, metadata !6}
!410 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!411 = metadata !{null, metadata !18, metadata !19, metadata !412, metadata !21, metadata !105, metadata !6}
!412 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!413 = metadata !{null, metadata !18, metadata !19, metadata !414, metadata !21, metadata !105, metadata !6}
!414 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!415 = metadata !{null, metadata !18, metadata !19, metadata !414, metadata !21, metadata !95, metadata !6}
!416 = metadata !{null, metadata !18, metadata !19, metadata !417, metadata !21, metadata !95, metadata !6}
!417 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!418 = metadata !{null, metadata !18, metadata !19, metadata !419, metadata !21, metadata !95, metadata !6}
!419 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!420 = metadata !{null, metadata !18, metadata !19, metadata !421, metadata !21, metadata !105, metadata !6}
!421 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<13, -2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!422 = metadata !{null, metadata !18, metadata !19, metadata !423, metadata !21, metadata !95, metadata !6}
!423 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, -16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!424 = metadata !{null, metadata !18, metadata !19, metadata !425, metadata !21, metadata !105, metadata !6}
!425 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<21, -1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!426 = metadata !{null, metadata !18, metadata !19, metadata !427, metadata !21, metadata !95, metadata !6}
!427 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<38, -8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!428 = metadata !{null, metadata !18, metadata !19, metadata !429, metadata !21, metadata !95, metadata !6}
!429 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!430 = metadata !{null, metadata !18, metadata !19, metadata !431, metadata !21, metadata !95, metadata !6}
!431 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!432 = metadata !{null, metadata !268, metadata !53, metadata !433, metadata !55, metadata !434, metadata !6}
!433 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<31, 1>", metadata !"float &", metadata !"int"}
!434 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"result", metadata !"prescale"}
!435 = metadata !{null, metadata !40, metadata !9, metadata !436, metadata !11, metadata !108, metadata !6}
!436 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!437 = metadata !{null, metadata !18, metadata !19, metadata !438, metadata !21, metadata !95, metadata !6}
!438 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!439 = metadata !{null, metadata !18, metadata !19, metadata !440, metadata !21, metadata !95, metadata !6}
!440 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!441 = metadata !{null, metadata !18, metadata !19, metadata !442, metadata !21, metadata !443, metadata !6}
!442 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<1 + SIG_BITS, 1>"}
!443 = metadata !{metadata !"kernel_arg_name", metadata !"mantissa"}
!444 = metadata !{null, metadata !131, metadata !53, metadata !445, metadata !55, metadata !133, metadata !6}
!445 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!446 = metadata !{null, metadata !18, metadata !19, metadata !447, metadata !21, metadata !95, metadata !6}
!447 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!448 = metadata !{null, metadata !18, metadata !19, metadata !447, metadata !21, metadata !136, metadata !6}
!449 = metadata !{null, metadata !131, metadata !53, metadata !450, metadata !55, metadata !133, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!451 = metadata !{null, metadata !18, metadata !19, metadata !452, metadata !21, metadata !136, metadata !6}
!452 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!453 = metadata !{null, metadata !18, metadata !19, metadata !454, metadata !21, metadata !136, metadata !6}
!454 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &"}
!455 = metadata !{null, metadata !18, metadata !19, metadata !456, metadata !21, metadata !95, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!457 = metadata !{null, metadata !131, metadata !53, metadata !458, metadata !55, metadata !133, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!459 = metadata !{null, metadata !18, metadata !19, metadata !460, metadata !21, metadata !136, metadata !6}
!460 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!461 = metadata !{null, metadata !18, metadata !19, metadata !454, metadata !21, metadata !95, metadata !6}
!462 = metadata !{null, metadata !18, metadata !19, metadata !440, metadata !21, metadata !105, metadata !6}
!463 = metadata !{null, metadata !18, metadata !19, metadata !464, metadata !21, metadata !95, metadata !6}
!464 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!465 = metadata !{null, metadata !40, metadata !9, metadata !466, metadata !11, metadata !393, metadata !6}
!466 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!467 = metadata !{null, metadata !18, metadata !19, metadata !468, metadata !21, metadata !105, metadata !6}
!468 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!469 = metadata !{null, metadata !18, metadata !19, metadata !468, metadata !21, metadata !95, metadata !6}
!470 = metadata !{null, metadata !18, metadata !19, metadata !471, metadata !21, metadata !95, metadata !6}
!471 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!472 = metadata !{null, metadata !18, metadata !19, metadata !473, metadata !21, metadata !105, metadata !6}
!473 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!474 = metadata !{null, metadata !18, metadata !19, metadata !475, metadata !21, metadata !95, metadata !6}
!475 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, -14, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!476 = metadata !{null, metadata !18, metadata !19, metadata !477, metadata !21, metadata !105, metadata !6}
!477 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<23, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!478 = metadata !{null, metadata !18, metadata !19, metadata !479, metadata !21, metadata !95, metadata !6}
!479 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, -6, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!480 = metadata !{null, metadata !18, metadata !19, metadata !481, metadata !21, metadata !95, metadata !6}
!481 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<29, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!482 = metadata !{null, metadata !18, metadata !19, metadata !483, metadata !21, metadata !95, metadata !6}
!483 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!484 = metadata !{null, metadata !18, metadata !19, metadata !485, metadata !21, metadata !105, metadata !6}
!485 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!486 = metadata !{null, metadata !18, metadata !19, metadata !487, metadata !21, metadata !95, metadata !6}
!487 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<18, -14, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!488 = metadata !{null, metadata !18, metadata !19, metadata !489, metadata !21, metadata !95, metadata !6}
!489 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, -7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!490 = metadata !{null, metadata !18, metadata !19, metadata !491, metadata !21, metadata !95, metadata !6}
!491 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!492 = metadata !{null, metadata !18, metadata !19, metadata !493, metadata !21, metadata !95, metadata !6}
!493 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!494 = metadata !{null, metadata !18, metadata !19, metadata !412, metadata !21, metadata !95, metadata !6}
!495 = metadata !{null, metadata !131, metadata !53, metadata !496, metadata !55, metadata !133, metadata !6}
!496 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!497 = metadata !{null, metadata !18, metadata !19, metadata !498, metadata !21, metadata !95, metadata !6}
!498 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!499 = metadata !{null, metadata !18, metadata !19, metadata !498, metadata !21, metadata !136, metadata !6}
!500 = metadata !{null, metadata !501, metadata !25, metadata !502, metadata !27, metadata !503, metadata !6}
!501 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!502 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &"}
!503 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex"}
!504 = metadata !{null, metadata !18, metadata !19, metadata !410, metadata !21, metadata !105, metadata !6}
!505 = metadata !{null, metadata !18, metadata !19, metadata !506, metadata !21, metadata !105, metadata !6}
!506 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!507 = metadata !{null, metadata !18, metadata !19, metadata !218, metadata !21, metadata !305, metadata !6}
!508 = metadata !{null, metadata !18, metadata !19, metadata !509, metadata !21, metadata !95, metadata !6}
!509 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!510 = metadata !{null, metadata !268, metadata !53, metadata !511, metadata !55, metadata !512, metadata !6}
!511 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!512 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!513 = metadata !{null, metadata !18, metadata !19, metadata !514, metadata !21, metadata !95, metadata !6}
!514 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!515 = metadata !{null, metadata !18, metadata !19, metadata !516, metadata !21, metadata !95, metadata !6}
!516 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!517 = metadata !{null, metadata !18, metadata !19, metadata !518, metadata !21, metadata !22, metadata !6}
!518 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<49, 0>"}
!519 = metadata !{null, metadata !131, metadata !53, metadata !520, metadata !55, metadata !133, metadata !6}
!520 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int", metadata !"int"}
!521 = metadata !{null, metadata !18, metadata !19, metadata !522, metadata !21, metadata !136, metadata !6}
!522 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<19, false> &"}
!523 = metadata !{null, metadata !18, metadata !19, metadata !522, metadata !21, metadata !138, metadata !6}
!524 = metadata !{null, metadata !18, metadata !19, metadata !525, metadata !21, metadata !136, metadata !6}
!525 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, false> &"}
!526 = metadata !{null, metadata !18, metadata !19, metadata !525, metadata !21, metadata !95, metadata !6}
!527 = metadata !{null, metadata !8, metadata !9, metadata !528, metadata !11, metadata !156, metadata !6}
!528 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int"}
!529 = metadata !{null, metadata !131, metadata !53, metadata !530, metadata !55, metadata !133, metadata !6}
!530 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!531 = metadata !{null, metadata !18, metadata !19, metadata !532, metadata !21, metadata !136, metadata !6}
!532 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!533 = metadata !{null, metadata !18, metadata !19, metadata !534, metadata !21, metadata !136, metadata !6}
!534 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, false> &"}
!535 = metadata !{null, metadata !18, metadata !19, metadata !534, metadata !21, metadata !95, metadata !6}
!536 = metadata !{null, metadata !40, metadata !9, metadata !537, metadata !11, metadata !393, metadata !6}
!537 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!538 = metadata !{null, metadata !18, metadata !19, metadata !509, metadata !21, metadata !105, metadata !6}
!539 = metadata !{null, metadata !18, metadata !19, metadata !540, metadata !21, metadata !95, metadata !6}
!540 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<82, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!541 = metadata !{null, metadata !18, metadata !19, metadata !542, metadata !21, metadata !95, metadata !6}
!542 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<49, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!543 = metadata !{null, metadata !8, metadata !9, metadata !544, metadata !11, metadata !156, metadata !6}
!544 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<3, false>*", metadata !"int"}
!545 = metadata !{null, metadata !40, metadata !9, metadata !546, metadata !11, metadata !98, metadata !6}
!546 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<3, false> &", metadata !"int"}
!547 = metadata !{null, metadata !18, metadata !19, metadata !548, metadata !21, metadata !95, metadata !6}
!548 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<95, 27, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!549 = metadata !{null, metadata !18, metadata !19, metadata !550, metadata !21, metadata !95, metadata !6}
!550 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!551 = metadata !{null, metadata !18, metadata !19, metadata !406, metadata !21, metadata !105, metadata !6}
!552 = metadata !{null, metadata !131, metadata !53, metadata !553, metadata !55, metadata !133, metadata !6}
!553 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false>*", metadata !"int", metadata !"int"}
!554 = metadata !{null, metadata !18, metadata !19, metadata !555, metadata !21, metadata !136, metadata !6}
!555 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<95, false> &"}
!556 = metadata !{null, metadata !18, metadata !19, metadata !555, metadata !21, metadata !138, metadata !6}
!557 = metadata !{null, metadata !18, metadata !19, metadata !558, metadata !21, metadata !136, metadata !6}
!558 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<95, false> &"}
!559 = metadata !{null, metadata !131, metadata !53, metadata !560, metadata !55, metadata !133, metadata !6}
!560 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!561 = metadata !{null, metadata !268, metadata !53, metadata !562, metadata !55, metadata !563, metadata !6}
!562 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<71>", metadata !"ap_uint<24>", metadata !"ap_uint<71 + 24> &"}
!563 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"m"}
!564 = metadata !{null, metadata !18, metadata !19, metadata !565, metadata !21, metadata !136, metadata !6}
!565 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &"}
!566 = metadata !{null, metadata !18, metadata !19, metadata !565, metadata !21, metadata !95, metadata !6}
!567 = metadata !{null, metadata !131, metadata !53, metadata !568, metadata !55, metadata !133, metadata !6}
!568 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<41, false>*", metadata !"int", metadata !"int"}
!569 = metadata !{null, metadata !18, metadata !19, metadata !570, metadata !21, metadata !136, metadata !6}
!570 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<41, false> &"}
!571 = metadata !{null, metadata !18, metadata !19, metadata !570, metadata !21, metadata !138, metadata !6}
!572 = metadata !{null, metadata !18, metadata !19, metadata !565, metadata !21, metadata !105, metadata !6}
!573 = metadata !{null, metadata !40, metadata !9, metadata !574, metadata !11, metadata !98, metadata !6}
!574 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &", metadata !"int"}
!575 = metadata !{null, metadata !131, metadata !53, metadata !576, metadata !55, metadata !133, metadata !6}
!576 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<71, false>*", metadata !"int", metadata !"int"}
!577 = metadata !{null, metadata !40, metadata !9, metadata !578, metadata !11, metadata !579, metadata !6}
!578 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &", metadata !"const ap_int_base<24, false> &"}
!579 = metadata !{metadata !"kernel_arg_name", metadata !"op1", metadata !"op2"}
!580 = metadata !{null, metadata !18, metadata !19, metadata !581, metadata !21, metadata !138, metadata !6}
!581 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &"}
!582 = metadata !{null, metadata !40, metadata !9, metadata !583, metadata !11, metadata !98, metadata !6}
!583 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &", metadata !"const ap_int_base<24, false> &"}
!584 = metadata !{null, metadata !18, metadata !19, metadata !585, metadata !21, metadata !95, metadata !6}
!585 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!586 = metadata !{null, metadata !18, metadata !19, metadata !587, metadata !21, metadata !95, metadata !6}
!587 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &"}
!588 = metadata !{null, metadata !18, metadata !19, metadata !558, metadata !21, metadata !95, metadata !6}
!589 = metadata !{null, metadata !18, metadata !19, metadata !590, metadata !21, metadata !105, metadata !6}
!590 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<41> &"}
!591 = metadata !{null, metadata !40, metadata !9, metadata !592, metadata !11, metadata !593, metadata !6}
!592 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"float"}
!593 = metadata !{metadata !"kernel_arg_name", metadata !"exp", metadata !"dummy"}
!594 = metadata !{null, metadata !131, metadata !53, metadata !595, metadata !55, metadata !133, metadata !6}
!595 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<100, false>*", metadata !"int", metadata !"int"}
!596 = metadata !{null, metadata !131, metadata !53, metadata !597, metadata !55, metadata !133, metadata !6}
!597 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<9, true>*", metadata !"int", metadata !"int"}
!598 = metadata !{null, metadata !18, metadata !19, metadata !599, metadata !21, metadata !138, metadata !6}
!599 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<9, true> &"}
!600 = metadata !{null, metadata !18, metadata !19, metadata !601, metadata !21, metadata !105, metadata !6}
!601 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!602 = metadata !{null, metadata !18, metadata !19, metadata !603, metadata !21, metadata !138, metadata !6}
!603 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &"}
!604 = metadata !{null, metadata !40, metadata !9, metadata !605, metadata !11, metadata !98, metadata !6}
!605 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"int"}
!606 = metadata !{null, metadata !18, metadata !19, metadata !607, metadata !21, metadata !105, metadata !6}
!607 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<71> &"}
!608 = metadata !{null, metadata !8, metadata !9, metadata !609, metadata !11, metadata !156, metadata !6}
!609 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int"}
!610 = metadata !{null, metadata !131, metadata !53, metadata !611, metadata !55, metadata !133, metadata !6}
!611 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!612 = metadata !{null, metadata !18, metadata !19, metadata !613, metadata !21, metadata !105, metadata !6}
!613 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<8> &"}
!614 = metadata !{null, metadata !52, metadata !53, metadata !54, metadata !55, metadata !615, metadata !6}
!615 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s_out", metadata !"c_out"}
!616 = metadata !{null, metadata !268, metadata !53, metadata !617, metadata !55, metadata !615, metadata !6}
!617 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double &", metadata !"double &"}
!618 = metadata !{null, metadata !18, metadata !19, metadata !619, metadata !21, metadata !95, metadata !6}
!619 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<78> &"}
!620 = metadata !{null, metadata !18, metadata !19, metadata !621, metadata !21, metadata !622, metadata !6}
!621 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>"}
!622 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!623 = metadata !{null, metadata !40, metadata !9, metadata !624, metadata !11, metadata !98, metadata !6}
!624 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"int"}
!625 = metadata !{null, metadata !18, metadata !19, metadata !626, metadata !21, metadata !136, metadata !6}
!626 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!627 = metadata !{null, metadata !18, metadata !19, metadata !628, metadata !21, metadata !136, metadata !6}
!628 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &"}
!629 = metadata !{null, metadata !18, metadata !19, metadata !628, metadata !21, metadata !95, metadata !6}
!630 = metadata !{null, metadata !18, metadata !19, metadata !631, metadata !21, metadata !95, metadata !6}
!631 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<78, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!632 = metadata !{null, metadata !18, metadata !19, metadata !633, metadata !21, metadata !95, metadata !6}
!633 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!634 = metadata !{null, metadata !131, metadata !53, metadata !635, metadata !55, metadata !133, metadata !6}
!635 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<78, false>*", metadata !"int", metadata !"int"}
!636 = metadata !{null, metadata !18, metadata !19, metadata !637, metadata !21, metadata !136, metadata !6}
!637 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<78, false> &"}
!638 = metadata !{null, metadata !18, metadata !19, metadata !637, metadata !21, metadata !138, metadata !6}
!639 = metadata !{null, metadata !131, metadata !53, metadata !640, metadata !55, metadata !133, metadata !6}
!640 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!641 = metadata !{null, metadata !40, metadata !9, metadata !642, metadata !11, metadata !98, metadata !6}
!642 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<78, true> &"}
!643 = metadata !{null, metadata !18, metadata !19, metadata !644, metadata !21, metadata !95, metadata !6}
!644 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &"}
!645 = metadata !{null, metadata !18, metadata !19, metadata !646, metadata !21, metadata !95, metadata !6}
!646 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<80, true> &"}
!647 = metadata !{null, metadata !40, metadata !9, metadata !648, metadata !11, metadata !98, metadata !6}
!648 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &", metadata !"int"}
!649 = metadata !{null, metadata !18, metadata !19, metadata !650, metadata !21, metadata !95, metadata !6}
!650 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!651 = metadata !{null, metadata !18, metadata !19, metadata !650, metadata !21, metadata !136, metadata !6}
!652 = metadata !{null, metadata !268, metadata !53, metadata !653, metadata !55, metadata !654, metadata !6}
!653 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &"}
!654 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"z"}
!655 = metadata !{null, metadata !268, metadata !53, metadata !656, metadata !55, metadata !657, metadata !6}
!656 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!657 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"add"}
!658 = metadata !{null, metadata !18, metadata !19, metadata !659, metadata !21, metadata !105, metadata !6}
!659 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!660 = metadata !{null, metadata !18, metadata !19, metadata !659, metadata !21, metadata !95, metadata !6}
!661 = metadata !{null, metadata !18, metadata !19, metadata !662, metadata !21, metadata !95, metadata !6}
!662 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!663 = metadata !{null, metadata !18, metadata !19, metadata !664, metadata !21, metadata !95, metadata !6}
!664 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<80, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!665 = metadata !{null, metadata !18, metadata !19, metadata !666, metadata !21, metadata !95, metadata !6}
!666 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<80, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!667 = metadata !{null, metadata !18, metadata !19, metadata !668, metadata !21, metadata !95, metadata !6}
!668 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!669 = metadata !{null, metadata !18, metadata !19, metadata !670, metadata !21, metadata !95, metadata !6}
!670 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!671 = metadata !{null, metadata !18, metadata !19, metadata !672, metadata !21, metadata !95, metadata !6}
!672 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!673 = metadata !{null, metadata !268, metadata !53, metadata !674, metadata !55, metadata !657, metadata !6}
!674 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"_Bool"}
!675 = metadata !{null, metadata !18, metadata !19, metadata !662, metadata !21, metadata !105, metadata !6}
!676 = metadata !{null, metadata !268, metadata !53, metadata !677, metadata !55, metadata !657, metadata !6}
!677 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!678 = metadata !{null, metadata !8, metadata !9, metadata !679, metadata !11, metadata !156, metadata !6}
!679 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!680 = metadata !{null, metadata !18, metadata !19, metadata !681, metadata !21, metadata !95, metadata !6}
!681 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!682 = metadata !{null, metadata !18, metadata !19, metadata !681, metadata !21, metadata !136, metadata !6}
!683 = metadata !{null, metadata !18, metadata !19, metadata !644, metadata !21, metadata !136, metadata !6}
!684 = metadata !{null, metadata !18, metadata !19, metadata !685, metadata !21, metadata !95, metadata !6}
!685 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!686 = metadata !{null, metadata !40, metadata !9, metadata !687, metadata !11, metadata !98, metadata !6}
!687 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &", metadata !"int"}
!688 = metadata !{null, metadata !40, metadata !9, metadata !689, metadata !11, metadata !98, metadata !6}
!689 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!690 = metadata !{null, metadata !18, metadata !19, metadata !691, metadata !21, metadata !136, metadata !6}
!691 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<100, false> &"}
!692 = metadata !{null, metadata !18, metadata !19, metadata !691, metadata !21, metadata !95, metadata !6}
!693 = metadata !{null, metadata !131, metadata !53, metadata !694, metadata !55, metadata !133, metadata !6}
!694 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!695 = metadata !{null, metadata !18, metadata !19, metadata !619, metadata !21, metadata !105, metadata !6}
!696 = metadata !{null, metadata !268, metadata !53, metadata !697, metadata !55, metadata !698, metadata !6}
!697 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"ap_uint<3> &", metadata !"ap_uint<78> &"}
!698 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout"}
!699 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !622, metadata !6}
!700 = metadata !{null, metadata !40, metadata !9, metadata !701, metadata !11, metadata !98, metadata !6}
!701 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<52, false> &"}
!702 = metadata !{null, metadata !131, metadata !53, metadata !703, metadata !55, metadata !133, metadata !6}
!703 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<79, false>*", metadata !"int", metadata !"int"}
!704 = metadata !{null, metadata !18, metadata !19, metadata !705, metadata !21, metadata !138, metadata !6}
!705 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<79, false> &"}
!706 = metadata !{null, metadata !40, metadata !9, metadata !707, metadata !11, metadata !98, metadata !6}
!707 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"const ap_int_base<79, false> &"}
!708 = metadata !{null, metadata !18, metadata !19, metadata !709, metadata !21, metadata !95, metadata !6}
!709 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!710 = metadata !{null, metadata !131, metadata !53, metadata !711, metadata !55, metadata !133, metadata !6}
!711 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<156, false>*", metadata !"int", metadata !"int"}
!712 = metadata !{null, metadata !18, metadata !19, metadata !713, metadata !21, metadata !138, metadata !6}
!713 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<156, false> &"}
!714 = metadata !{null, metadata !268, metadata !53, metadata !715, metadata !55, metadata !563, metadata !6}
!715 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>", metadata !"ap_uint<78>", metadata !"ap_uint<78 + 78> &"}
!716 = metadata !{null, metadata !18, metadata !19, metadata !717, metadata !21, metadata !95, metadata !6}
!717 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<188> &"}
!718 = metadata !{null, metadata !18, metadata !19, metadata !719, metadata !21, metadata !105, metadata !6}
!719 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<156> &"}
!720 = metadata !{null, metadata !268, metadata !53, metadata !721, metadata !55, metadata !563, metadata !6}
!721 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<94>", metadata !"ap_uint<94>", metadata !"ap_uint<2 * 94> &"}
!722 = metadata !{null, metadata !131, metadata !53, metadata !723, metadata !55, metadata !133, metadata !6}
!723 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, false>*", metadata !"int", metadata !"int"}
!724 = metadata !{null, metadata !18, metadata !19, metadata !725, metadata !21, metadata !136, metadata !6}
!725 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<48, false> &"}
!726 = metadata !{null, metadata !18, metadata !19, metadata !725, metadata !21, metadata !138, metadata !6}
!727 = metadata !{null, metadata !18, metadata !19, metadata !728, metadata !21, metadata !136, metadata !6}
!728 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!729 = metadata !{null, metadata !18, metadata !19, metadata !728, metadata !21, metadata !95, metadata !6}
!730 = metadata !{null, metadata !131, metadata !53, metadata !731, metadata !55, metadata !133, metadata !6}
!731 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<188, false>*", metadata !"int", metadata !"int"}
!732 = metadata !{null, metadata !18, metadata !19, metadata !733, metadata !21, metadata !105, metadata !6}
!733 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, false> &"}
!734 = metadata !{null, metadata !40, metadata !9, metadata !735, metadata !11, metadata !98, metadata !6}
!735 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &", metadata !"int"}
!736 = metadata !{null, metadata !18, metadata !19, metadata !737, metadata !21, metadata !95, metadata !6}
!737 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<34> &"}
!738 = metadata !{null, metadata !18, metadata !19, metadata !739, metadata !21, metadata !105, metadata !6}
!739 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<48> &"}
!740 = metadata !{null, metadata !131, metadata !53, metadata !741, metadata !55, metadata !133, metadata !6}
!741 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<94, false>*", metadata !"int", metadata !"int"}
!742 = metadata !{null, metadata !40, metadata !9, metadata !743, metadata !11, metadata !744, metadata !6}
!743 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &", metadata !"const ap_range_ref<94, false> &"}
!744 = metadata !{metadata !"kernel_arg_name", metadata !"lhs", metadata !"rhs"}
!745 = metadata !{null, metadata !18, metadata !19, metadata !746, metadata !21, metadata !138, metadata !6}
!746 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &"}
!747 = metadata !{null, metadata !40, metadata !9, metadata !748, metadata !11, metadata !98, metadata !6}
!748 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &", metadata !"const ap_int_base<94, false> &"}
!749 = metadata !{null, metadata !18, metadata !19, metadata !750, metadata !21, metadata !95, metadata !6}
!750 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &"}
!751 = metadata !{null, metadata !18, metadata !19, metadata !752, metadata !21, metadata !95, metadata !6}
!752 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<188, false> &"}
!753 = metadata !{null, metadata !18, metadata !19, metadata !737, metadata !21, metadata !105, metadata !6}
!754 = metadata !{null, metadata !18, metadata !19, metadata !755, metadata !21, metadata !95, metadata !6}
!755 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<78> &"}
!756 = metadata !{null, metadata !131, metadata !53, metadata !757, metadata !55, metadata !133, metadata !6}
!757 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<56, false>*", metadata !"int", metadata !"int"}
!758 = metadata !{null, metadata !18, metadata !19, metadata !759, metadata !21, metadata !138, metadata !6}
!759 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<56, false> &"}
!760 = metadata !{null, metadata !131, metadata !53, metadata !761, metadata !55, metadata !133, metadata !6}
!761 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<178, false>*", metadata !"int", metadata !"int"}
!762 = metadata !{null, metadata !18, metadata !19, metadata !763, metadata !21, metadata !138, metadata !6}
!763 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<178, false> &"}
!764 = metadata !{null, metadata !40, metadata !9, metadata !765, metadata !11, metadata !98, metadata !6}
!765 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &", metadata !"int"}
!766 = metadata !{null, metadata !18, metadata !19, metadata !767, metadata !21, metadata !95, metadata !6}
!767 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &"}
!768 = metadata !{null, metadata !18, metadata !19, metadata !769, metadata !21, metadata !105, metadata !6}
!769 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<56> &"}
!770 = metadata !{null, metadata !268, metadata !53, metadata !771, metadata !55, metadata !563, metadata !6}
!771 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<125>", metadata !"ap_uint<53>", metadata !"ap_uint<125 + 53> &"}
!772 = metadata !{null, metadata !18, metadata !19, metadata !773, metadata !21, metadata !136, metadata !6}
!773 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &"}
!774 = metadata !{null, metadata !18, metadata !19, metadata !773, metadata !21, metadata !95, metadata !6}
!775 = metadata !{null, metadata !131, metadata !53, metadata !776, metadata !55, metadata !133, metadata !6}
!776 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<70, false>*", metadata !"int", metadata !"int"}
!777 = metadata !{null, metadata !18, metadata !19, metadata !778, metadata !21, metadata !136, metadata !6}
!778 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<70, false> &"}
!779 = metadata !{null, metadata !18, metadata !19, metadata !778, metadata !21, metadata !138, metadata !6}
!780 = metadata !{null, metadata !18, metadata !19, metadata !773, metadata !21, metadata !105, metadata !6}
!781 = metadata !{null, metadata !40, metadata !9, metadata !782, metadata !11, metadata !98, metadata !6}
!782 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &", metadata !"int"}
!783 = metadata !{null, metadata !131, metadata !53, metadata !784, metadata !55, metadata !133, metadata !6}
!784 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<125, false>*", metadata !"int", metadata !"int"}
!785 = metadata !{null, metadata !40, metadata !9, metadata !786, metadata !11, metadata !579, metadata !6}
!786 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &", metadata !"const ap_int_base<53, false> &"}
!787 = metadata !{null, metadata !18, metadata !19, metadata !788, metadata !21, metadata !138, metadata !6}
!788 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &"}
!789 = metadata !{null, metadata !40, metadata !9, metadata !790, metadata !11, metadata !98, metadata !6}
!790 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &", metadata !"const ap_int_base<53, false> &"}
!791 = metadata !{null, metadata !18, metadata !19, metadata !792, metadata !21, metadata !95, metadata !6}
!792 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!793 = metadata !{null, metadata !18, metadata !19, metadata !794, metadata !21, metadata !95, metadata !6}
!794 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &"}
!795 = metadata !{null, metadata !18, metadata !19, metadata !796, metadata !21, metadata !105, metadata !6}
!796 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<70> &"}
!797 = metadata !{null, metadata !40, metadata !9, metadata !798, metadata !11, metadata !593, metadata !6}
!798 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"double"}
!799 = metadata !{null, metadata !40, metadata !9, metadata !800, metadata !11, metadata !98, metadata !6}
!800 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"int"}
!801 = metadata !{null, metadata !131, metadata !53, metadata !802, metadata !55, metadata !133, metadata !6}
!802 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<256, false>*", metadata !"int", metadata !"int"}
!803 = metadata !{null, metadata !18, metadata !19, metadata !804, metadata !21, metadata !138, metadata !6}
!804 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<12, true> &"}
!805 = metadata !{null, metadata !18, metadata !19, metadata !806, metadata !21, metadata !105, metadata !6}
!806 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<7, false> &"}
!807 = metadata !{null, metadata !18, metadata !19, metadata !808, metadata !21, metadata !138, metadata !6}
!808 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<256, false> &"}
!809 = metadata !{null, metadata !131, metadata !53, metadata !810, metadata !55, metadata !133, metadata !6}
!810 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<12, true>*", metadata !"int", metadata !"int"}
!811 = metadata !{null, metadata !18, metadata !19, metadata !812, metadata !21, metadata !105, metadata !6}
!812 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<125> &"}
!813 = metadata !{null, metadata !40, metadata !9, metadata !814, metadata !11, metadata !98, metadata !6}
!814 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!815 = metadata !{null, metadata !40, metadata !9, metadata !816, metadata !11, metadata !98, metadata !6}
!816 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"const ap_int_base<52, false> &"}
!817 = metadata !{null, metadata !18, metadata !19, metadata !818, metadata !21, metadata !105, metadata !6}
!818 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<53> &"}
!819 = metadata !{null, metadata !18, metadata !19, metadata !820, metadata !21, metadata !138, metadata !6}
!820 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<400, false> &"}
!821 = metadata !{null, metadata !18, metadata !19, metadata !822, metadata !21, metadata !105, metadata !6}
!822 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<79> &"}
!823 = metadata !{null, metadata !131, metadata !53, metadata !824, metadata !55, metadata !133, metadata !6}
!824 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<400, false>*", metadata !"int", metadata !"int"}
!825 = metadata !{null, metadata !18, metadata !19, metadata !755, metadata !21, metadata !105, metadata !6}
!826 = metadata !{null, metadata !268, metadata !53, metadata !827, metadata !55, metadata !615, metadata !6}
!827 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &", metadata !"float &"}
!828 = metadata !{null, metadata !18, metadata !19, metadata !829, metadata !21, metadata !830, metadata !6}
!829 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t"}
!830 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!831 = metadata !{null, metadata !40, metadata !9, metadata !832, metadata !11, metadata !98, metadata !6}
!832 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, false> &"}
!833 = metadata !{null, metadata !40, metadata !9, metadata !605, metadata !11, metadata !108, metadata !6}
!834 = metadata !{null, metadata !40, metadata !9, metadata !835, metadata !11, metadata !98, metadata !6}
!835 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"const ap_int_base<32, true> &"}
!836 = metadata !{null, metadata !18, metadata !19, metadata !837, metadata !21, metadata !95, metadata !6}
!837 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &"}
!838 = metadata !{null, metadata !18, metadata !19, metadata !218, metadata !21, metadata !839, metadata !6}
!839 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!840 = metadata !{null, metadata !40, metadata !9, metadata !841, metadata !11, metadata !98, metadata !6}
!841 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true> &", metadata !"int"}
!842 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !118, metadata !6}
!843 = metadata !{null, metadata !268, metadata !53, metadata !844, metadata !55, metadata !654, metadata !6}
!844 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &"}
!845 = metadata !{null, metadata !268, metadata !53, metadata !846, metadata !55, metadata !657, metadata !6}
!846 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!847 = metadata !{null, metadata !18, metadata !19, metadata !848, metadata !21, metadata !105, metadata !6}
!848 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!849 = metadata !{null, metadata !18, metadata !19, metadata !848, metadata !21, metadata !95, metadata !6}
!850 = metadata !{null, metadata !18, metadata !19, metadata !851, metadata !21, metadata !95, metadata !6}
!851 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!852 = metadata !{null, metadata !18, metadata !19, metadata !853, metadata !21, metadata !95, metadata !6}
!853 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<35, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!854 = metadata !{null, metadata !18, metadata !19, metadata !855, metadata !21, metadata !95, metadata !6}
!855 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!856 = metadata !{null, metadata !18, metadata !19, metadata !857, metadata !21, metadata !95, metadata !6}
!857 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 4, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!858 = metadata !{null, metadata !268, metadata !53, metadata !859, metadata !55, metadata !657, metadata !6}
!859 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"_Bool"}
!860 = metadata !{null, metadata !18, metadata !19, metadata !861, metadata !21, metadata !95, metadata !6}
!861 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<34, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!862 = metadata !{null, metadata !8, metadata !9, metadata !863, metadata !11, metadata !156, metadata !6}
!863 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!864 = metadata !{null, metadata !18, metadata !19, metadata !865, metadata !21, metadata !95, metadata !6}
!865 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!866 = metadata !{null, metadata !18, metadata !19, metadata !865, metadata !21, metadata !136, metadata !6}
!867 = metadata !{null, metadata !18, metadata !19, metadata !868, metadata !21, metadata !95, metadata !6}
!868 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<35, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!869 = metadata !{null, metadata !18, metadata !19, metadata !870, metadata !21, metadata !95, metadata !6}
!870 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!871 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !85, metadata !6}
!872 = metadata !{null, metadata !268, metadata !53, metadata !873, metadata !55, metadata !874, metadata !6}
!873 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<7 + 1> &", metadata !"ap_ufixed<fp_struct<float>::SIG_BITS + 12, 0> &"}
!874 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"k", metadata !"t_out"}
!875 = metadata !{null, metadata !18, metadata !19, metadata !876, metadata !21, metadata !95, metadata !6}
!876 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<70, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!877 = metadata !{null, metadata !18, metadata !19, metadata !878, metadata !21, metadata !95, metadata !6}
!878 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!879 = metadata !{null, metadata !268, metadata !53, metadata !880, metadata !55, metadata !563, metadata !6}
!880 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35 + 35, 0 + 0> &"}
!881 = metadata !{null, metadata !131, metadata !53, metadata !882, metadata !55, metadata !133, metadata !6}
!882 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!883 = metadata !{null, metadata !268, metadata !53, metadata !884, metadata !55, metadata !563, metadata !6}
!884 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<35>", metadata !"ap_uint<35>", metadata !"ap_uint<35 + 35> &"}
!885 = metadata !{null, metadata !18, metadata !19, metadata !174, metadata !21, metadata !105, metadata !6}
!886 = metadata !{null, metadata !40, metadata !9, metadata !887, metadata !11, metadata !579, metadata !6}
!887 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &", metadata !"const ap_int_base<35, false> &"}
!888 = metadata !{null, metadata !18, metadata !19, metadata !889, metadata !21, metadata !138, metadata !6}
!889 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &"}
!890 = metadata !{null, metadata !40, metadata !9, metadata !891, metadata !11, metadata !98, metadata !6}
!891 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &", metadata !"const ap_int_base<35, false> &"}
!892 = metadata !{null, metadata !18, metadata !19, metadata !893, metadata !21, metadata !95, metadata !6}
!893 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &"}
!894 = metadata !{null, metadata !131, metadata !53, metadata !895, metadata !55, metadata !133, metadata !6}
!895 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!896 = metadata !{null, metadata !18, metadata !19, metadata !897, metadata !21, metadata !136, metadata !6}
!897 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!898 = metadata !{null, metadata !18, metadata !19, metadata !893, metadata !21, metadata !136, metadata !6}
!899 = metadata !{null, metadata !131, metadata !53, metadata !900, metadata !55, metadata !133, metadata !6}
!900 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<35, false>*", metadata !"int", metadata !"int"}
!901 = metadata !{null, metadata !18, metadata !19, metadata !902, metadata !21, metadata !95, metadata !6}
!902 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<77, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!903 = metadata !{null, metadata !18, metadata !19, metadata !904, metadata !21, metadata !95, metadata !6}
!904 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!905 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !136, metadata !6}
!906 = metadata !{null, metadata !268, metadata !53, metadata !907, metadata !55, metadata !563, metadata !6}
!907 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<42, 7>", metadata !"ap_ufixed<35, 1>", metadata !"ap_ufixed<42 + 35, 7 + 1> &"}
!908 = metadata !{null, metadata !131, metadata !53, metadata !909, metadata !55, metadata !133, metadata !6}
!909 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<77, false>*", metadata !"int", metadata !"int"}
!910 = metadata !{null, metadata !18, metadata !19, metadata !911, metadata !21, metadata !136, metadata !6}
!911 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<77, false> &"}
!912 = metadata !{null, metadata !18, metadata !19, metadata !911, metadata !21, metadata !138, metadata !6}
!913 = metadata !{null, metadata !18, metadata !19, metadata !914, metadata !21, metadata !136, metadata !6}
!914 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<77, false> &"}
!915 = metadata !{null, metadata !131, metadata !53, metadata !916, metadata !55, metadata !133, metadata !6}
!916 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!917 = metadata !{null, metadata !268, metadata !53, metadata !918, metadata !55, metadata !563, metadata !6}
!918 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<42>", metadata !"ap_uint<35>", metadata !"ap_uint<42 + 35> &"}
!919 = metadata !{null, metadata !40, metadata !9, metadata !920, metadata !11, metadata !579, metadata !6}
!920 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &", metadata !"const ap_int_base<35, false> &"}
!921 = metadata !{null, metadata !18, metadata !19, metadata !922, metadata !21, metadata !138, metadata !6}
!922 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &"}
!923 = metadata !{null, metadata !40, metadata !9, metadata !924, metadata !11, metadata !98, metadata !6}
!924 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &", metadata !"const ap_int_base<35, false> &"}
!925 = metadata !{null, metadata !18, metadata !19, metadata !926, metadata !21, metadata !95, metadata !6}
!926 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &"}
!927 = metadata !{null, metadata !18, metadata !19, metadata !914, metadata !21, metadata !95, metadata !6}
!928 = metadata !{null, metadata !131, metadata !53, metadata !929, metadata !55, metadata !133, metadata !6}
!929 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!930 = metadata !{null, metadata !18, metadata !19, metadata !931, metadata !21, metadata !136, metadata !6}
!931 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!932 = metadata !{null, metadata !18, metadata !19, metadata !933, metadata !21, metadata !136, metadata !6}
!933 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!934 = metadata !{null, metadata !18, metadata !19, metadata !926, metadata !21, metadata !136, metadata !6}
!935 = metadata !{null, metadata !131, metadata !53, metadata !936, metadata !55, metadata !133, metadata !6}
!936 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<42, false>*", metadata !"int", metadata !"int"}
!937 = metadata !{null, metadata !18, metadata !19, metadata !938, metadata !21, metadata !95, metadata !6}
!938 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!939 = metadata !{null, metadata !18, metadata !19, metadata !940, metadata !21, metadata !95, metadata !6}
!940 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<42, 7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!941 = metadata !{null, metadata !8, metadata !9, metadata !942, metadata !11, metadata !156, metadata !6}
!942 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!943 = metadata !{null, metadata !131, metadata !53, metadata !944, metadata !55, metadata !133, metadata !6}
!944 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!945 = metadata !{null, metadata !40, metadata !9, metadata !41, metadata !11, metadata !946, metadata !6}
!946 = metadata !{metadata !"kernel_arg_name", metadata !"y_in", metadata !"x_in"}
!947 = metadata !{null, metadata !268, metadata !53, metadata !948, metadata !55, metadata !654, metadata !6}
!948 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &"}
!949 = metadata !{null, metadata !268, metadata !53, metadata !950, metadata !55, metadata !657, metadata !6}
!950 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!951 = metadata !{null, metadata !18, metadata !19, metadata !952, metadata !21, metadata !105, metadata !6}
!952 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!953 = metadata !{null, metadata !18, metadata !19, metadata !952, metadata !21, metadata !95, metadata !6}
!954 = metadata !{null, metadata !18, metadata !19, metadata !955, metadata !21, metadata !95, metadata !6}
!955 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!956 = metadata !{null, metadata !18, metadata !19, metadata !957, metadata !21, metadata !95, metadata !6}
!957 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!958 = metadata !{null, metadata !18, metadata !19, metadata !959, metadata !21, metadata !95, metadata !6}
!959 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!960 = metadata !{null, metadata !18, metadata !19, metadata !961, metadata !21, metadata !95, metadata !6}
!961 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!962 = metadata !{null, metadata !268, metadata !53, metadata !963, metadata !55, metadata !657, metadata !6}
!963 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"_Bool"}
!964 = metadata !{null, metadata !18, metadata !19, metadata !955, metadata !21, metadata !105, metadata !6}
!965 = metadata !{null, metadata !268, metadata !53, metadata !966, metadata !55, metadata !657, metadata !6}
!966 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!967 = metadata !{null, metadata !18, metadata !19, metadata !272, metadata !21, metadata !136, metadata !6}
!968 = metadata !{null, metadata !8, metadata !9, metadata !969, metadata !11, metadata !156, metadata !6}
!969 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!970 = metadata !{null, metadata !131, metadata !53, metadata !971, metadata !55, metadata !133, metadata !6}
!971 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!972 = metadata !{null, metadata !18, metadata !19, metadata !973, metadata !21, metadata !95, metadata !6}
!973 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!974 = metadata !{null, metadata !40, metadata !9, metadata !975, metadata !11, metadata !98, metadata !6}
!975 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!976 = metadata !{null, metadata !18, metadata !19, metadata !148, metadata !21, metadata !105, metadata !6}
!977 = metadata !{null, metadata !40, metadata !9, metadata !48, metadata !11, metadata !946, metadata !6}
!978 = metadata !{null, metadata !18, metadata !19, metadata !158, metadata !21, metadata !839, metadata !6}
!979 = metadata !{null, metadata !131, metadata !53, metadata !980, metadata !55, metadata !133, metadata !6}
!980 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<88, true>*", metadata !"int", metadata !"int"}
!981 = metadata !{null, metadata !18, metadata !19, metadata !982, metadata !21, metadata !136, metadata !6}
!982 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<88, true> &"}
!983 = metadata !{null, metadata !18, metadata !19, metadata !982, metadata !21, metadata !138, metadata !6}
!984 = metadata !{null, metadata !18, metadata !19, metadata !985, metadata !21, metadata !136, metadata !6}
!985 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<88, false> &"}
!986 = metadata !{null, metadata !18, metadata !19, metadata !985, metadata !21, metadata !95, metadata !6}
!987 = metadata !{null, metadata !268, metadata !53, metadata !988, metadata !55, metadata !654, metadata !6}
!988 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &"}
!989 = metadata !{null, metadata !268, metadata !53, metadata !990, metadata !55, metadata !657, metadata !6}
!990 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!991 = metadata !{null, metadata !18, metadata !19, metadata !992, metadata !21, metadata !105, metadata !6}
!992 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!993 = metadata !{null, metadata !18, metadata !19, metadata !992, metadata !21, metadata !95, metadata !6}
!994 = metadata !{null, metadata !18, metadata !19, metadata !995, metadata !21, metadata !95, metadata !6}
!995 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!996 = metadata !{null, metadata !18, metadata !19, metadata !997, metadata !21, metadata !95, metadata !6}
!997 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<88, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!998 = metadata !{null, metadata !18, metadata !19, metadata !999, metadata !21, metadata !95, metadata !6}
!999 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<88, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1000 = metadata !{null, metadata !18, metadata !19, metadata !1001, metadata !21, metadata !95, metadata !6}
!1001 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1002 = metadata !{null, metadata !268, metadata !53, metadata !1003, metadata !55, metadata !657, metadata !6}
!1003 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"_Bool"}
!1004 = metadata !{null, metadata !18, metadata !19, metadata !995, metadata !21, metadata !105, metadata !6}
!1005 = metadata !{null, metadata !268, metadata !53, metadata !1006, metadata !55, metadata !657, metadata !6}
!1006 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!1007 = metadata !{null, metadata !8, metadata !9, metadata !1008, metadata !11, metadata !156, metadata !6}
!1008 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!1009 = metadata !{null, metadata !131, metadata !53, metadata !1010, metadata !55, metadata !133, metadata !6}
!1010 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1011 = metadata !{null, metadata !18, metadata !19, metadata !1012, metadata !21, metadata !95, metadata !6}
!1012 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1013 = metadata !{null, metadata !40, metadata !9, metadata !1014, metadata !11, metadata !98, metadata !6}
!1014 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<11, false> &"}
!1015 = metadata !{null, metadata !18, metadata !19, metadata !114, metadata !21, metadata !105, metadata !6}
!1016 = metadata !{null, metadata !18, metadata !19, metadata !200, metadata !21, metadata !105, metadata !6}
!1017 = metadata !{null, metadata !18, metadata !19, metadata !1018, metadata !21, metadata !830, metadata !6}
!1018 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t"}
!1019 = metadata !{null, metadata !40, metadata !9, metadata !1020, metadata !11, metadata !1021, metadata !6}
!1020 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &"}
!1021 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"t_out"}
!1022 = metadata !{null, metadata !18, metadata !19, metadata !1023, metadata !21, metadata !95, metadata !6}
!1023 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1024 = metadata !{null, metadata !18, metadata !19, metadata !1025, metadata !21, metadata !95, metadata !6}
!1025 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1026 = metadata !{null, metadata !18, metadata !19, metadata !1027, metadata !21, metadata !622, metadata !6}
!1027 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<40, 3>"}
!1028 = metadata !{null, metadata !18, metadata !19, metadata !1029, metadata !21, metadata !622, metadata !6}
!1029 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<40>"}
!1030 = metadata !{null, metadata !40, metadata !9, metadata !1031, metadata !11, metadata !98, metadata !6}
!1031 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"int"}
!1032 = metadata !{null, metadata !18, metadata !19, metadata !1033, metadata !21, metadata !136, metadata !6}
!1033 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1034 = metadata !{null, metadata !18, metadata !19, metadata !1035, metadata !21, metadata !136, metadata !6}
!1035 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!1036 = metadata !{null, metadata !18, metadata !19, metadata !1035, metadata !21, metadata !95, metadata !6}
!1037 = metadata !{null, metadata !18, metadata !19, metadata !1038, metadata !21, metadata !95, metadata !6}
!1038 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1039 = metadata !{null, metadata !18, metadata !19, metadata !1040, metadata !21, metadata !136, metadata !6}
!1040 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!1041 = metadata !{null, metadata !18, metadata !19, metadata !1040, metadata !21, metadata !138, metadata !6}
!1042 = metadata !{null, metadata !131, metadata !53, metadata !1043, metadata !55, metadata !133, metadata !6}
!1043 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1044 = metadata !{null, metadata !131, metadata !53, metadata !1045, metadata !55, metadata !133, metadata !6}
!1045 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!1046 = metadata !{null, metadata !18, metadata !19, metadata !1047, metadata !21, metadata !95, metadata !6}
!1047 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1048 = metadata !{null, metadata !18, metadata !19, metadata !1049, metadata !21, metadata !95, metadata !6}
!1049 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1050 = metadata !{null, metadata !18, metadata !19, metadata !1051, metadata !21, metadata !95, metadata !6}
!1051 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1052 = metadata !{null, metadata !268, metadata !53, metadata !1053, metadata !55, metadata !654, metadata !6}
!1053 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &"}
!1054 = metadata !{null, metadata !268, metadata !53, metadata !1055, metadata !55, metadata !657, metadata !6}
!1055 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!1056 = metadata !{null, metadata !18, metadata !19, metadata !1057, metadata !21, metadata !105, metadata !6}
!1057 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1058 = metadata !{null, metadata !18, metadata !19, metadata !1057, metadata !21, metadata !95, metadata !6}
!1059 = metadata !{null, metadata !18, metadata !19, metadata !1060, metadata !21, metadata !95, metadata !6}
!1060 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1061 = metadata !{null, metadata !18, metadata !19, metadata !1062, metadata !21, metadata !95, metadata !6}
!1062 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1063 = metadata !{null, metadata !18, metadata !19, metadata !1064, metadata !21, metadata !95, metadata !6}
!1064 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1065 = metadata !{null, metadata !268, metadata !53, metadata !1066, metadata !55, metadata !657, metadata !6}
!1066 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"_Bool"}
!1067 = metadata !{null, metadata !18, metadata !19, metadata !1025, metadata !21, metadata !105, metadata !6}
!1068 = metadata !{null, metadata !268, metadata !53, metadata !1069, metadata !55, metadata !657, metadata !6}
!1069 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!1070 = metadata !{null, metadata !8, metadata !9, metadata !1071, metadata !11, metadata !156, metadata !6}
!1071 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!1072 = metadata !{null, metadata !131, metadata !53, metadata !1073, metadata !55, metadata !133, metadata !6}
!1073 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1074 = metadata !{null, metadata !18, metadata !19, metadata !1075, metadata !21, metadata !138, metadata !6}
!1075 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<66, false> &"}
!1076 = metadata !{null, metadata !18, metadata !19, metadata !1077, metadata !21, metadata !105, metadata !6}
!1077 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!1078 = metadata !{null, metadata !40, metadata !9, metadata !1079, metadata !11, metadata !98, metadata !6}
!1079 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &", metadata !"int"}
!1080 = metadata !{null, metadata !18, metadata !19, metadata !1081, metadata !21, metadata !95, metadata !6}
!1081 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &"}
!1082 = metadata !{null, metadata !18, metadata !19, metadata !585, metadata !21, metadata !136, metadata !6}
!1083 = metadata !{null, metadata !131, metadata !53, metadata !1084, metadata !55, metadata !133, metadata !6}
!1084 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<66, false>*", metadata !"int", metadata !"int"}
!1085 = metadata !{null, metadata !18, metadata !19, metadata !1086, metadata !21, metadata !105, metadata !6}
!1086 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<66> &"}
!1087 = metadata !{null, metadata !40, metadata !9, metadata !1088, metadata !11, metadata !98, metadata !6}
!1088 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"int"}
!1089 = metadata !{null, metadata !40, metadata !9, metadata !1090, metadata !11, metadata !98, metadata !6}
!1090 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"const ap_int_base<23, false> &"}
!1091 = metadata !{null, metadata !40, metadata !9, metadata !1092, metadata !11, metadata !393, metadata !6}
!1092 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"const ap_int_base<8, false> &"}
!1093 = metadata !{null, metadata !40, metadata !9, metadata !1094, metadata !11, metadata !98, metadata !6}
!1094 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<8, false> &"}
!1095 = metadata !{null, metadata !268, metadata !53, metadata !1096, metadata !55, metadata !1097, metadata !6}
!1096 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"_Bool"}
!1097 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"do_cos", metadata !"do_pi"}
!1098 = metadata !{null, metadata !18, metadata !19, metadata !1099, metadata !21, metadata !95, metadata !6}
!1099 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1100 = metadata !{null, metadata !18, metadata !19, metadata !1101, metadata !21, metadata !95, metadata !6}
!1101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1102 = metadata !{null, metadata !40, metadata !9, metadata !1103, metadata !11, metadata !98, metadata !6}
!1103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!1104 = metadata !{null, metadata !18, metadata !19, metadata !1105, metadata !21, metadata !95, metadata !6}
!1105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1106 = metadata !{null, metadata !18, metadata !19, metadata !1107, metadata !21, metadata !95, metadata !6}
!1107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1108 = metadata !{null, metadata !8, metadata !9, metadata !1109, metadata !11, metadata !156, metadata !6}
!1109 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int"}
!1110 = metadata !{null, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !6}
!1111 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!1112 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!1113 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &", metadata !"int &"}
!1114 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!1115 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex", metadata !"exactly_pi_over_2"}
!1116 = metadata !{null, metadata !40, metadata !9, metadata !1117, metadata !11, metadata !108, metadata !6}
!1117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!1118 = metadata !{null, metadata !40, metadata !9, metadata !1119, metadata !11, metadata !98, metadata !6}
!1119 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false> &", metadata !"int"}
!1120 = metadata !{null, metadata !18, metadata !19, metadata !1121, metadata !21, metadata !95, metadata !6}
!1121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!1122 = metadata !{null, metadata !18, metadata !19, metadata !1123, metadata !21, metadata !105, metadata !6}
!1123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<95> &"}
!1124 = metadata !{null, metadata !268, metadata !53, metadata !1125, metadata !55, metadata !270, metadata !6}
!1125 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!1126 = metadata !{null, metadata !268, metadata !53, metadata !1127, metadata !55, metadata !270, metadata !6}
!1127 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1128 = metadata !{null, metadata !268, metadata !53, metadata !1129, metadata !55, metadata !270, metadata !6}
!1129 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1130 = metadata !{null, metadata !40, metadata !9, metadata !1131, metadata !11, metadata !108, metadata !6}
!1131 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1132 = metadata !{null, metadata !18, metadata !19, metadata !1133, metadata !21, metadata !95, metadata !6}
!1133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1134 = metadata !{null, metadata !18, metadata !19, metadata !1135, metadata !21, metadata !95, metadata !6}
!1135 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<68, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1136 = metadata !{null, metadata !18, metadata !19, metadata !1137, metadata !21, metadata !95, metadata !6}
!1137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<68, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1138 = metadata !{null, metadata !40, metadata !9, metadata !1139, metadata !11, metadata !98, metadata !6}
!1139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &", metadata !"int"}
!1140 = metadata !{null, metadata !18, metadata !19, metadata !1141, metadata !21, metadata !105, metadata !6}
!1141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &"}
!1142 = metadata !{null, metadata !18, metadata !19, metadata !1143, metadata !21, metadata !95, metadata !6}
!1143 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<120, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1144 = metadata !{null, metadata !268, metadata !53, metadata !1145, metadata !55, metadata !270, metadata !6}
!1145 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1146 = metadata !{null, metadata !40, metadata !9, metadata !1147, metadata !11, metadata !108, metadata !6}
!1147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1148 = metadata !{null, metadata !18, metadata !19, metadata !1149, metadata !21, metadata !95, metadata !6}
!1149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1150 = metadata !{null, metadata !18, metadata !19, metadata !1151, metadata !21, metadata !95, metadata !6}
!1151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<60, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1152 = metadata !{null, metadata !18, metadata !19, metadata !1153, metadata !21, metadata !95, metadata !6}
!1153 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<60, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1154 = metadata !{null, metadata !40, metadata !9, metadata !1155, metadata !11, metadata !98, metadata !6}
!1155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &", metadata !"int"}
!1156 = metadata !{null, metadata !18, metadata !19, metadata !1157, metadata !21, metadata !105, metadata !6}
!1157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &"}
!1158 = metadata !{null, metadata !18, metadata !19, metadata !1159, metadata !21, metadata !95, metadata !6}
!1159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<112, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1160 = metadata !{null, metadata !268, metadata !53, metadata !1161, metadata !55, metadata !270, metadata !6}
!1161 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!1162 = metadata !{null, metadata !268, metadata !53, metadata !1163, metadata !55, metadata !270, metadata !6}
!1163 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1164 = metadata !{null, metadata !268, metadata !53, metadata !1165, metadata !55, metadata !270, metadata !6}
!1165 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1166 = metadata !{null, metadata !18, metadata !19, metadata !1167, metadata !21, metadata !95, metadata !6}
!1167 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<39, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1168 = metadata !{null, metadata !18, metadata !19, metadata !1169, metadata !21, metadata !95, metadata !6}
!1169 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<39, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1170 = metadata !{null, metadata !40, metadata !9, metadata !1171, metadata !11, metadata !98, metadata !6}
!1171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &", metadata !"int"}
!1172 = metadata !{null, metadata !18, metadata !19, metadata !1173, metadata !21, metadata !105, metadata !6}
!1173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &"}
!1174 = metadata !{null, metadata !18, metadata !19, metadata !1175, metadata !21, metadata !95, metadata !6}
!1175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<62, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1176 = metadata !{null, metadata !268, metadata !53, metadata !1177, metadata !55, metadata !270, metadata !6}
!1177 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1178 = metadata !{null, metadata !18, metadata !19, metadata !1179, metadata !21, metadata !95, metadata !6}
!1179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1180 = metadata !{null, metadata !18, metadata !19, metadata !1181, metadata !21, metadata !95, metadata !6}
!1181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1182 = metadata !{null, metadata !40, metadata !9, metadata !1183, metadata !11, metadata !98, metadata !6}
!1183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &", metadata !"int"}
!1184 = metadata !{null, metadata !18, metadata !19, metadata !454, metadata !21, metadata !105, metadata !6}
!1185 = metadata !{null, metadata !18, metadata !19, metadata !1186, metadata !21, metadata !95, metadata !6}
!1186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<54, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1187 = metadata !{null, metadata !268, metadata !53, metadata !1188, metadata !55, metadata !270, metadata !6}
!1188 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1189 = metadata !{null, metadata !268, metadata !53, metadata !1190, metadata !55, metadata !270, metadata !6}
!1190 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1191 = metadata !{null, metadata !18, metadata !19, metadata !1192, metadata !21, metadata !95, metadata !6}
!1192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1193 = metadata !{null, metadata !18, metadata !19, metadata !1194, metadata !21, metadata !95, metadata !6}
!1194 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1195 = metadata !{null, metadata !18, metadata !19, metadata !1196, metadata !21, metadata !95, metadata !6}
!1196 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1197 = metadata !{null, metadata !18, metadata !19, metadata !1198, metadata !21, metadata !95, metadata !6}
!1198 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1199 = metadata !{null, metadata !8, metadata !9, metadata !1200, metadata !11, metadata !156, metadata !6}
!1200 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!1201 = metadata !{null, metadata !268, metadata !53, metadata !1202, metadata !55, metadata !270, metadata !6}
!1202 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1203 = metadata !{null, metadata !18, metadata !19, metadata !1204, metadata !21, metadata !95, metadata !6}
!1204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1205 = metadata !{null, metadata !18, metadata !19, metadata !1206, metadata !21, metadata !95, metadata !6}
!1206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1207 = metadata !{null, metadata !18, metadata !19, metadata !1208, metadata !21, metadata !95, metadata !6}
!1208 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1209 = metadata !{null, metadata !18, metadata !19, metadata !1210, metadata !21, metadata !95, metadata !6}
!1210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1211 = metadata !{null, metadata !8, metadata !9, metadata !1212, metadata !11, metadata !156, metadata !6}
!1212 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!1213 = metadata !{null, metadata !268, metadata !53, metadata !1214, metadata !55, metadata !270, metadata !6}
!1214 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1215 = metadata !{null, metadata !268, metadata !53, metadata !1216, metadata !55, metadata !270, metadata !6}
!1216 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1217 = metadata !{null, metadata !268, metadata !53, metadata !1218, metadata !55, metadata !270, metadata !6}
!1218 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1219 = metadata !{metadata !1220, [2 x i32]* @llvm_global_ctors_0}
!1220 = metadata !{metadata !1221}
!1221 = metadata !{i32 0, i32 31, metadata !1222}
!1222 = metadata !{metadata !1223}
!1223 = metadata !{metadata !"llvm.global_ctors.0", metadata !1224, metadata !"", i32 0, i32 31}
!1224 = metadata !{metadata !1225}
!1225 = metadata !{i32 0, i32 1, i32 1}
!1226 = metadata !{i32 786688, metadata !1227, metadata !"G", metadata !1229, i32 70, metadata !1232, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1227 = metadata !{i32 786443, metadata !1228, i32 68, i32 80, metadata !1229, i32 8} ; [ DW_TAG_lexical_block ]
!1228 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"singleGUV", metadata !"singleGUV", metadata !"_Z9singleGUVPA8_fiiiS0_", metadata !1229, i32 68, metadata !1230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1238, i32 68} ; [ DW_TAG_subprogram ]
!1229 = metadata !{i32 786473, metadata !"definition.cpp", metadata !"C:\5CUsers\5CVenci\5CVideos\5CProject", null} ; [ DW_TAG_file_type ]
!1230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1231 = metadata !{metadata !1232, metadata !1233, metadata !1237, metadata !1237, metadata !1237, metadata !1233}
!1232 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!1233 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1234} ; [ DW_TAG_pointer_type ]
!1234 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !1232, metadata !1235, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1235 = metadata !{metadata !1236}
!1236 = metadata !{i32 786465, i64 0, i64 7}      ; [ DW_TAG_subrange_type ]
!1237 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!1238 = metadata !{metadata !1239}
!1239 = metadata !{i32 786468}                    ; [ DW_TAG_base_type ]
!1240 = metadata !{i32 786689, metadata !1228, metadata !"inv", metadata !1229, i32 67108932, metadata !1237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1241 = metadata !{i32 68, i32 55, metadata !1228, null}
!1242 = metadata !{i32 786689, metadata !1228, metadata !"v", metadata !1229, i32 50331716, metadata !1237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1243 = metadata !{i32 68, i32 48, metadata !1228, null}
!1244 = metadata !{i32 786689, metadata !1245, metadata !"x", metadata !1229, i32 16777277, metadata !1237, i32 0, metadata !1248} ; [ DW_TAG_arg_variable ]
!1245 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"al", metadata !"al", metadata !"_Z2ali", metadata !1229, i32 61, metadata !1246, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1238, i32 61} ; [ DW_TAG_subprogram ]
!1246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1247 = metadata !{metadata !1232, metadata !1237}
!1248 = metadata !{i32 76, i32 19, metadata !1249, null}
!1249 = metadata !{i32 786443, metadata !1250, i32 74, i32 22, metadata !1229, i32 12} ; [ DW_TAG_lexical_block ]
!1250 = metadata !{i32 786443, metadata !1251, i32 74, i32 3, metadata !1229, i32 11} ; [ DW_TAG_lexical_block ]
!1251 = metadata !{i32 786443, metadata !1252, i32 73, i32 21, metadata !1229, i32 10} ; [ DW_TAG_lexical_block ]
!1252 = metadata !{i32 786443, metadata !1227, i32 73, i32 2, metadata !1229, i32 9} ; [ DW_TAG_lexical_block ]
!1253 = metadata !{i32 61, i32 14, metadata !1245, metadata !1248}
!1254 = metadata !{i32 786689, metadata !1228, metadata !"u", metadata !1229, i32 33554500, metadata !1237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1255 = metadata !{i32 68, i32 41, metadata !1228, null}
!1256 = metadata !{i32 786689, metadata !1245, metadata !"x", metadata !1229, i32 16777277, metadata !1237, i32 0, metadata !1257} ; [ DW_TAG_arg_variable ]
!1257 = metadata !{i32 76, i32 13, metadata !1249, null}
!1258 = metadata !{i32 61, i32 14, metadata !1245, metadata !1257}
!1259 = metadata !{i32 786689, metadata !1228, metadata !"subimg", null, i32 68, metadata !1260, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1260 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !1232, metadata !1261, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1261 = metadata !{metadata !1236, metadata !1236}
!1262 = metadata !{i32 68, i32 23, metadata !1228, null}
!1263 = metadata !{i32 786689, metadata !1228, metadata !"cosMat", null, i32 68, metadata !1260, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1264 = metadata !{i32 68, i32 66, metadata !1228, null}
!1265 = metadata !{i32 75, i32 4, metadata !1249, null}
!1266 = metadata !{i32 62, i32 2, metadata !1267, metadata !1257}
!1267 = metadata !{i32 786443, metadata !1245, i32 61, i32 17, metadata !1229, i32 7} ; [ DW_TAG_lexical_block ]
!1268 = metadata !{i32 62, i32 2, metadata !1267, metadata !1248}
!1269 = metadata !{i32 73, i32 6, metadata !1252, null}
!1270 = metadata !{i32 78, i32 19, metadata !1249, null}
!1271 = metadata !{i32 73, i32 16, metadata !1252, null}
!1272 = metadata !{i32 786688, metadata !1227, metadata !"x", metadata !1229, i32 71, metadata !1237, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1273 = metadata !{i32 62, i32 2, metadata !1267, metadata !1274}
!1274 = metadata !{i32 78, i32 13, metadata !1249, null}
!1275 = metadata !{i32 74, i32 7, metadata !1250, null}
!1276 = metadata !{i32 74, i32 17, metadata !1250, null}
!1277 = metadata !{i32 786689, metadata !1245, metadata !"x", metadata !1229, i32 16777277, metadata !1237, i32 0, metadata !1274} ; [ DW_TAG_arg_variable ]
!1278 = metadata !{i32 61, i32 14, metadata !1245, metadata !1274}
!1279 = metadata !{i32 786689, metadata !1245, metadata !"x", metadata !1229, i32 16777277, metadata !1237, i32 0, metadata !1270} ; [ DW_TAG_arg_variable ]
!1280 = metadata !{i32 61, i32 14, metadata !1245, metadata !1270}
!1281 = metadata !{i32 62, i32 2, metadata !1267, metadata !1270}
!1282 = metadata !{i32 786688, metadata !1227, metadata !"y", metadata !1229, i32 71, metadata !1237, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1283 = metadata !{i32 81, i32 2, metadata !1227, null}
!1284 = metadata !{metadata !1285}
!1285 = metadata !{i32 0, i32 31, metadata !1286}
!1286 = metadata !{metadata !1287}
!1287 = metadata !{metadata !"G", metadata !1288, metadata !"float", i32 0, i32 31}
!1288 = metadata !{metadata !1289, metadata !1289}
!1289 = metadata !{i32 0, i32 7, i32 1}
!1290 = metadata !{metadata !1291}
!1291 = metadata !{i32 0, i32 31, metadata !1292}
!1292 = metadata !{metadata !1293}
!1293 = metadata !{metadata !"subimg", metadata !1288, metadata !"float", i32 0, i32 31}
!1294 = metadata !{metadata !1295}
!1295 = metadata !{i32 0, i32 31, metadata !1296}
!1296 = metadata !{metadata !1297}
!1297 = metadata !{metadata !"shift", metadata !1298, metadata !"int", i32 0, i32 31}
!1298 = metadata !{metadata !1299}
!1299 = metadata !{i32 0, i32 0, i32 0}
!1300 = metadata !{metadata !1301}
!1301 = metadata !{i32 0, i32 31, metadata !1302}
!1302 = metadata !{metadata !1303}
!1303 = metadata !{metadata !"inv", metadata !1298, metadata !"int", i32 0, i32 31}
!1304 = metadata !{metadata !1305}
!1305 = metadata !{i32 0, i32 31, metadata !1306}
!1306 = metadata !{metadata !1307}
!1307 = metadata !{metadata !"cosMat", metadata !1288, metadata !"float", i32 0, i32 31}
!1308 = metadata !{i32 786689, metadata !1309, metadata !"inv", metadata !1229, i32 67108959, metadata !1237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1309 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"DCT_8x8_2D", metadata !"DCT_8x8_2D", metadata !"_Z10DCT_8x8_2DPA8_fS0_iiS0_", metadata !1229, i32 95, metadata !1310, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1238, i32 96} ; [ DW_TAG_subprogram ]
!1310 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1311, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1311 = metadata !{null, metadata !1233, metadata !1233, metadata !1237, metadata !1237, metadata !1233}
!1312 = metadata !{i32 95, i32 67, metadata !1309, null}
!1313 = metadata !{i32 786689, metadata !1309, metadata !"shift", metadata !1229, i32 50331743, metadata !1237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1314 = metadata !{i32 95, i32 56, metadata !1309, null}
!1315 = metadata !{i32 786689, metadata !1309, metadata !"G", null, i32 95, metadata !1260, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1316 = metadata !{i32 95, i32 23, metadata !1309, null}
!1317 = metadata !{i32 786689, metadata !1309, metadata !"subimg", null, i32 95, metadata !1260, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1318 = metadata !{i32 95, i32 38, metadata !1309, null}
!1319 = metadata !{i32 786689, metadata !1309, metadata !"cosMat", null, i32 95, metadata !1260, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1320 = metadata !{i32 95, i32 78, metadata !1309, null}
!1321 = metadata !{i32 97, i32 2, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !1309, i32 96, i32 1, metadata !1229, i32 18} ; [ DW_TAG_lexical_block ]
!1323 = metadata !{i32 88, i32 6, metadata !1324, metadata !1329}
!1324 = metadata !{i32 786443, metadata !1325, i32 88, i32 2, metadata !1229, i32 14} ; [ DW_TAG_lexical_block ]
!1325 = metadata !{i32 786443, metadata !1326, i32 84, i32 35, metadata !1229, i32 13} ; [ DW_TAG_lexical_block ]
!1326 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"shift128", metadata !"shift128", metadata !"_Z8shift128PA8_f", metadata !1229, i32 84, metadata !1327, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1238, i32 84} ; [ DW_TAG_subprogram ]
!1327 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1328 = metadata !{null, metadata !1233}
!1329 = metadata !{i32 98, i32 3, metadata !1322, null}
!1330 = metadata !{i32 88, i32 16, metadata !1324, metadata !1329}
!1331 = metadata !{i32 786688, metadata !1325, metadata !"i", metadata !1229, i32 86, metadata !1237, i32 0, metadata !1329} ; [ DW_TAG_auto_variable ]
!1332 = metadata !{i32 90, i32 4, metadata !1333, metadata !1329}
!1333 = metadata !{i32 786443, metadata !1334, i32 89, i32 22, metadata !1229, i32 17} ; [ DW_TAG_lexical_block ]
!1334 = metadata !{i32 786443, metadata !1335, i32 89, i32 3, metadata !1229, i32 16} ; [ DW_TAG_lexical_block ]
!1335 = metadata !{i32 786443, metadata !1324, i32 88, i32 21, metadata !1229, i32 15} ; [ DW_TAG_lexical_block ]
!1336 = metadata !{i32 89, i32 7, metadata !1334, metadata !1329}
!1337 = metadata !{i32 89, i32 17, metadata !1334, metadata !1329}
!1338 = metadata !{i32 786688, metadata !1325, metadata !"j", metadata !1229, i32 86, metadata !1237, i32 0, metadata !1329} ; [ DW_TAG_auto_variable ]
!1339 = metadata !{i32 101, i32 6, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1322, i32 101, i32 2, metadata !1229, i32 19} ; [ DW_TAG_lexical_block ]
!1341 = metadata !{i32 101, i32 20, metadata !1340, null}
!1342 = metadata !{i32 786688, metadata !1322, metadata !"i", metadata !1229, i32 99, metadata !1237, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1343 = metadata !{i32 103, i32 14, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !1340, i32 102, i32 3, metadata !1229, i32 20} ; [ DW_TAG_lexical_block ]
!1345 = metadata !{i32 102, i32 7, metadata !1344, null}
!1346 = metadata !{i32 102, i32 21, metadata !1344, null}
!1347 = metadata !{i32 786688, metadata !1322, metadata !"j", metadata !1229, i32 99, metadata !1237, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1348 = metadata !{i32 104, i32 1, metadata !1322, null}
