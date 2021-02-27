import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/widgets/custom_text_box_widget.dart';

class OptimizeThis extends StatefulWidget {
  @override
  _OptimizeThisState createState() => _OptimizeThisState();
}

class _OptimizeThisState extends State<OptimizeThis> {
  List<Widget> widgets;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    widgets = List.generate(
        999999, (index) => CustomTextBoxWidget('$index', Colors.red.shade300));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Optimize'),
      ),
      body: ListView(
        children: widgets,
      ),
    );
  }
}
