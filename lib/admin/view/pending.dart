import 'package:flutter/material.dart';

class PendingRequest extends StatelessWidget {
  const PendingRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pending Request $index'),
                  const Text(
                      'Reeja Grace Sabu \n75N Southern Street, London NW5 9XE, England')
                ],
              ),
            ),
            onTap: () {
              showDetails(context);
            },
          );
        },
        itemCount: 10,
      ),
    );
  }

  showDetails(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              children: [
                const Text('Name : ' "Reeja Grace Sabu"),
                const Text('Address : '
                    "75N Southern Street, London, NW5 9XE, England. "),
                const Text('Phone No.' "+91 9204444443"),
               const SizedBox(height: 20),
                const Text(
                  'Garbage Collector - Plastic',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                RadioListTile(
                    title: Text('Athira'),
                    value: 'add',
                    groupValue: 'groupValue',
                    onChanged: (value) {}),
                RadioListTile(
                    title: Text('Anupama'),
                    value: 'add',
                    groupValue: 'groupValue',
                    onChanged: (value) {}),
                RadioListTile(
                    title: Text('Meera'),
                    value: 'add',
                    groupValue: 'groupValue',
                    onChanged: (value) {})
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Decline')),
                  ElevatedButton(onPressed: () {}, child: const Text('Accept'))
                ],
              )
            ],
          );
        });
  }
}
