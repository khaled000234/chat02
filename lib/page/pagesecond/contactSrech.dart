import 'package:flutter/material.dart';

class ContactSearch extends StatelessWidget {
  const ContactSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primaryContainer
            ),
            child: Row(
              children: [
                Expanded(child: TextField(
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value)=>{
                    print(value),
                  },
                  decoration: InputDecoration(
                    hintText: "Search contoact ",
                    prefixIcon: Icon(Icons.search)
                  ),
                )),
              ],
            ));
  }
}