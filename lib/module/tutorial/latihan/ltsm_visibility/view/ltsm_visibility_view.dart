import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_visibility_controller.dart';

class LtsmVisibilityView extends StatefulWidget {
  const LtsmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, LtsmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 120,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              ? Buat variabel visible di dalam State/Controller
              ! bool visible = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.visible = controller.visible!;
              controller.setState((){});
              */
                
              */

              if (controller.visible)
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.visible = !controller.visible;
                  controller.setState(() {});
                },
                child: const Text("Click Me!"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmVisibilityView> createState() => LtsmVisibilityController();
}
