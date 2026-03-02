import 'package:flutter/material.dart';

class MyDaySection extends StatelessWidget {
  const MyDaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _MyDayCard(
            name: index == 0 ? "Your Story" : "User $index",
            isAddStory: index == 0,
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10),
        itemCount: 6,
      ),
    );
  }
}

class _MyDayCard extends StatelessWidget {
  final String name;
  final bool isAddStory;

  const _MyDayCard({required this.name, this.isAddStory = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade300,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.grey.shade400, Colors.grey.shade600],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            Positioned(
              top: 10,
              left: 10,
              child: isAddStory
                  ? const CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.add, color: Colors.white),
                    )
                  : const CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.blue),
                    ),
            ),
            Positioned(
              bottom: 12,
              left: 10,
              right: 10,
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
