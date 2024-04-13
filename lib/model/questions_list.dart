import './question_with_image.dart';
import './question_without_image.dart';

final List<QuestionWithoutMedia> qMododEasy = [
  QuestionWithoutMedia(
      question: 'أين المد المتصل ؟',
      options: ['السمآء', 'الضآلين', 'حكيمًا'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: '(الضآلين) مد ...',
      options: ['عوض', 'لازم', 'بدل'],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: '(حكيمًا) مد ...',
      options: ['صله', 'بدل', 'عوض'],
      correctAnswerIndex: 2),
  QuestionWithoutMedia(
      question: '(حمٓ) مد ...',
      options: ['مد لازم حرفي', 'مد عارض للسكون', 'مد جائز منفصل'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: '(ءَآلْـَٔـٰنَ) مد ..',
      options: ['لازم كلمي مخفف', 'لازم كلمي مثقل', 'عارض للسكون'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'نوع المد في (بِهِۦ وَالْأَرْحَامَ) ..........',
      options: ['مد منفصل ', 'مد صلة كبري', 'مد صلة صغرى'],
      correctAnswerIndex: 2),
  QuestionWithoutMedia(
      question: 'يمد مد الصلة الصغرى بمقدار .....',
      options: ['حركتين', '4 حركات', '6 حركات'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'نوع المد في (تَأۡكُلُوٓاْأَمۡوَٰلَكُم) ',
      options: ['مد جائز متصل', 'مد صلة صغرى', 'مد جائز منفصل'],
      correctAnswerIndex: 2),
  QuestionWithoutMedia(
      question: 'المد في (إِنَّهُۥٓأَنَا)',
      options: ['مد صله كبري', 'مد عوض', 'مد منفصل'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'كم يمد المد اللازم ',
      options: ['6 حركات', '4 حركات', 'حركتان'],
      correctAnswerIndex: 0),
]..shuffle();

final List<QuestionWithoutMedia> qNoon = [
  QuestionWithoutMedia(
      question: 'ما هي أحكام النون الساكنة والتنوين؟',
      options: [
        'اظهار حلقي _ ادغام _ إقلاب _ إخفاء',
        'اظهار شفوي _ ادغام _ إقلاب _ إخفاء',
        'اظهار مطلق _ ادغام _ إقلاب _ إخفاء',
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'حكم النون في (من يقول)',
      options: [
        'ادغام',
        'إخفاء',
        'إقلاب',
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question:
          'ما الحكمُ التجويدِيُّ الواردُ في قوله تعالى: ﴿ءَايَةً لِّلْمُؤْمِنِينَ﴾ (الفتح: ٢٠)؟',
      options: [
        'إدغام بلا غنة',
        'إخفاء',
        'إظهار',
        'إدغام بغنة',
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'ما المقصودُ بالإقلابِ اصطلاحًا؟',
      options: [
        'قَلْبُ النّونِ السّاكِنَةِ أَوِ التَّنْوينِ عِنْدَ الباءِ ميمًا مُخْفاةً بغيرِغُنَّةٍ',
        'قَلْبُ النّونِ السّاكِنَةِ أَوِ التَّنْوينِ ميمًا مُخْفاةً بِغُنَّةٍ إذا تلاها حرف الباءِ',
        'قَلْبُ النّونِ السّاكِنَةِ أَوِ التَّنْوينِ عِنْدَ الباءِ ميمًا مظهَرةً بِغُنَّةٍ',
        'قَلْبُ النّونِ السّاكِنَةِ أَوِ التَّنْوينِ عِنْدَ الميمِ باءً مُخْفاةً بِغُنَّةٍ',
      ],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'إذا جاءت نون ساكنة وبعدها حرف "الهاء" يكون الحكم إدغام:',
      options: ['صح', 'خطأ'],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: '"ولا شفيعٍ أفلا" مثال على حكم الإظهار',
      options: ['صح', 'خطأ'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'ما حكم التنوين في (إِنَّ ٱللَّهَ سَمِيعُۢ بَصِيرٌ)',
      options: [
        'ادغام',
        'إخفاء',
        'إقلاب',
      ],
      correctAnswerIndex: 2),
  QuestionWithoutMedia(
      question: 'حكم التنوين في (وَٱللَّهُ غَفُورٞ رَّحِيمٞ)',
      options: [
        'ادغام بغير غنة',
        'ادغام بغة',
        'إقلاب',
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'حكم النون في (مِن شَرِّ مَا خَلَقَ)',
      options: [
        'ادغام',
        'إخفاء',
        'إقلاب',
      ],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'حكم التنوين في (بِأَمۡوَٰلٖ وَبَنِينَ)',
      options: [
        'ادغام بغير غنة',
        'ادغام بغنة',
        'إقلاب',
        'اخفاء',
      ],
      correctAnswerIndex: 1),
]..shuffle();

final List<QuestionWithoutMedia> qMeem = [
  QuestionWithoutMedia(
      question: 'ما أحكام الميم الساكنة؟',
      options: [
        'اظهار ـ ادغام ـ اقلاب',
        'اظهار ـ ادغام ـ اخفاء',
        'اظهار ـ ادغام ـ اقلاب ـ اخفاء',
      ],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'حكم الميم في (وَهُم بِٱلۡعُدۡوَةِ ٱلۡقُصۡوَىٰ)',
      options: [
        'اقلاب',
        'اخفاء',
        'ادغام',
      ],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'ما حكم الميم في (وَلَكُم مَّا كَسَبۡتُمۡۖ)',
      options: [
        'ادغام',
        'اظهار',
        'اخفاء',
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'ما أحكام الميم في (صُمُّۢ بُكۡمٌ عُمۡيٞ)',
      options: [
        'اظهار ـ ادغام ',
        'اخفاء ـ اظهار',
        'اقلاب ـ اخفاء',
      ],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'ما حكم الميم في (أَلَمۡ يَجۡعَلۡ)',
      options: [
        'اظهار',
        'اخفاء',
        'اقلاب',
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'ما حكم الميم في (ذَرَأَكُمۡ فِي ٱلۡأَرۡضِ)',
      options: [
        'ادغام',
        'اظهار',
        'اخفاء',
      ],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'ما هو حرف الإخفاء عند الميم',
      options: [
        'الميم',
        'الباء',
        'النون',
      ],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'ما هو حرف الادغام عند الميم',
      options: [
        'الميم',
        'الباء',
        'النون',
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'ما حكم الميم في (أَم مَّنۡ خَلَقۡنَآۚ)',
      options: [
        'ادغام',
        'اظهار',
        'اخفاء',
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'ما حكم الميم في (عَلَيۡكُمۡ أَنفُسَكُمۡۖ)',
      options: [
        'ادغام',
        'اظهار',
        'اخفاء',
      ],
      correctAnswerIndex: 1),
]..shuffle();

final List<QuestionWithoutMedia> qtajweedEasy = [
  QuestionWithoutMedia(
      question: 'التجويد اصطلاحا...',
      options: [
        'إعطاء كل حرف حقه',
        'إعطاء كل حرف حقه ومستحقه',
        'إعطاء كل حرف مستحقه'
      ],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'العلم بالتجويد...',
      options: ['فرض كفايه', 'فرض عين'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'العمل بالتجويد...',
      options: ['فرض كفايه', 'فرض عين'],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'غاية دراسة علم التجويد...',
      options: ['صون اللسان عن اللحن والتحريف', 'تزيين الصوت'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'أقسام اللحن...',
      options: ['قسمين', 'أقسام 3', 'أقسام 6'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'تبديل التاء طاء لحن...',
      options: ['جلي', 'خفي'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'تبديل الضمه فتحه لحن...',
      options: ['جلي', 'خفي'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'كم وجه للاستعاذة مع البسملة أول السورة؟',
      options: ['4', '3', '2'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'ما الأوجه التي بين السورتين؟',
      options: [
        'قطع الجميع - وصل الجميع - قطع الأول ووصل الثاني بالثالث',
        'وصل الأول بالثاني وقطع الثالث - قطع الجميع - وصل الجميع'
      ],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'ما الأوجه بين الأنفال وبراءه؟',
      options: ['القطع - السكت - الوصل', 'الإشمام - الروم - الوصل'],
      correctAnswerIndex: 0),
]..shuffle();

final List<QuestionWithoutMedia> qlam = [
  QuestionWithoutMedia(
      question: 'حكم ال في (العليم)',
      options: ['الإظهار', 'الإدغام'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'حكم ال في (الطارق)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'حكم اللام في (قل سيروا)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'حكم اللام في ( ألسنتكم)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'حكم اللام في (قل لكم)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'حكم اللام في (وقل رب)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'حكم ال في (الشاكرين)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'حكم ال في (العالمين)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'حكم ال في (الليل)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'حكم ال في (قل جاء)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 1),
]..shuffle();

final List<QuestionWithoutMedia> qMethlan = [
  QuestionWithoutMedia(
      question: 'قل لكم',
      options: ['متماثلان', 'متقاربان', 'متجانسان'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'وقد دخلوا',
      options: ['متماثلان', 'متقاربان', 'متجانسان'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'مناسككم',
      options: ['متماثلان', 'متقاربان', 'متجانسان'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الحكم في (أجيبت دعوتكما)',
      options: ['ادغام', 'اقلاب', 'اخفاء'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الحكم في (إذ ظلمتم)',
      options: ['ادغام', 'اخفاء', 'اظهار'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الحكم في (الصالحات طوبى)',
      options: ['اظهار', 'ادغام', 'اقلاب'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الحكم في (اركب معنا)',
      options: ['ادغام', 'اخفاء', 'اظهار'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الحكم في (شققنا)',
      options: ['متماثلان صغير', 'متماثلان كبير', 'متماثلان مطلق'],
      correctAnswerIndex: 2),
  QuestionWithoutMedia(
      question: 'ينقسم المتقاربان إلى...',
      options: ['أقسام 3', 'قسمين', '4 أقسام'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'المتجانسان هما...',
      options: [
        'الحرفان اللذان اتفقا مخرجا واختلفا صفة',
        'الحرفان اللذان اتفقا مخرجا واتفقا صفة',
        'الحرفان اللذان اختلفا مخرجا واختلفا صفة'
      ],
      correctAnswerIndex: 0),
]..shuffle();

final List<QuestionWithoutMedia> qTafkhemEasy = [
  QuestionWithoutMedia(
      question: 'الحروف المفخمة دائما...',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'كم عدد الحروف المرققه التي لا تبقى على ترقيقها؟',
      options: ['7 أحرف', '5 أحرف', '3 أحرف'],
      correctAnswerIndex: 2),
  QuestionWithoutMedia(
      question: 'تفخيم وترقيق الألف اللينه تابع لما قبلها..',
      options: ['صح', 'خطأ'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'اللام في لفظ الجلالة (دينِ الله)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'تفخم لام لفظ الجلالة إذا وقع قبلها فتح أو ضم',
      options: ['صح', 'خطأ'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الراء في (رزقا)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الراء في (مرية)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الراء في (ولا تصعر خدك للناس)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 0),
  QuestionWithoutMedia(
      question: 'الراء في (اركض)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 1),
  QuestionWithoutMedia(
      question: 'الراء في (ارجعي)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 1),
]..shuffle();

final List<QuestionWithImageOrSound> qmakharej = [
  QuestionWithImageOrSound(
      question: 'الحروف المفخمة دائما...',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0,
      imagePath: 'assets/image/edit-4.png',
      soundPath: ''),
  QuestionWithImageOrSound(
      question: 'الحروف المفخمة دائما...',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0,
      imagePath: 'assets/image/edit-4.png',
      soundPath: ''),
  QuestionWithImageOrSound(
      question: '.11111',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0,
      imagePath: '',
      soundPath: 'assets/sounds/click-button.mp3'),
  QuestionWithImageOrSound(
      question: 'الما.11111..',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0,
      imagePath: '',
      soundPath: ''),
]..shuffle();

final List<QuestionWithImageOrSound> qsifat = [
  QuestionWithImageOrSound(
      question: 'الما.11111..',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0,
      imagePath: 'assets/image/edit-4.png',
      soundPath: ''),
  QuestionWithImageOrSound(
      question: '.11111',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0,
      imagePath: '',
      soundPath: ''),
  QuestionWithImageOrSound(
      question: '..',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0,
      imagePath: '',
      soundPath: 'assets/sounds/click-button.mp3'),
]..shuffle();

final List<QuestionWithoutMedia> qMixAll = [
  ...qMeem,
  ...qMethlan,
  ...qMododEasy,
  ...qNoon,
  ...qTafkhemEasy,
  ...qlam,
  ...qtajweedEasy,
]..shuffle();
