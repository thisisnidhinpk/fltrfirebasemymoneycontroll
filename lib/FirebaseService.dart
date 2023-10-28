// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class FirebaseService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   // Create a new document
//   Future<void> createDocument(String collectionName, Map<String, dynamic> data) async {
//     await _firestore.collection(collectionName).add(data);
//   }
//
//   // Read documents from a collection
//   Stream<QuerySnapshot> getDocuments(String collectionName) {
//     return _firestore.collection(collectionName).get({'uname'})
//   }
//
//   // Update a document
//   Future<void> updateDocument(String collectionName, String documentId, Map<String, dynamic> data) async {
//     await _firestore.collection(collectionName).doc(documentId).update(data);
//   }
//
//   // Delete a document
//   Future<void> deleteDocument(String collectionName, String documentId) async {
//     await _firestore.collection(collectionName).doc(documentId).delete();
//   }
// }


// If not, make sure you have node.js on your machine and Install the Firebase CLI via npm by running the following command:
// npm install -g firebase-tools.
// dart pub global activate flutterfire_cli.
// flutterfire configure.
// flutterfire configure.
// flutterfire --version.
// dart pub global activate flutterfire_cli.