import 'package:flutter/material.dart';

class Pbottom extends StatelessWidget {
  final String BName;
  final VoidCallback ontap;
  const Pbottom({super.key, required this.BName, 
  required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              
                Text(BName, style: Theme.of(context).textTheme.bodyLarge,)
              ],
            ),
          ),
    );
  }
}