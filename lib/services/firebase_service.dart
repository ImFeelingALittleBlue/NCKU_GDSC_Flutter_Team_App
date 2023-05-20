import 'package:cloud_firestore/cloud_firestore.dart';
import '../classes/announce.dart';
import '../classes/resource.dart';

class FirebaseService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Stream<List<Announcement>> getAnnouncements() {
    return _firestore.collection('announcements').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Announcement(
          index: doc.data()['index'],
          title: doc.data()['title'],
          imageUrl: doc.data()['imageUrl'],
          resourceLink: doc.data()['resourceLink'],
        );
      }).toList();
    });
  }

  static Stream<List<Resource>> getResources() {
    return _firestore.collection('resources').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Resource(
          index: doc.data()['index'],
          title: doc.data()['title'],
          imageUrl: doc.data()['imageUrl'],
          resourceLink: doc.data()['resourceLink'],
        );
      }).toList();
    });
  }
}
