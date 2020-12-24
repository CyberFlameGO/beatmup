/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class Beatmup_Imaging_Filters_ColorMatrixTransform */

#ifndef _Included_Beatmup_Imaging_Filters_ColorMatrixTransform
#define _Included_Beatmup_Imaging_Filters_ColorMatrixTransform
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     Beatmup_Imaging_Filters_ColorMatrixTransform
 * Method:    newColorMatrixTransform
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_Beatmup_Imaging_Filters_ColorMatrixTransform_newColorMatrixTransform
  (JNIEnv *, jclass);

/*
 * Class:     Beatmup_Imaging_Filters_ColorMatrixTransform
 * Method:    setFromMatrix
 * Signature: (JLBeatmup/Imaging/ColorMatrix;)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_Filters_ColorMatrixTransform_setFromMatrix
  (JNIEnv *, jobject, jlong, jobject);

/*
 * Class:     Beatmup_Imaging_Filters_ColorMatrixTransform
 * Method:    assignToMatrix
 * Signature: (JLBeatmup/Imaging/ColorMatrix;)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_Filters_ColorMatrixTransform_assignToMatrix
  (JNIEnv *, jobject, jlong, jobject);

/*
 * Class:     Beatmup_Imaging_Filters_ColorMatrixTransform
 * Method:    setCoefficients
 * Signature: (JIFFFFF)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_Filters_ColorMatrixTransform_setCoefficients
  (JNIEnv *, jobject, jlong, jint, jfloat, jfloat, jfloat, jfloat, jfloat);

/*
 * Class:     Beatmup_Imaging_Filters_ColorMatrixTransform
 * Method:    setHSVCorrection
 * Signature: (JFFF)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_Filters_ColorMatrixTransform_setHSVCorrection
  (JNIEnv *, jobject, jlong, jfloat, jfloat, jfloat);

/*
 * Class:     Beatmup_Imaging_Filters_ColorMatrixTransform
 * Method:    setColorInversion
 * Signature: (JFFFFF)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_Filters_ColorMatrixTransform_setColorInversion
  (JNIEnv *, jobject, jlong, jfloat, jfloat, jfloat, jfloat, jfloat);

/*
 * Class:     Beatmup_Imaging_Filters_ColorMatrixTransform
 * Method:    setAllowIntegerApprox
 * Signature: (JZ)V
 */
JNIEXPORT void JNICALL Java_Beatmup_Imaging_Filters_ColorMatrixTransform_setAllowIntegerApprox
  (JNIEnv *, jobject, jlong, jboolean);

/*
 * Class:     Beatmup_Imaging_Filters_ColorMatrixTransform
 * Method:    allowIntegerApprox
 * Signature: (J)Z
 */
JNIEXPORT jboolean JNICALL Java_Beatmup_Imaging_Filters_ColorMatrixTransform_allowIntegerApprox
  (JNIEnv *, jobject, jlong);

#ifdef __cplusplus
}
#endif
#endif
