import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:blinkid_flutter/microblink_scanner.dart';
import 'package:w_health/utils/utils.dart';

class IDScan extends StatefulWidget {
  const IDScan({super.key});

  @override
  State<IDScan> createState() => _IDScanState();
}

class _IDScanState extends State<IDScan> {
  String _resultString = "";
  String _fullDocumentFrontImageBase64 = "";
  String _fullDocumentBackImageBase64 = "";
  String _faceImageBase64 = "";
  Future<void> scan() async {
    String license;
    // Set the license key depending on the target platform you are building for.
    if (Theme
        .of(context)
        .platform == TargetPlatform.iOS) {
      license =
      "sRwCABNjb20uZXhhbXBsZS53SGVhbHRoAWxleUpEY21WaGRHVmtUMjRpT2pFM01USTJOVGsxTVRjME5EWXNJa055WldGMFpXUkdiM0lpT2lJMll6Y3hZamc0TXkxaE5EVTJMVFEyWlRVdE9HRmhOUzAzTkdKaU5UZGlZek01TVdRaWZRPT1N8Ij9XhMKmrJcQ6veuP90aoZoTLE/+ueAvZMMQA+z3WCFjYW6YhM9Ay0cVsvZaDxDy3If0nSdllRE16Zmh0r5oXUvB9zlNtxwEwqV/NbHpH+am0Jqm5a4SnAPNKj5J7snTxw7VZNvrT2F8Isf9amzEmWZZ0It";
    } else if (Theme
        .of(context)
        .platform == TargetPlatform.android) {
      license =
      "sRwCABRjb20uZXhhbXBsZS53X2hlYWx0aABsZXlKRGNtVmhkR1ZrVDI0aU9qRTNNVEkyTlRrMU1UYzFORElzSWtOeVpXRjBaV1JHYjNJaU9pSTJZemN4WWpnNE15MWhORFUyTFRRMlpUVXRPR0ZoTlMwM05HSmlOVGRpWXpNNU1XUWlmUT09GPSjXZn0+02f8Ixuhwjbe2gly1hjjMQvdgB+yqjyWKEvenhqlAzj1vfaQCnXkdjtT16Q8yN1dWvrnjSwSOGpn1emotY+F5zeBndbeqRaSBU2OrUXDfpU4AOGC/jT/yJZg2Duhqj/YX8ztkzOXBoBWxUQWoPGJw==";
    } else {
      license =
      "sRwCABNjb20uZXhhbXBsZS53SGVhbHRoAWxleUpEY21WaGRHVmtUMjRpT2pFM01USTJOVGsxTVRjME5EWXNJa055WldGMFpXUkdiM0lpT2lJMll6Y3hZamc0TXkxaE5EVTJMVFEyWlRVdE9HRmhOUzAzTkdKaU5UZGlZek01TVdRaWZRPT1N8Ij9XhMKmrJcQ6veuP90aoZoTLE/+ueAvZMMQA+z3WCFjYW6YhM9Ay0cVsvZaDxDy3If0nSdllRE16Zmh0r5oXUvB9zlNtxwEwqV/NbHpH+am0Jqm5a4SnAPNKj5J7snTxw7VZNvrT2F8Isf9amzEmWZZ0It";
    }

    var idRecognizer = BlinkIdMultiSideRecognizer();
    idRecognizer.returnFullDocumentImage = true;
    idRecognizer.returnFaceImage = true;

    BlinkIdOverlaySettings settings = BlinkIdOverlaySettings();

    var results = await MicroblinkScanner.scanWithCamera(
        RecognizerCollection([idRecognizer]), settings, license);

    if (!mounted) return;

    if (results.length == 0) return;
    for (var result in results) {
      if (result is BlinkIdMultiSideRecognizerResult) {
        if (result.mrzResult?.documentType == MrtdDocumentType.Passport) {
          _resultString = getPassportResultString(result);
        } else {
          _resultString = getIdResultString(result);
        }

        setState(() {
          _resultString = _resultString;
          _fullDocumentFrontImageBase64 = result.fullDocumentFrontImage ?? "";
          _fullDocumentBackImageBase64 = result.fullDocumentBackImage ?? "";
          _faceImageBase64 = result.faceImage ?? "";
        });

        return;
      }
    }
  }
  String getIdResultString(BlinkIdMultiSideRecognizerResult result) {
    return buildResult(result.firstName, "First name") +
        buildResult(result.lastName, "Last name") +
        buildResult(result.fullName, "Full name") +
        buildResult(result.localizedName, "Localized name") +
        buildResult(result.additionalNameInformation, "Additional name info") +
        buildResult(result.address, "Address") +
        buildResult(
            result.additionalAddressInformation, "Additional address info") +
        buildResult(result.documentNumber, "Document number") +
        buildResult(
            result.documentAdditionalNumber, "Additional document number") +
        buildResult(result.sex, "Sex") +
        buildResult(result.issuingAuthority, "Issuing authority") +
        buildResult(result.nationality, "Nationality") +
        buildDateResult(result.dateOfBirth, "Date of birth") +
        buildIntResult(result.age, "Age") +
        buildDateResult(result.dateOfIssue, "Date of issue") +
        buildDateResult(result.dateOfExpiry, "Date of expiry") +
        "Date of expiry permanent: " +
        result.dateOfExpiryPermanent.toString() +
        "\n" +
        buildResult(result.maritalStatus, "Martial status") +
        buildResult(result.personalIdNumber, "Personal Id Number") +
        buildResult(result.profession, "Profession") +
        buildResult(result.race, "Race") +
        buildResult(result.religion, "Religion") +
        buildResult(result.residentialStatus, "Residential Status") +
        buildDriverLicenceResult(result.driverLicenseDetailedInfo) +
        buildDataMatchResult(result.dataMatch);
  }

