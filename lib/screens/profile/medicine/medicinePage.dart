import 'package:flutter/material.dart';
import 'package:w_health/local_notification/local_notifications.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({super.key});

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Medicines'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: (){
                  LocalNotifications.showSimpleNotifaction(title: 'wow', body: 'simple', payload: 'ben şok');

                },
                icon: Icon(Icons.notification_add),
                label: Text('Simple')
            ),
            ElevatedButton.icon(
                onPressed: (){
                  LocalNotifications.showPeriodicnotifications(title: 'periodicc', body: 'simple', payload: 'ben şok');
                },
                icon: Icon(Icons.notification_add),
                label: Text('Periodic')
            ),
          ],
        ),
      ),
    );
  }
}
