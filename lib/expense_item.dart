import 'package:expenses_tracker/models/expens.dart';
import 'package:flutter/material.dart';

class ExpensItem extends StatelessWidget {
  const ExpensItem(this.expens, {super.key});

  final Expens expens;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expens.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('Rp ${expens.amount.toStringAsFixed(0)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(catIcon[expens.category]),
                    const SizedBox(width: 8),
                    Text(expens.formatteddDate),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
