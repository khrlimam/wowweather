import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("London",
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("tested")));
                  },
                )
              ],
            ),
            Text("TODAY", style: Theme.of(context).textTheme.labelSmall),
            Flexible(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/images/sun.gif"), width: 70),
                    Text("8°",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            listItem("Tomorrow"),
            listItem("Sunday"),
            listItem("Monday")
          ],
        ),
      ),
    );
  }

  Widget listItem(String day) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(day),
            ),
            const Text("8°"),
            const SizedBox(width: 8),
            const Icon(Icons.cloud)
          ],
        ),
        const Divider(thickness: 2.5, color: Colors.black)
      ],
    );
  }
}
