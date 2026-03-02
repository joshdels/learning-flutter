import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {
  const PostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                "World of Shapefiles",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("7 hr"),
              trailing: Icon(Icons.more_horiz),
            ),

            const SizedBox(height: 8),
            const Text(
              "This is the latest news of the world of shapefiles!",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 12),
            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _PostButton(icon: Icons.thumb_up_alt_outlined, label: "Like"),
                _PostButton(icon: Icons.comment_outlined, label: "Comment"),
                _PostButton(icon: Icons.share_outlined, label: "Share"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PostButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _PostButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 20),
      label: Text(label),
    );
  }
}
