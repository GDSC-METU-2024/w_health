import 'package:flutter/material.dart';
import 'package:w_health/local_notification/local_notification.dart';
import 'package:w_health/wearOS_module/wear_medicine/wear_medicine_widget.dart';

class WearMedicinePage extends StatefulWidget {
  const WearMedicinePage({super.key});

  @override
  State<WearMedicinePage> createState() => _WearMedicinePageState();
}

class _WearMedicinePageState extends State<WearMedicinePage> {
  final List<WearMedicine> medicineList = [
    WearMedicine(name: 'Medicine A', period: 0, id: 1, gram: 250.0),
    WearMedicine(name: 'Medicine B', period: 7, id: 2, gram: 500.0),
    WearMedicine(name: 'Medicine C', period: 1, id: 3, gram: 750.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 17,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Medicines',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  LocalNotifications.showSimpleNotifaction(
                      title: 'wow', body: 'simple', payload: 'ben şok');
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
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: medicineList.length,
                itemBuilder: (context, index) {
                  return WearMedicineInfoWidget(
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
