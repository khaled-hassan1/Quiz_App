import './question_with_image.dart';
import './question_with_sound.dart';
import './question_without_media.dart';

final List<QuestionWithoutMedia> qMododEasy = [
  const QuestionWithoutMedia(
      question: 'أين المد المتصل ؟',
      options: ['السمآء', 'الضآلين', 'حكيمًا'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: '(الضآلين) مد ...',
      options: ['عوض', 'لازم', 'بدل'],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: '(حكيمًا) مد ...',
      options: ['صله', 'بدل', 'عوض'],
      correctAnswerIndex: 2),
  const QuestionWithoutMedia(
      question: '(حمٓ) مد ...',
      options: ['مد لازم حرفي', 'مد عارض للسكون', 'مد جائز منفصل'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: '(ءَآلْـَٔـٰنَ) مد ..',
      options: ['لازم كلمي مخفف', 'لازم كلمي مثقل', 'عارض للسكون'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'نوع المد في (بِهِۦ وَالْأَرْحَامَ) ..........',
      options: ['مد منفصل ', 'مد صلة كبري', 'مد صلة صغرى'],
      correctAnswerIndex: 2),
  const QuestionWithoutMedia(
      question: 'يمد مد الصلة الصغرى بمقدار .....',
      options: ['حركتين', '4 حركات', '6 حركات'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'نوع المد في (تَأۡكُلُوٓاْأَمۡوَٰلَكُم) ',
      options: ['مد جائز متصل', 'مد صلة صغرى', 'مد جائز منفصل'],
      correctAnswerIndex: 2),
  const QuestionWithoutMedia(
      question: 'المد في (إِنَّهُۥٓأَنَا)',
      options: ['مد صله كبري', 'مد عوض', 'مد منفصل'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'كم يمد المد اللازم ',
      options: ['6 حركات', '4 حركات', 'حركتان'],
      correctAnswerIndex: 0),
]..shuffle();

final List<QuestionWithoutMedia> qNoon = [
  const QuestionWithoutMedia(
      question: 'ما هي أحكام النون الساكنة والتنوين؟',
      options: [
        'اظهار حلقي _ ادغام _ إقلاب _ إخفاء',
        'اظهار شفوي _ ادغام _ إقلاب _ إخفاء',
        'اظهار مطلق _ ادغام _ إقلاب _ إخفاء',
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'حكم النون في (من يقول)',
      options: [
        'ادغام',
        'إخفاء',
        'إقلاب',
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question:
          'ما الحكمُ التجويدِيُّ الواردُ في قوله تعالى: ﴿ءَايَةً لِّلْمُؤْمِنِينَ﴾ (الفتح: ٢٠)؟',
      options: [
        'إدغام بلا غنة',
        'إخفاء',
        'إظهار',
        'إدغام بغنة',
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'ما المقصودُ بالإقلابِ اصطلاحًا؟',
      options: [
        'قَلْبُ النّونِ السّاكِنَةِ أَوِ التَّنْوينِ عِنْدَ الباءِ ميمًا مُخْفاةً بغيرِغُنَّةٍ',
        'قَلْبُ النّونِ السّاكِنَةِ أَوِ التَّنْوينِ ميمًا مُخْفاةً بِغُنَّةٍ إذا تلاها حرف الباءِ',
        'قَلْبُ النّونِ السّاكِنَةِ أَوِ التَّنْوينِ عِنْدَ الباءِ ميمًا مظهَرةً بِغُنَّةٍ',
        'قَلْبُ النّونِ السّاكِنَةِ أَوِ التَّنْوينِ عِنْدَ الميمِ باءً مُخْفاةً بِغُنَّةٍ',
      ],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'إذا جاءت نون ساكنة وبعدها حرف "الهاء" يكون الحكم إدغام:',
      options: ['صح', 'خطأ'],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: '"ولا شفيعٍ أفلا" مثال على حكم الإظهار',
      options: ['صح', 'خطأ'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'ما حكم التنوين في (إِنَّ ٱللَّهَ سَمِيعُۢ بَصِيرٌ)',
      options: [
        'ادغام',
        'إخفاء',
        'إقلاب',
      ],
      correctAnswerIndex: 2),
  const QuestionWithoutMedia(
      question: 'حكم التنوين في (وَٱللَّهُ غَفُورٞ رَّحِيمٞ)',
      options: [
        'ادغام بغير غنة',
        'ادغام بغة',
        'إقلاب',
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'حكم النون في (مِن شَرِّ مَا خَلَقَ)',
      options: [
        'ادغام',
        'إخفاء',
        'إقلاب',
      ],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
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
  const QuestionWithoutMedia(
      question: 'ما أحكام الميم الساكنة؟',
      options: [
        'اظهار ـ ادغام ـ اقلاب',
        'اظهار ـ ادغام ـ اخفاء',
        'اظهار ـ ادغام ـ اقلاب ـ اخفاء',
      ],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'حكم الميم في (وَهُم بِٱلۡعُدۡوَةِ ٱلۡقُصۡوَىٰ)',
      options: [
        'اقلاب',
        'اخفاء',
        'ادغام',
      ],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'ما حكم الميم في (وَلَكُم مَّا كَسَبۡتُمۡۖ)',
      options: [
        'ادغام',
        'اظهار',
        'اخفاء',
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'ما أحكام الميم في (صُمُّۢ بُكۡمٌ عُمۡيٞ)',
      options: [
        'اظهار ـ ادغام ',
        'اخفاء ـ اظهار',
        'اقلاب ـ اخفاء',
      ],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'ما حكم الميم في (أَلَمۡ يَجۡعَلۡ)',
      options: [
        'اظهار',
        'اخفاء',
        'اقلاب',
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'ما حكم الميم في (ذَرَأَكُمۡ فِي ٱلۡأَرۡضِ)',
      options: [
        'ادغام',
        'اظهار',
        'اخفاء',
      ],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'ما هو حرف الإخفاء عند الميم',
      options: [
        'الميم',
        'الباء',
        'النون',
      ],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'ما هو حرف الادغام عند الميم',
      options: [
        'الميم',
        'الباء',
        'النون',
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'ما حكم الميم في (أَم مَّنۡ خَلَقۡنَآۚ)',
      options: [
        'ادغام',
        'اظهار',
        'اخفاء',
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'ما حكم الميم في (عَلَيۡكُمۡ أَنفُسَكُمۡۖ)',
      options: [
        'ادغام',
        'اظهار',
        'اخفاء',
      ],
      correctAnswerIndex: 1),
]..shuffle();

final List<QuestionWithoutMedia> qtajweedEasy = [
  const QuestionWithoutMedia(
      question: 'التجويد اصطلاحا...',
      options: [
        'إعطاء كل حرف حقه',
        'إعطاء كل حرف حقه ومستحقه',
        'إعطاء كل حرف مستحقه'
      ],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'العلم بالتجويد...',
      options: ['فرض كفايه', 'فرض عين'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'العمل بالتجويد...',
      options: ['فرض كفايه', 'فرض عين'],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'غاية دراسة علم التجويد...',
      options: ['صون اللسان عن اللحن والتحريف', 'تزيين الصوت'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'أقسام اللحن...',
      options: ['قسمين', 'أقسام 3', 'أقسام 6'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'تبديل التاء طاء لحن...',
      options: ['جلي', 'خفي'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'تبديل الضمه فتحه لحن...',
      options: ['جلي', 'خفي'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'كم وجه للاستعاذة مع البسملة أول السورة؟',
      options: ['4', '3', '2'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'ما الأوجه التي بين السورتين؟',
      options: [
        'قطع الجميع - وصل الجميع - قطع الأول ووصل الثاني بالثالث',
        'وصل الأول بالثاني وقطع الثالث - قطع الجميع - وصل الجميع'
      ],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'ما الأوجه بين الأنفال وبراءه؟',
      options: ['القطع - السكت - الوصل', 'الإشمام - الروم - الوصل'],
      correctAnswerIndex: 0),
]..shuffle();

final List<QuestionWithoutMedia> qlam = [
  const QuestionWithoutMedia(
      question: 'حكم ال في (العليم)',
      options: ['الإظهار', 'الإدغام'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'حكم ال في (الطارق)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'حكم اللام في (قل سيروا)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'حكم اللام في ( ألسنتكم)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'حكم اللام في (قل لكم)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'حكم اللام في (وقل رب)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'حكم ال في (الشاكرين)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'حكم ال في (العالمين)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'حكم ال في (الليل)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'حكم ال في (قل جاء)',
      options: ['الإدغام', 'الإظهار'],
      correctAnswerIndex: 1),
]..shuffle();

final List<QuestionWithoutMedia> qMethlan = [
  const QuestionWithoutMedia(
      question: 'قل لكم',
      options: ['متماثلان', 'متقاربان', 'متجانسان'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'وقد دخلوا',
      options: ['متماثلان', 'متقاربان', 'متجانسان'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'مناسككم',
      options: ['متماثلان', 'متقاربان', 'متجانسان'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الحكم في (أجيبت دعوتكما)',
      options: ['ادغام', 'اقلاب', 'اخفاء'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الحكم في (إذ ظلمتم)',
      options: ['ادغام', 'اخفاء', 'اظهار'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الحكم في (الصالحات طوبى)',
      options: ['اظهار', 'ادغام', 'اقلاب'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الحكم في (اركب معنا)',
      options: ['ادغام', 'اخفاء', 'اظهار'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الحكم في (شققنا)',
      options: ['متماثلان صغير', 'متماثلان كبير', 'متماثلان مطلق'],
      correctAnswerIndex: 2),
  const QuestionWithoutMedia(
      question: 'ينقسم المتقاربان إلى...',
      options: ['أقسام 3', 'قسمين', '4 أقسام'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'المتجانسان هما...',
      options: [
        'الحرفان اللذان اتفقا مخرجا واختلفا صفة',
        'الحرفان اللذان اتفقا مخرجا واتفقا صفة',
        'الحرفان اللذان اختلفا مخرجا واختلفا صفة'
      ],
      correctAnswerIndex: 0),
]..shuffle();

final List<QuestionWithoutMedia> qTafkhemEasy = [
  const QuestionWithoutMedia(
      question: 'الحروف المفخمة دائما...',
      options: ['7 أحرف', '5 أحرف', 'حرف'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'كم عدد الحروف المرققه التي لا تبقى على ترقيقها؟',
      options: ['7 أحرف', '5 أحرف', '3 أحرف'],
      correctAnswerIndex: 2),
  const QuestionWithoutMedia(
      question: 'تفخيم وترقيق الألف اللينه تابع لما قبلها..',
      options: ['صح', 'خطأ'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'اللام في لفظ الجلالة (دينِ الله)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'تفخم لام لفظ الجلالة إذا وقع قبلها فتح أو ضم',
      options: ['صح', 'خطأ'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الراء في (رزقا)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الراء في (مرية)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الراء في (ولا تصعر خدك للناس)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 0),
  const QuestionWithoutMedia(
      question: 'الراء في (اركض)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 1),
  const QuestionWithoutMedia(
      question: 'الراء في (ارجعي)',
      options: ['مرققه', 'مفخمه'],
      correctAnswerIndex: 1),
]..shuffle();

final List<QuestionWithImage> qMakharej = [
  const QuestionWithImage(
    question: 'من باطن الشفة السفلى وأطراف الثنايا العليا مخرج حرف ...',
    options: ['الثاء', 'الواو المدية', 'الفاء', 'الميم'],
    correctAnswerIndex: 2,
    imagePath: 'assets/image/fa.png',
  ),
  const QuestionWithImage(
    question:
        'مما بين طرف اللسان وأطراف الثنايا العليا خارجا طرفه قليلا مخرج ...',
    options: ['الميم والباء', 'السين والصاد والزاي', 'الظاء والذال والثاء'],
    correctAnswerIndex: 2,
    imagePath: 'assets/image/thal.png',
  ),
  const QuestionWithImage(
    question: 'من طرف اللسان بينه وبين ما فويق الثنايا العليا يخرج حرف ...',
    options: ['الراء', 'اللام', 'النون'],
    correctAnswerIndex: 2,
    imagePath: 'assets/image/noon.png',
  ),
  const QuestionWithImage(
    question:
        'من أدنى حافني اللسان معا إلى منتهى طرف اللسان وما يحاذيهما من الحنك الأعلى مما فويق الضاحكين والنابين والرباعيتين والثنيتين',
    options: ['النون', 'الراء', 'اللام'],
    correctAnswerIndex: 2,
    imagePath: 'assets/image/lam.png',
  ),
  const QuestionWithImage(
    question:
        'من مخرج النون من طرف اللسان بينه وبين ما فويق الثنايا العليا غير أنها أدخل في ظهر اللسان قليلا',
    options: ['الراء', 'اللام', 'النون'],
    correctAnswerIndex: 0,
    imagePath: 'assets/image/ra.png',
  ),
  const QuestionWithImage(
    question: 'مما بين طرف اللسان وأصول الثنايا العليا',
    options: ['الطاء والدال والتاء', 'الدال', 'الطاء', 'السين'],
    correctAnswerIndex: 0,
    imagePath: 'assets/image/dal.png',
  ),
  const QuestionWithImage(
    question: 'تخرج من الفرجة التي بين طرف اللسان والثنايا العليا ...',
    options: ['التاء', 'السين', 'السين والصاد والزاي'],
    correctAnswerIndex: 2,
    imagePath: 'assets/image/sen.png',
  ),
  const QuestionWithImage(
    question: 'مما بين جذر اللسان والحنك اللحمي واللهاة',
    options: ['الجيم والشين والياء غبر المدية', 'القاف والكاف', 'الغين والخاء'],
    correctAnswerIndex: 2,
    imagePath: 'assets/image/kha.png',
  ),
  const QuestionWithImage(
    question:
        'من أقصى اللسان وما يليه من الحنك الأعلى وهو أسفل من مخرج القاف قليلا',
    options: ['الخاء', 'الضاد', 'الكاف'],
    correctAnswerIndex: 2,
    imagePath: 'assets/image/kaf.png',
  ),
  const QuestionWithImage(
    question: 'من أقصى اللسان وما فوقه من الحنك الأعلى',
    options: ['الخاء', 'القاف', 'الكاف'],
    correctAnswerIndex: 1,
    imagePath: 'assets/image/kaaf.png',
  ),
  const QuestionWithImage(
    question: 'من بين أول حافة اللسان وما يليها من الأضراس',
    options: ['الخاء', 'الضاد', 'اللام'],
    correctAnswerIndex: 1,
    imagePath: 'assets/image/dAd.png',
  ),
]..shuffle();

final List<QuestionWithoutMedia> qSifat = [
  const QuestionWithoutMedia(
    question: 'الصوت الذي يهتز الوتران الصوتيان عند النطق بالحرف تعريف صفة ...',
    options: ['الجهر', 'الهمس', 'الرخاوة'],
    correctAnswerIndex: 0,
  ),
  const QuestionWithoutMedia(
    question:
        'الصوت الذي لا يهتز الوتران الصوتيان عند النطق بالحرف تعريف صفة ...',
    options: ['الجهر', 'الهمس', 'الرخاوة'],
    correctAnswerIndex: 1,
  ),
  const QuestionWithoutMedia(
    question: 'الصوت الذي ينتج بحبس النفس في المخرج ثم اطلاقه تعريف صفة ...',
    options: ['الشدة', 'البينية', 'الهمس'],
    correctAnswerIndex: 0,
  ),
  const QuestionWithoutMedia(
    question: 'الصوت الذي يضيق مجرى النفس في مخرجه تعريف صفة ...',
    options: ['الشدة', 'البينية', 'الرخاوة'],
    correctAnswerIndex: 2,
  ),
  const QuestionWithoutMedia(
    question:
        'صفة ليس لها ضد وألحقت بالصفات التي لها ضد لارتباطها بالشدة والرخاوة وتعريفها عدم كمال انحباس النفس وعدم كمال جريانه',
    options: ['الشدة', 'البينية', 'الجهر'],
    correctAnswerIndex: 1,
  ),
  const QuestionWithoutMedia(
    question:
        'ارتفاع أقصى اللسان ناحية الحنك اللحمي واللهاة فقط مع رجوع لسان المزمار للخلف واتجاه الصوت لأعلى تعريف صفة ...',
    options: ['الانفتاح', 'الاستفال', 'الاستعلاء'],
    correctAnswerIndex: 2,
  ),
  const QuestionWithoutMedia(
    question:
        'عدم ارتفاع أقصى اللسان ناحية الحنك اللحمي واللهاة فقط وعدم رجوع لسان المزمار للخلف واتجاه الصوت لأسفل تعريف صفة ...',
    options: ['الانفتاح', 'الاستفال', 'الاستعلاء'],
    correctAnswerIndex: 1,
  ),
  const QuestionWithoutMedia(
    question: 'سمن يدخل على جسم الحرف فيمتلئ الفم بصداه تعريف صفة ...',
    options: ['الإطباق', 'الاستفال', 'التفخيم'],
    correctAnswerIndex: 2,
  ),
  const QuestionWithoutMedia(
    question: 'نحول يدخل على جسم الحرف فلا يمتلئ الفم بصداه تعريف صفة ...',
    options: ['الانفتاح', 'الترقيق', 'الاستعلاء'],
    correctAnswerIndex: 1,
  ),
  const QuestionWithoutMedia(
    question:
        'عدم وجود ارتفاعين في اللسان بينهما منخفض وعدم انحصار النفس بين وسط اللسان والحنك الأعلى تعريف صفة ...',
    options: ['الانفتاح', 'الترقيق', 'الإطباق'],
    correctAnswerIndex: 0,
  ),
  const QuestionWithoutMedia(
    question:
        'وجود ارتفاعين في اللسان بينهما منخفض وانحصار النفس بين وسط اللسان والحنك الأعلى تعريف صفة ...',
    options: ['الانفتاح', 'الترقيق', 'الإطباق'],
    correctAnswerIndex: 2,
  ),
]..shuffle();

final List<QuestionWithSound> qPhonics = [
  const QuestionWithSound(
      question: 'هل هناك أي خطأ في نطق الحروف؟',
      options: ['لا', 'نعم'],
      correctAnswerIndex: 0,
      soundPath: ['phonics/any-mistakes.mp3']),
  const QuestionWithSound(
      question: 'أي صوت للميم هو الصحيح؟',
      options: ['3', '2', '1'],
      correctAnswerIndex: 2,
      soundPath: [
        'phonics/mem-true.mp3',
        'phonics/mem-false-1.mp3',
        'phonics/mem-false-2.mp3'
      ]),
  const QuestionWithSound(
      question: 'هل الطاء المفتوحة صحيحة؟',
      options: ['لا', 'نعم'],
      correctAnswerIndex: 1,
      soundPath: ['phonics/is-ta-true.mp3']),
  const QuestionWithSound(
      question: 'هل من خطأ في النطق في أي من الجزأين؟',
      options: ['لا', 'نعم'],
      correctAnswerIndex: 0,
      soundPath: ['phonics/sad-taa-true.mp3', 'phonics/ya-no-ghunna.mp3']),
  const QuestionWithSound(
      question: 'هل صوت ياء المد صحيح أم به غنه؟',
      options: ['به غنه', 'صحيح'],
      correctAnswerIndex: 1,
      soundPath: ['phonics/ya-no-ghunna.mp3']),
  const QuestionWithSound(
      question: 'أين صوت اللام الصحيح؟',
      options: ['1', '2', 'لا يوجد'],
      correctAnswerIndex: 1,
      soundPath: ['phonics/lam-false.mp3', 'phonics/lam-true.mp3']),
  const QuestionWithSound(
      question: 'أين صوت الراء الصحيح؟',
      correctAnswerIndex: 1,
      options: ['1', '2', 'لا يوجد'],
      soundPath: ['phonics/ra-false.mp3', 'phonics/ra-true.mp3']),
  const QuestionWithSound(
      question: 'أين صوت الزاي الصحيح؟',
      options: ['1', '2', 'لا يوجد'],
      correctAnswerIndex: 1,
      soundPath: ['phonics/zay-false.mp3', 'phonics/zay-true.mp3']),
  const QuestionWithSound(
      question: 'أين صوت التاء الصحيح؟',
      correctAnswerIndex: 1,
      options: ['1', '2', 'لايوجد'],
      soundPath: ['phonics/ta-false-1.mp3', 'phonics/ta-true-1.mp3']),
  const QuestionWithSound(
      question: 'أين صوت التاء الصحيح؟',
      options: ['2', '1', '3', '4', 'لا يوجد'],
      correctAnswerIndex: 3,
      soundPath: [
        'phonics/ta-false-2-1.mp3',
        'phonics/ta-false-2-2.mp3',
        'phonics/ta-false-2-3.mp3',
        'phonics/ta-true-2.mp3'
      ]),
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
