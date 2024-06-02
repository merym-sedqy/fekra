import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class SqlHelper {
  Database? db ;
  SqlHelper () {
    _init() ;
  }

  void _init () async {
    
    try {

      if (kIsWeb) {
        // Use the ffi web factory in web apps (flutter or dart)
       var factory = databaseFactoryFfiWeb;
       db = await factory.openDatabase('pos.db');
       
      }else {
        var db = await openDatabase('pos.db', 
        version: 1,
        onCreate: (db, version) {
      
    });
   

    
  }
     print('>>>>>>>>${db.hashCode}');
   } catch (e) {
      print('Erorr in creating Database $e') ;
    }
      }
}