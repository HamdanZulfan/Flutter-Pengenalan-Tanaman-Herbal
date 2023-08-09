import 'package:cloud_firestore/cloud_firestore.dart';

class ArtikelService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> streamArtikel() {
    CollectionReference data = firestore.collection("artikel");
    return data.snapshots();
  }

  Future<DocumentSnapshot<Object?>> getByIDArtikel(String id) {
    DocumentReference docRef = firestore.collection("artikel").doc(id);
    return docRef.get();
  }
}
