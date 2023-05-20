import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../classes/announce.dart';

class AnnouncementsPage extends StatelessWidget {
  //final FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('公告'),
      ),
      body: StreamBuilder<List<Announcement>>(
        stream: FirebaseService.getAnnouncements(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Announcement> announcements = snapshot.data!;
            return ListView.builder(
              itemCount: announcements.length,
              itemBuilder: (context, index) {
                Announcement announcement = announcements[index];
                return Column(
                  children: [
                    Text(announcement.title),
                    Image.asset(announcement.imageUrl!),
                    Text(announcement.resourceLink!),
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('发生错误');
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
