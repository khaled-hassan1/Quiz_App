
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@immutable
class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addUserData(
      User user, String name, bool isTeacher, String imageSignature) async {
    await _db.collection('users').doc(user.uid).set({
      'name': name,
      'email': user.email,
      'isTeacher': isTeacher,
      'image-signature': imageSignature
    },SetOptions(merge: true));
  }

  Future<Map<String, dynamic>?> getUserData(String name) async {
    DocumentSnapshot doc = await _db.collection('users').doc(name).get();
    return doc.data() as Map<String, dynamic>?;
  }
    Future<List<String>> getAllNames() async {
    QuerySnapshot querySnapshot = await _db.collection('users').get();
    List<String> names = querySnapshot.docs.map((doc) => doc['name'] as String).toList();
    return names;
  }
}
