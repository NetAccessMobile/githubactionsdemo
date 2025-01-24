import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('didUpdateWidget Example')),
        body: const MessageUpdater(),
      ),
    );
  }
}

class MessageUpdater extends StatefulWidget {
  const MessageUpdater({super.key});

  @override
  State<MessageUpdater> createState() => _MessageUpdaterState();
}

class _MessageUpdaterState extends State<MessageUpdater> {
  String _message = "Hello, World!";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DisplayMessage(message: _message),
        Text(_message),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _message = "Updated Message!";
            });
          },
          child: const Text('Update Message'),
        ),
      ],
    );
  }
}

class DisplayMessage extends StatefulWidget {
  final String message;

  const DisplayMessage({super.key, required this.message});

  @override
  State<DisplayMessage> createState() => _DisplayMessageState();
}

class _DisplayMessageState extends State<DisplayMessage> {
  String _displayedMessage = "";

  @override
  void initState() {
    super.initState();
    _displayedMessage = widget.message;
    // print('initState: Initial message is "${widget.message}"');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant DisplayMessage oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Check if the message has changed.
    if (oldWidget.message != widget.message) {
      // print('didUpdateWidget: Message updated from "${oldWidget.message}" to "${widget.message}"');
      _displayedMessage = widget.message;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayedMessage,
      style: const TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    );
  }
}
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('didChangeDependencies Example')),
//         body: const ResponsiveWidget(),
//       ),
//     );
//   }
// }
//
// class ResponsiveWidget extends StatefulWidget {
//   const ResponsiveWidget({super.key});
//
//   @override
//   State<ResponsiveWidget> createState() => _ResponsiveWidgetState();
// }
//
// class _ResponsiveWidgetState extends State<ResponsiveWidget> {
//   String _sizeCategory = "Unknown";
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//
//     // Detect the screen width and categorize it.
//     final screenWidth = MediaQuery.of(context).size.width;
//     String newSizeCategory;
//     if (screenWidth < 600) {
//       newSizeCategory = "Small Screen";
//     } else if (screenWidth < 1200) {
//       newSizeCategory = "Medium Screen";
//     } else {
//       newSizeCategory = "Large Screen";
//     }
//
//     // Update the state if the size category changes.
//     if (newSizeCategory != _sizeCategory) {
//       setState(() {
//         _sizeCategory = newSizeCategory;
//       });
//       print('Screen size changed: $_sizeCategory');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Current Size Category: $_sizeCategory',
//         style: const TextStyle(fontSize: 24),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }
