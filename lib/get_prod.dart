class get_prod {
  int status;
  String msg;
  List<Data> information;

  get_prod({this.status, this.msg, this.information});

  get_prod.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['Data'] != null) {
      information = new List<Data>();
      json['Data'].forEach((v) {
        information.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.information != null) {
      data['Data'] = this.information.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String doctorId;
  String encDoctorId;
  String doctorName;
  String doctorImage;
  Null linkPartner;
  String specialisation;
  Null gender;
  String qualification;
  Null fee;
  Null discountedFee;
  Null bookingFee;
  Null timeFrom;
  Null timeTo;
  Null visitDay;
  Null phone;
  Null alternatePhone;
  Null email;
  Null note;
  Null createBy;
  Null createDate;
  Null modBy;
  Null modDate;
  Null activeStatus;
  Null permission;

  Data(
      {this.doctorId,
      this.encDoctorId,
      this.doctorName,
      this.doctorImage,
      this.linkPartner,
      this.specialisation,
      this.gender,
      this.qualification,
      this.fee,
      this.discountedFee,
      this.bookingFee,
      this.timeFrom,
      this.timeTo,
      this.visitDay,
      this.phone,
      this.alternatePhone,
      this.email,
      this.note,
      this.createBy,
      this.createDate,
      this.modBy,
      this.modDate,
      this.activeStatus,
      this.permission});

  Data.fromJson(Map<String, dynamic> json) {
    doctorId = json['DoctorId'];
    encDoctorId = json['EncDoctorId'];
    doctorName = json['DoctorName'];
    doctorImage = json['DoctorImage'];
    linkPartner = json['LinkPartner'];
    specialisation = json['Specialisation'];
    gender = json['Gender'];
    qualification = json['Qualification'];
    fee = json['Fee'];
    discountedFee = json['DiscountedFee'];
    bookingFee = json['BookingFee'];
    timeFrom = json['TimeFrom'];
    timeTo = json['TimeTo'];
    visitDay = json['VisitDay'];
    phone = json['Phone'];
    alternatePhone = json['AlternatePhone'];
    email = json['Email'];
    note = json['Note'];
    createBy = json['CreateBy'];
    createDate = json['CreateDate'];
    modBy = json['ModBy'];
    modDate = json['ModDate'];
    activeStatus = json['ActiveStatus'];
    permission = json['Permission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DoctorId'] = this.doctorId;
    data['EncDoctorId'] = this.encDoctorId;
    data['DoctorName'] = this.doctorName;
    data['DoctorImage'] = this.doctorImage;
    data['LinkPartner'] = this.linkPartner;
    data['Specialisation'] = this.specialisation;
    data['Gender'] = this.gender;
    data['Qualification'] = this.qualification;
    data['Fee'] = this.fee;
    data['DiscountedFee'] = this.discountedFee;
    data['BookingFee'] = this.bookingFee;
    data['TimeFrom'] = this.timeFrom;
    data['TimeTo'] = this.timeTo;
    data['VisitDay'] = this.visitDay;
    data['Phone'] = this.phone;
    data['AlternatePhone'] = this.alternatePhone;
    data['Email'] = this.email;
    data['Note'] = this.note;
    data['CreateBy'] = this.createBy;
    data['CreateDate'] = this.createDate;
    data['ModBy'] = this.modBy;
    data['ModDate'] = this.modDate;
    data['ActiveStatus'] = this.activeStatus;
    data['Permission'] = this.permission;
    return data;
  }
}
