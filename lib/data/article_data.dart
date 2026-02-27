import '../models/article.dart';

class ArticleRepository {
  static final List<Article> articles = [
    Article(
      title: 'you are the stories you tell yourself',
      desc:
          'and a single sentence can shape the architecture of your entire life.',
      content:
          '''These sentences were the scripts I recited, time after time, not only to others but also to myself. And while they were true at the time, they slowly became the barriers I accidentally built that hindered my growth.
Yes, I’m timid. But I also spoke up in rooms full of people to share what I’m passionate about.
Yes, I overthink. But I also knew how to step back, take a deep breath, and let go.
Yes, I’m emotional. But that didn’t mean I was irrational.

We are all made of contradictions, full of conflicts and complexities. But somehow, there are certain stories that we unconsciously cling to, while silently discarding the parts that don’t fit the script, the other truths about us.

Over time, these stories harden; they take root inside our brains, settle deep into our hearts. They can either ground us or cage us. And if you’re not careful, a single sentence can become a prophecy you live by. Not because it’s true, but because you keep telling yourself it is''',
      author: 'Camel',
      date: DateTime(2025, 6, 6),
    ),
    Article(
      title: 'Where to find media to consume instead of doomscrolling',
      desc:
          'My ultimate guide of publications, magazines, podcasts, YouTube channels and fun corners of the internet where I source my media from.',
      content:
          '''I did my very best to categorize these as there are A LOT of them, however, a great deal of these have a wide array of content that doesn’t necessarily fit into just one category. I decided to organize them by the content I personally enjoy from each place, but feel free to explore as all of these are filled with incredible pieces.

I also highly suggest subscribing to the newsletters of the publications you enjoy, that way you can keep track of all of them in your inbox, while at the same time creating a digital space where you can find exclusively long-form content. If you have a secondary email that you don’t use much, use that one, if not, create a new one so that your personal emails don’t get mixed. I have found that having this has allowed me to scratch the itch of scrolling, especially the one I get first thing in the morning (even though ideally there should be no screen time so soon after waking up), as it allows me to plan out what I want to read throughout the day/week.''',
      author: 'Camel',
      date: DateTime(2025, 6, 5),
    ),
  ];
}
