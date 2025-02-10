import 'package:flutter/material.dart';

class CompletedRequest extends StatelessWidget {
  const CompletedRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Completed Request $index'),
                    const Text(
                      'Reeja Grace Sabu \n75N Southern Street, London NW5 9XE, England',
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Plastic',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
