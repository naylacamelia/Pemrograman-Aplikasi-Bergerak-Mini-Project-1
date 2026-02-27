class Article {
  String title;
  String? desc;
  String author;
  String content;
  String status;
  final DateTime date;

  Article({
    required this.title,
    this.desc,
    required this.author,
    required this.content,
    this.status = 'published',
    DateTime? date,
  }) : date = date ?? DateTime.now();
  
  String get formattedDate {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return "${months[date.month - 1]} ${date.day}, ${date.year}";
  }
}
