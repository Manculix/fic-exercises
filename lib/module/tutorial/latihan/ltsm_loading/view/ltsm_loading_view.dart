import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_loading_controller.dart';

class LtsmLoadingView extends StatefulWidget {
  const LtsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, LtsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmLoading"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (controller.loading) const CircularProgressIndicator()
                  ],
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.save),
                  label: const Text("Save"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    controller.loading = !controller.loading;
                    controller.setState(() {});
                  },
                ),
                /*
                ? Buat variabel loading di dalam State/Controller
                ! bool loading = false;

                ? Tambahkan statement ini di dalam Column:
                if(controller.loading)
                  CircularProgressIndicator();

                ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
                /*
                controller.loading = controller.loading!;
                controller.setState((){});
                */
                  
                */
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmLoadingView> createState() => LtsmLoadingController();
}
