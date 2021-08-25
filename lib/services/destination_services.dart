import 'package:bwa_airplane/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationServices {
  CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestination() async {
    try {
      QuerySnapshot result = await _collectionReference.get();

      List<DestinationModel> destination = result.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destination;
    } catch (e) {
      throw e;
    }
  }
}
