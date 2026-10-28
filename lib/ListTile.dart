import 'todo_details_page.dart';

onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => TodoDetailsPage(todo: todo),
    ),
  );
},