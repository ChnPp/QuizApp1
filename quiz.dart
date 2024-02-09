import 'dart:io';

void main() {
  // List of questions and corresponding answers
  List<Map<String, dynamic>> questions = [
    {
      'question': 'วงไขประมาณในการบ้านของเด็กอายุเท่าไหร่?',
      'options': ['5 ปี', '10 ปี', '15 ปี', '20 ปี'],
      'answerIndex': 1,
    },
    {
      'question': 'ในระบบสุขภาพไซเบอร์เน็ต โรค Ransomware คืออะไร?',
      'options': [
        'โรคที่แพร่เชื้อผ่านทางอาหาร',
        'โรคที่ทำให้คอมพิวเตอร์เสียหาย',
        'โรคติดต่อทางเพศ',
        'โรคที่เกิดขึ้นจากไวรัส'
      ],
      'answerIndex': 1,
    },
    {
      'question': 'ภาษีแบ่งออกเป็นกี่ประเภท?',
      'options': ['1 ประเภท', '2 ประเภท', '3 ประเภท', '4 ประเภท'],
      'answerIndex': 2,
    },
    {
      'question': 'โมเดลการเรียนรู้ของคอมพิวเตอร์สามารถทำอะไรได้บ้าง?',
      'options': [
        'ป้อนข้อมูล',
        'เรียนรู้จากข้อมูล',
        'จัดเก็บข้อมูล',
        'สร้างข้อมูล'
      ],
      'answerIndex': 1,
    },
    {
      'question': 'ซอฟต์แวร์ไร้ขีดจำกัด หมายถึงอะไร?',
      'options': [
        'ซอฟต์แวร์ที่ใช้ได้เฉพาะในเครื่องหนึ่งเครื่องเท่านั้น',
        'ซอฟต์แวร์ที่มีการจำกัดการใช้งาน',
        'ซอฟต์แวร์ที่ไม่มีความจำเป็นต้องใช้อินเทอร์เน็ต',
        'ซอฟต์แวร์ที่สามารถใช้งานได้ตลอดเวลา'
      ],
      'answerIndex': 3,
    },
    {
      'question': 'คอมพิวเตอร์ที่มีความเร็วในการประมวลผลมากที่สุดคืออะไร?',
      'options': ['CPU', 'RAM', 'GPU', 'SSD'],
      'answerIndex': 0,
    },
    {
      'question': 'ภาษาโปรแกรมที่ใช้ในการพัฒนาแอปพลิเคชัน Android คือ?',
      'options': ['Java', 'Python', 'Swift', 'Kotlin'],
      'answerIndex': 3,
    },
    {
      'question': 'HTTP คืออะไร?',
      'options': [
        'โปรโตคอลสำหรับการเชื่อมต่อกับอินเทอร์เน็ต',
        'โปรโตคอลสำหรับการส่งข้อมูลไปยังที่อื่น',
        'โปรโตคอลสำหรับการเข้ารหัสข้อมูล',
        'โปรโตคอลสำหรับการตรวจสอบความปลอดภัยของเว็บไซต์'
      ],
      'answerIndex': 0,
    },
    {
      'question': 'คำว่า "GUI" ย่อมาจากคำว่าอะไร?',
      'options': [
        'Graphical User Interface',
        'General Utility Interface',
        'Global User Interaction',
        'Graphical Utility Interface'
      ],
      'answerIndex': 0,
    },
    {
      'question': 'ไฟล์ที่มีนามสกุล ".jpg" หมายถึงอะไร?',
      'options': [
        'ไฟล์เสียง',
        'ไฟล์ภาพ',
        'ไฟล์วิดีโอ',
        'ไฟล์เอกสาร'
      ],
      'answerIndex': 1,
    },
  ];

  int score = 0; // Initialize the score counter

  // Loop through each question
  for (int i = 0; i < questions.length; i++) {
    print('Question ${i + 1}: ${questions[i]['question']}');
    // Print options
    for (int j = 0; j < questions[i]['options'].length; j++) {
      print(' ${j + 1}. ${questions[i]['options'][j]}');
    }
    // User input for answer
    stdout.write('Your answer: ');
    int userAnswer = int.parse(stdin.readLineSync() ?? '');
    // Validate answer
    if (userAnswer - 1 == questions[i]['answerIndex']) {
      print('Correct!');
      score++;
    } else {
      print('Incorrect!');
      print('Correct Answer: ${questions[i]['options'][questions[i]['answerIndex']]}');
    }
  }

  // Print final score
  print('Your final score: $score out of ${questions.length}');
}
