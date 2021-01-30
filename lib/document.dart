
import 'package:cloud_firestore/cloud_firestore.dart';

class DocumentModel {
  late String id;
  late String name;
  late String description;
  late String dateCreation;
  late String dateEdited;
  late String attachment;
  late String preview;

  DocumentModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    id = documentSnapshot.id;
    dateCreation = documentSnapshot.data()["dateCreation"];
    name = documentSnapshot.data()["name"];
    description = documentSnapshot.data()["description"];
    dateEdited = documentSnapshot.data()["dateEdited"];
    attachment = documentSnapshot.data()["attachment"];
    preview = documentSnapshot.data()["preview"];
  }
}
