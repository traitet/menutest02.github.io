//=================================================================================
// 1) IMPORT
//=================================================================================
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:menutest02/components/show_notification.dart';
import 'logger_service.dart';


//================================================================================
// 2) FUNCTION: ADD ITEM (FUTURE => ASYN FUNCTION)
//================================================================================
Future<void> updateUser(
    BuildContext context, Map<String, dynamic> data, String documentName) {
  //==============================================================================
  // RETURN FUNCTION
  //==============================================================================   
  return Firestore.instance
      //==========================================================================
      // SAVE DATA TO DB: CATALOG, DOCUMENTNAME, DATA
      //==========================================================================  
      .collection("TM_USER")    //COLLECTION NAME: CATALOG
      .document(documentName)   //DOCUMENTNAME:  [ PRODUCT NAME ]
      .updateData(data)            //SAVE DATA "DYNAMIC ???"
      .then((returnData) {      
        //========================================================================
        // SHOW MESSAGE: TO UI
        //========================================================================          
        showMessageBox(context, "Success", "Updated User($documentName) to Firestore Database completely.",
        //========================================================================
        // ONLY DISMISS BUTTON
        //========================================================================
        actions: [dismissButton(context)]);
    //============================================================================
    // KEEP LOG SET DATA SUCREE ( SENT TO DEBUG CONSULT )
    //============================================================================          
    logger.i("updateData success");
    //============================================================================
    // SHOW ERROR
    //============================================================================      
  }).catchError((e) {
    logger.e(e);
  });
}
