import 'package:flutter/material.dart';
import 'package:letsupgrade_flutter_bootcamp/app_service.dart';
import 'package:letsupgrade_flutter_bootcamp/json_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Posts",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.blue,
                ),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<JsonModel>>(
          future: AppService.getPosts(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.active:
              case ConnectionState.done:
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index].title),
                      subtitle: Text(
                        snapshot.data![index].body,
                      ),
                      leading: Text(
                        snapshot.data![index].id.toString(),
                      ),
                    );
                  },
                  itemCount: snapshot.data!.length,
                );
            }
          },
        ),
      ),
    );
  }
}
