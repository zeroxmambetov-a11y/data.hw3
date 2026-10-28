import 'package:flutter/material.dart';
import 'todo-list.dart';

class TodoDetailsPage extends StatefulWidget {
  final Todo todo;

  const TodoDetailsPage({super.key, required this.todo});

  @override
  State<TodoDetailsPage> createState() => _TodoDetailsPageState();
}

class _TodoDetailsPageState extends State<TodoDetailsPage> {
  late final TextEditingController titleController;

  @override
  void initState() {
    super.initState();

    titleController = TextEditingController(text: widget.todo.title);
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Детали заметки'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: titleController,
          decoration: const InputDecoration(
            labelText: 'Название заметки',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
