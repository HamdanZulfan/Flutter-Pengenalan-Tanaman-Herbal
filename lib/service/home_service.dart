import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> streamJenis() {
    CollectionReference data = firestore.collection("tanamanHerbal");
    return data.snapshots();
  }

  Future<DocumentSnapshot<Object?>> getByIDJenis(String id) {
    DocumentReference docRef = firestore.collection("tanamanHerbal").doc(id);
    return docRef.get();
  }
}
