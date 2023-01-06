import 'package:cm23mp/app/cors_image_helper.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.tertiary,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.onPrimary),
            ),
            Text(
              '$_counter',
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.onPrimary),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              splashColor: theme.colorScheme.primary,
              hoverColor: theme.colorScheme.tertiary,
              highlightColor: Colors.yellow,
              child: Card(
                color: theme.colorScheme.primary.withAlpha(150),
                elevation: 10,
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Catan'),
                    Image.network(
                      getCORSProxyImageUri(
                          'https://d2k4q26owzy373.cloudfront.net/350x350/games/uploaded/1629324722072.jpg'),
                      height: 200,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
