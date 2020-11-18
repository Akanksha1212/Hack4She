import 'package:flutter/material.dart';
import 'package:streecare/Components/gridDashboard.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 200),
            GridDashboard(),
          ],
        ),
      ),
    );
  }
}
