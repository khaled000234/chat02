import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastChat;
  final String lastTime;
  const ChatTile({
    super.key,
     required this.imageUrl,
      required this.name,
       required this.lastChat,
        required this.lastTime
        });

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(bottom: 8),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row( children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(imageUrl,
                                        width: 70,
                                        fit: BoxFit.cover,
                                        ),
                      ),
                    ),
                SizedBox(width: 10,),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyLarge),
                   SizedBox(height: 5),
                   Text(
                    lastChat,
                   style: Theme.of(context).textTheme.labelMedium,),
                ],
              ),
              ],
             
              ),
              
              Text(
                lastTime,
                 style: Theme.of(context).textTheme.labelMedium,
              ),
              // Text("08:55 PM",style: Theme.of(context).textTheme.bodySmall),
              //      SizedBox(height: 5),
              //      Text(lastChat,
              //      style: Theme.of(context).textTheme.labelMedium,),
            ],
          ),
        );
  }
}