import 'package:cloud_firestore/cloud_firestore.dart';

final fireStore = FirebaseFirestore.instance;
final questionPaperRF = fireStore.collection('questionPaper');
DocumentReference questionRF({
  required String paperId,
  required String? questionId,
}) => questionPaperRF.doc(paperId).collection('questtions').doc(questionId);