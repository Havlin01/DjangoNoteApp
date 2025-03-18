import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:noteapp/urls.dart';

class UpdatePage extends StatefulWidget {
  final int id;
  final Client client;
  final String note;
  const UpdatePage({
    Key? key,
    required this.client,
    required this.id,
    required this.note,
  }) : super(key: key);

  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  TextEditingController controller = TextEditingController();

  initState() {
    controller.text = widget.note;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: Text("Update"),
      ),
      body: Column(
        children: [
          TextField(controller: controller, maxLines: 10),
          ElevatedButton(
            onPressed: () {
              widget.client.put(
                updateUrl(widget.id),
                body: {'body': controller.text},
              );
              Navigator.pop(context);
            },
            child: Text("Update Note"),
          ),
        ],
      ),
    );
  }
}
