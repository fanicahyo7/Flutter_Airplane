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

  TransactionModel(
      {required this.destination,
      this.traveler = 0,
      this.seat = '',
      this.insurance = true,
      this.refundable = false,
      this.vat = 0.20,
      this.price = 0,
      this.grandtotal = 0});

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