  String buildResult(StringResult? result, String propertyName) {
    if (result == null ||
        result.description == null ||
        result!.description!.isEmpty) {
      return "";
    }

    return propertyName + ": " + result.description! + "\n";
  }

  String buildDateResult(DateResult? result, String propertyName) {
    if (result == null || result!.date == null || result.date!.year == 0) {
      return "";
    }

    return buildResult(result!.originalDateStringResult, propertyName);
  }

  String buildAdditionalProcessingInfoResult(
      AdditionalProcessingInfo? result, String propertyName) {
    if (result == null) {
      return "empty";
    }

    final missingMandatoryFields = result.missingMandatoryFields;
    String returnString = "";

    if (missingMandatoryFields!.isNotEmpty) {
      returnString = propertyName + ":\n";

      for (var i = 0; i < missingMandatoryFields.length; i++) {
        returnString += missingMandatoryFields[i].name + "\n";
      }
    }

    return returnString;
  }

  String buildStringResult(String? result, String propertyName) {
    if (result == null || result.isEmpty) {
      return "";
    }

    return propertyName + ": " + result + "\n";
  }

  String buildIntResult(int? result, String propertyName) {
    if (result == null || result < 0) {
      return "";
    }

    return propertyName + ": " + result.toString() + "\n";
  }

  String buildDriverLicenceResult(DriverLicenseDetailedInfo? result) {
    if (result == null) {
      return "";
    }

    return buildResult(result.restrictions, "Restrictions") +
        buildResult(result.endorsements, "Endorsements") +
        buildResult(result.vehicleClass, "Vehicle class") +
        buildResult(result.conditions, "Conditions");
  }

  String buildDataMatchResult(DataMatchResult? result) {
    if (result == null) {
      return "";
    }

    return buildStringResult(result.dateOfBirth.toString(), "Date of birth") +
        buildStringResult(result.dateOfExpiry.toString(), "Date Of Expiry") +
        buildStringResult(result.documentNumber.toString(), "Document Number") +
        buildStringResult(result.stateForWholeDocument.toString(),
            "State For Whole Document");
  }

