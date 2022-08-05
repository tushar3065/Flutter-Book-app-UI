import 'package:book_app2/models/book.dart';

List<Book> dummyBooks = [
  Book(
      pages: '200',
      size: '3.57 MB',
      id: 'a1',
      imageUrl:
          'https://covers.zlibcdn2.com/covers299/books/a6/88/ca/a688caae0818e4d212a3cccf558c125d.jpg',
      title: 'Beach Read',
      branch: ['a1', 'a6'],
      //branch: ['civil', 'meta'],
      description:
          'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
      author: 'Emily Henry',
      publication: 'publication Name',
      year: '2018',
      edition: '2nd',
      downloadUrl:
          "https://firebasestorage.googleapis.com/v0/b/chat-app-2ba53.appspot.com/o/user_image%2FBeach%20Read%20by%20Emily%20Henry%20(z-lib.org).epub?alt=media&token=c5e5c794-56b2-4c59-b888-df0d2a76eb13"),
  Book(
    id: 'a2',
    pages: '200',
    size: '3.57 MB',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/80/8c/a0/808ca0df9660b7b391ac077a7ea971d1.jpg',
    title: 'Advanced Grammar in Use',
    branch: ['a2', 'a3'],
    // branch: ['comp', 'electrical'],
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    publication: 'publication Name',
    year: '2018',
    edition: '2nd',
    author: 'Martin Hewings',
    downloadUrl: "https://firebasestorage.googleapis.com/v0/b/chat-app-2ba53.appspot.com/o/user_image%2FEnglish%20Vocabulary%20in%20Use%20Advanced%20by%20Michael%20McCarthy%2C%20Felicity%20ODell%20(z-lib.org).pdf?alt=media&token=284866f1-fd71-4594-97a0-828baca559dc"
  ),
  Book(
    id: 'a3',
    pages: '200',
    size: '3.57 MB',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/a2/c7/f6/a2c7f6a1dd4c6157057ecbceeef96ee0.jpg',
    year: '2018',
    edition: '2nd',
    title: 'A Good Girl\'s Guide to Murder',
    branch: ['a3', 'a2'],
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    author: 'Brian P. Clearky',
    publication: 'publication Name',
    downloadUrl: "https://firebasestorage.googleapis.com/v0/b/chat-app-2ba53.appspot.com/o/user_image%2FA%20Good%20Girls%20Guide%20to%20Murder%20by%20Holly%20Jackson%20(z-lib.org).epub?alt=media&token=587735c6-ecfb-465e-a982-ccd92848a796"
  ),
  Book(
    id: 'a4',
    pages: '200',
    size: '3.57 MB',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/ce/d6/fe/ced6fe6e219dea15cb0fd2573f8164b3.jpg',
    title: 'Punk 57',
    branch: ['a4', 'a5', 'a3'],
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    year: '2018',
    edition: '2nd',
    publication: 'publication Name',
    author: 'Blandon Rachel',
    downloadUrl: "https://firebasestorage.googleapis.com/v0/b/chat-app-2ba53.appspot.com/o/user_image%2FPunk%2057%20by%20Douglas%2C%20Penelope%20(z-lib.org).epub?alt=media&token=762f0cd1-da4f-4fa7-b4d9-3bd6b574fa8f"
  ),
  Book(
    id: 'a5',
    pages: '200',
    size: '3.57 MB',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/9a/b9/ae/9ab9ae245372ce115003076822f8a798.jpg',
    title: 'The Flatshare',
    branch: ['a5', 'a10'],
    year: '2018',
    edition: '2nd',
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    author: 'Tyler',
    publication: 'publication Name',
    downloadUrl: "https://firebasestorage.googleapis.com/v0/b/chat-app-2ba53.appspot.com/o/user_image%2FThe%20Flatshare%20by%20Beth%20OLeary%20(z-lib.org).epub?alt=media&token=054aa22a-4841-49ae-b1df-8bf9e4b847a4"
  ),
  Book(
    id: 'a6',
    pages: '200',
    size: '3.57 MB',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/06/b9/19/06b91995e6efae373dc6301b82afefc5.jpg',
    title: 'English Collocations in Use ',
    branch: ['a6', 'a9'],
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    year: '2018',
    edition: '2nd',
    publication: 'publication Name',
    author: 'Brian Webster',
    downloadUrl: "",
  ),
  Book(
    pages: '200',
    downloadUrl: "",
    size: '3.57 MB',
    id: 'a7',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/01/57/a4/0157a4e06f7eb726a36f3e0ef75ebc6b.jpg',
    title: 'The Laws of Human Nature',
    branch: ['a7'],
    year: '2018',
    edition: '2nd',
    publication: 'publication Name',
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    author: 'David R. Beach',
  ),
  Book(
    id: 'a8',
    pages: '200',
    downloadUrl: "",
    size: '3.57 MB',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/cc/dd/39/ccdd39a77dbc245be746009c9cdbb91d.jpg',
    year: '2018',
    edition: '2nd',
    title: 'The Subtle Art of Not Giving a Fuck',
    branch: ['a8', 'a9'],
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    author: 'John H. Walton',
    publication: 'publication Name',
  ),
  Book(
    id: 'a9',
    downloadUrl: "",
    year: '2018',
    pages: '200',
    size: '3.57 MB',
    edition: '2nd',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/de/5a/a4/de5aa4ebcaf144ef969762dd311b4931.jpg',
    title: 'We Hunt the Flame',
    branch: ['a7', 'a9'],
    publication: 'publication Name',
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    author: 'Ted Cooper',
  ),
  Book(
    id: 'a10',
    downloadUrl: "",
    pages: '200',
    size: '3.57 MB',
    imageUrl:
        'https://covers.zlibcdn2.com/covers299/books/57/78/71/577871dd23aaab8d107b77eac8856744.jpg',
    year: '2018',
    edition: '2nd',
    title: 'The Cruel Prince',
    branch: ['a10', 'a6', 'a8'],
    description:
        'Thomas Calculus  helps students reach the level of mathematical proficiency and maturity you require, but with support for students who need it through its balance of clear and intuitive explanations, current applications, and generalized concepts. In the 14th Edition, new co-author Christopher Heil (Georgia Institute of Technology) partners with author Joel Hass to preserve what is best about Thomas time-tested text while reconsidering every word and every piece of art with todays students in mind. The result is a text that goes beyond memorizing formulas and routine procedures to help students generalize key concepts and develop deeper understanding. ',
    publication: 'publication Name',
    author: 'David R.',
  ),
];
