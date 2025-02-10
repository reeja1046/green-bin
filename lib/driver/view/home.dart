import 'package:flutter/material.dart';

class DriverHome extends StatelessWidget {
  const DriverHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: const Text(
          'Green Bin',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/onboarding1.jpg')),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Today's Request",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    onTap: () {
                      showDetails(context);
                    },
                    trailing: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Metal',
                          style: TextStyle(color: Colors.red),
                        )),
                    title: const Text('Ashish'),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    onTap: () {
                      showDetails(context);
                    },
                    trailing: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Paper',
                          style: TextStyle(color: Colors.red),
                        )),
                    title: const Text('Rahul'),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    onTap: () {
                      showDetails(context);
                    },
                    trailing: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Metal',
                          style: TextStyle(color: Colors.red),
                        )),
                    title: const Text('Ashly'),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    onTap: () {
                      showDetails(context);
                    },
                    trailing: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'plastic',
                          style: TextStyle(color: Colors.red),
                        )),
                    title: const Text('Arjun'),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showDetails(context) {
    return showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          content: SizedBox(
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  children: [
                    Text(
                      'Name:\t\t\t',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('Reeja Grace Sabu')
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Address:\t\t\t',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('75N Southern Street, Kerala')
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Phone No.:\t\t\t',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('5412451278')
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                const Row(
                  children: [
                    Text(
                      'Garbage Collector:\t\t\t',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('Ashish Joy')
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Address:\t\t\t',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('75N Southern Street, Kerala')
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Phone No.:\t\t\t',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('5412451278')
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {},
                    child: const Text(
                      'Completed',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
