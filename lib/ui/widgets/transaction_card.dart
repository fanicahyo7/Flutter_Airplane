import 'package:bwa_airplane/models/transaction_model.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_RowDetailBooking.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TranscationCard extends StatelessWidget {
  final TransactionModel transaction;

  const TranscationCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget detailBooking() {
      //booking name
      String numberFormatPrice =
          NumberFormat.currency(locale: 'ID', symbol: 'IDR ', decimalDigits: 0)
              .format(transaction.price);

      String numberFormatGrandTotal =
          NumberFormat.currency(locale: 'ID', symbol: 'IDR ', decimalDigits: 0)
              .format(transaction.price * transaction.traveler);

      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(transaction.destination.imageUrl),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.destination.name,
                        style: blackTextStyle.copyWith(
                            fontWeight: medium, fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        transaction.destination.city,
                        style: greyTextStyle.copyWith(fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 20,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'))),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        transaction.destination.rating.toString(),
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //Detail Booking
            Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                CustomRowDetailBooking(
                  title: 'Traveler',
                  value: '${transaction.traveler} person',
                  color: kBlackColor,
                  isFirst: true,
                ),
                CustomRowDetailBooking(
                  title: 'Seat',
                  value: '${transaction.seat}',
                  color: kBlackColor,
                ),
                CustomRowDetailBooking(
                  title: 'Insurance',
                  value: transaction.insurance == true ? 'YES' : 'NO',
                  color:
                      transaction.insurance == true ? kGreenColor : kRedColor,
                ),
                CustomRowDetailBooking(
                  title: 'Refundable',
                  value: transaction.refundable == true ? 'YES' : 'NO',
                  color:
                      transaction.refundable == true ? kGreenColor : kRedColor,
                ),
                CustomRowDetailBooking(
                  title: 'VAT',
                  value: '${(transaction.vat).toStringAsFixed(0)}%',
                  color: kBlackColor,
                ),
                CustomRowDetailBooking(
                  title: 'Price',
                  value: numberFormatPrice,
                  color: kBlackColor,
                ),
                CustomRowDetailBooking(
                  title: 'Grand Total',
                  value: numberFormatGrandTotal,
                  color: kPrimaryColor,
                ),
              ],
            )
          ],
        ),
      );
    }

    return Container(
      child: detailBooking(),
    );
  }
}
