import 'package:bwa_airplane/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int traveler;
  final String seat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandtotal;
  final String id;

  TransactionModel(
      {required this.destination,
      this.traveler = 0,
      this.seat = '',
      this.insurance = true,
      this.refundable = false,
      this.vat = 0.20,
      this.price = 0,
      this.grandtotal = 0,
      this.id = ''});

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModel(
        id: id,
        destination: DestinationModel.fromJson(
            json['destination']['id'], json['destination']),
        insurance: json['insurance'],
        grandtotal: json['grandtotal'],
        price: json['price'],
        refundable: json['refundable'],
        seat: json['seat'],
        traveler: json['traveler'],
        vat: json['vat'],
      );

  @override
  List<Object?> get props => [
        destination,
        traveler,
        seat,
        insurance,
        refundable,
        vat,
        price,
        grandtotal
      ];
}
