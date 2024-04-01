import 'package:flutter/material.dart';
MyTabBar(TabController tabController,BuildContext context){
   return PreferredSize(
      preferredSize: Size.fromHeight(60),
     
        // padding: EdgeInsets.all(10),
        child: TabBar(
                controller:tabController ,
                indicatorWeight: 4,
               // indicatorWeight: 200,
               indicatorSize: TabBarIndicatorSize.label,
                // indicator: BoxDecoration(
                //   borderRadius: BorderRadius.circular(100),
                
                // ),
                labelStyle:Theme.of(context).textTheme.bodyLarge,
                unselectedLabelStyle:Theme.of(context).textTheme.labelLarge ,
                tabs:const [
                  Tab(
            text:"Chats",
                  ),
                     Tab(
            text:"Chats",
                  ),
                        Tab(
            text:"Chats",
                  ),
                
            
              ]),
      
    );
}
