import 'package:flutter/material.dart';
import 'package:w_health/local_notification/local_notification.dart';
import 'package:w_health/screens/profile/medicine/medicine_widget.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({super.key});

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  final List<Medicine> medicineList = [
    Medicine(name: 'Medicine A', period: 0, id: 1, gram: 250.0),
    Medicine(name: 'Medicine B', period: 7, id: 2, gram: 500.0),
    Medicine(name: 'Medicine C', period: 1, id: 3, gram: 750.0),
  ];

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
                onPressed: () {
                  LocalNotifications.showSimpleNotifaction(
                      title: 'Medicine Reminder',
                      body: 'Don\'t forget to take your medicine',
                      payload: 'ben şok');
                },
                icon: Icon(Icons.notification_add),
                label: Text('Simple')),
            ElevatedButton.icon(
                onPressed: () {
                  LocalNotifications.showPeriodicnotifications(
                      title: 'periodicc', body: 'simple', payload: 'ben şok');
                },
                icon: Icon(Icons.notification_add),
                label: Text('Periodic')),
            ElevatedButton.icon(
                onPressed: () {
                  LocalNotifications.cancel(1);
                },
                icon: Icon(Icons.cancel),
                label: Text('Periodic cancel')),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: medicineList.length,
                itemBuilder: (context, index) {
                  return MedicineInfoWidget(
                    medicine: medicineList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