  String getPassportResultString(BlinkIdMultiSideRecognizerResult? result) {
    if (result == null) {
      return "";
    }

    var dateOfBirth = "";
    if (result.mrzResult?.dateOfBirth != null) {
      dateOfBirth = "Date of birth: ${result.mrzResult!.dateOfBirth?.day}."
          "${result.mrzResult!.dateOfBirth?.month}."
          "${result.mrzResult!.dateOfBirth?.year}\n";
    }

    var dateOfExpiry = "";
    if (result.mrzResult?.dateOfExpiry != null) {
      dateOfExpiry = "Date of expiry: ${result.mrzResult?.dateOfExpiry?.day}."
          "${result.mrzResult?.dateOfExpiry?.month}."
          "${result.mrzResult?.dateOfExpiry?.year}\n";
    }

    return "First name: ${result.mrzResult?.secondaryId}\n"
        "Last name: ${result.mrzResult?.primaryId}\n"
        "Document number: ${result.mrzResult?.documentNumber}\n"
        "Sex: ${result.mrzResult?.gender}\n"
        "$dateOfBirth"
        "$dateOfExpiry";
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    Widget confirmButton = Container();
    if (_fullDocumentFrontImageBase64 != null &&
        _fullDocumentFrontImageBase64 != "") {
      confirmButton = GestureDetector(
        child:
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(192, 159, 248, 0.9),
            borderRadius: BorderRadius.circular(24),
          ),
          width: 180*fem,
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Confirm',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1.25,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Image.asset("assets/id/confirm.png"),
                ),
              ],
            ),
          ),
        ),
        onTap: (){

        },
      );
    }

    Widget fullDocumentFrontImage = Container();
    if (_fullDocumentFrontImageBase64 != null &&
        _fullDocumentFrontImageBase64 != "") {
      fullDocumentFrontImage = Column(
        children: <Widget>[
          Text(
              "Document Front Image:",
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.55,
              color: Color.fromRGBO(38, 21, 21, 1.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white70, // Specify the border color
                width: 2, // Specify the border width
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.memory(
                Base64Decoder().convert(_fullDocumentFrontImageBase64),
                height: 180,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
          )

        ],
      );
    }

    Widget fullDocumentBackImage = Container();
    if (_fullDocumentBackImageBase64 != null &&
        _fullDocumentBackImageBase64 != "") {
      fullDocumentBackImage = Column(
        children: <Widget>[
          Text(
            "Document Back Image:",
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.55,
              color: Color.fromRGBO(38, 21, 21, 1.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white70, // Specify the border color
                width: 2, // Specify the border width
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.memory(
                Base64Decoder().convert(_fullDocumentBackImageBase64),
                height: 180,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
          )

        ],
      );
    }

    Widget faceImage = Container();
    if (_faceImageBase64 != null && _faceImageBase64 != "") {
      faceImage = Column(
        children: <Widget>[
          Text(
            "Face Image:",
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.55,
              color: Color.fromRGBO(38, 21, 21, 1.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white70, // Specify the border color
                width: 2, // Specify the border width
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.memory(
                Base64Decoder().convert(_faceImageBase64),
                height: 120,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          )

        ],
      );
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        elevation: 0,
        title: const Text(""),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color.fromRGBO(255, 196, 221, 1),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child:
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(192, 159, 248, 0.9),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          width: 180*fem,
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Verify',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    height: 1.25,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  child: Image.asset("assets/id/recog.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: ()=> scan(),
                      ),
                      confirmButton,
                    ],
                  ),
                  padding: EdgeInsets.all(16.0)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,left:15,right:15),
                    child: Text(
                        _resultString,
                      textAlign: TextAlign.start,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                        color: Color.fromRGBO(38, 21, 21, 1.0),
                      ),
                    ),
                  ),
                ),
              ),

              fullDocumentFrontImage,
              SizedBox(height: 15,),
              fullDocumentBackImage,
              SizedBox(height: 15,),
              faceImage,
            ],
          ),
      )
    );
  }
}
