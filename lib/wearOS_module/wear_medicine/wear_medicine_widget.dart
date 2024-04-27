import 'package:flutter/material.dart';
import 'package:w_health/local_notification/local_notification.dart';

class WearMedicine {
  final String name;
  final int period;
  final int id;
  final double gram;

  WearMedicine({
    required this.name,
    required this.period,
    required this.id,
    required this.gram,
  });
}

class WearMedicineInfoWidget extends StatelessWidget {
  final WearMedicine medicine;

  WearMedicineInfoWidget({required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.50,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(
                            child: Image.asset(
                              "assets/medicine/images/medicine.png",
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.height * 0.06,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Name: ${medicine.name}',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '${medicine.gram} g',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 8),
                        Center(
                            child: Text(
                          'Period: ${medicine.period} days',
                          style: TextStyle(fontSize: 10),
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          iconSize: 20,
                          icon: const Icon(Icons.delete_forever),
                          tooltip: 'Remove alarm',
                          onPressed: () {
                            LocalNotifications.cancel(medicine.id);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
