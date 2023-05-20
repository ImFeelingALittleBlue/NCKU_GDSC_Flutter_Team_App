import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../classes/resource.dart';

class ResourcesPage extends StatelessWidget {
  //final FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('資源分享'),
      ),
      body: StreamBuilder<List<Resource>>(
        stream: FirebaseService.getResources(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Resource> resources = snapshot.data!;
            return ListView.builder(
              itemCount: resources.length,
              itemBuilder: (context, index) {
                Resource resource = resources[index];
                return Column(
                  children: [
                    Text(resource.title),
                    Image.asset(resource.imageUrl!),
                    Text(resource.resourceLink!),
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
