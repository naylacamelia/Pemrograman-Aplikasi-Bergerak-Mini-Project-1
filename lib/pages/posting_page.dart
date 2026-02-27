import 'package:flutter/material.dart';
import '../data/article_data.dart';
import '../models/article.dart';
import 'package:google_fonts/google_fonts.dart';

class PostingPage extends StatefulWidget {
  final Article? article;
  final int? index;

  const PostingPage({super.key, this.article, this.index});

  @override
  State<PostingPage> createState() => _PostingPageState();
}

class _PostingPageState extends State<PostingPage> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _authorController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.article != null) {
      _titleController.text = widget.article!.title;
      _authorController.text = widget.article!.author;
      _contentController.text = widget.article!.content;
      _descController.text = widget.article!.desc ?? '';
    }
  }

  void _saveArticle() {
    if (_titleController.text.isEmpty ||
        _authorController.text.isEmpty ||
        _contentController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    final article = Article(
      title: _titleController.text,
      desc: _descController.text,
      author: _authorController.text,
      content: _contentController.text,
      date: widget.article?.date,
    );

    if (widget.index == null) {
      ArticleRepository.articles.add(article);
    } else {
      ArticleRepository.articles[widget.index!] = article;
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.article != null;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;

        final isEmpty =
            _titleController.text.isEmpty &&
            _descController.text.isEmpty &&
            _authorController.text.isEmpty &&
            _contentController.text.isEmpty &&
            _contentController.text.isEmpty;

        if (isEmpty) {
          Navigator.pop(context);
          return;
        }

        final confirm = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Wanna go back?'),
            content: const Text('Your draft will not be saved.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Yes', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        );

        if (confirm == true) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            isEdit ? 'Back' : 'Back',
            style: GoogleFonts.rubik(fontWeight: FontWeight.w500),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: TextButton(
                onPressed: _saveArticle,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  isEdit ? "Update" : "Publish",
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: _titleController,
                      style: GoogleFonts.rubik(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 27, 27, 27),
                      ),
                      decoration: const InputDecoration(
                        hintText: "Add Title",
                        border: InputBorder.none,
                      ),
                    ),
                    TextField(
                      controller: _descController,
                      style: GoogleFonts.rubik(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 86, 86, 86),
                      ),
                      decoration: const InputDecoration(
                        hintText: "Add description...",
                        border: InputBorder.none,
                      ),
                    ),
                    TextField(
                      controller: _authorController,
                      style: GoogleFonts.rubik(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 139, 139, 139),
                      ),
                      decoration: const InputDecoration(
                        hintText: "Add your name",
                        border: InputBorder.none,
                      ),
                    ),

                    const Divider(height: 40),
                    // CONTENT
                    TextField(
                      controller: _contentController,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      style: GoogleFonts.merriweather(
                        fontSize: 16,
                        height: 1.8,
                        color: const Color.fromARGB(255, 27, 27, 27),
                      ),
                      decoration: const InputDecoration(
                        hintText: "Write here...",
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
