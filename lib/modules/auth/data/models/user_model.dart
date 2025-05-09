import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/modules/auth/domain/entities/user_entity.dart';

class UserModel extends BaseModel<UserEntity> {
  UserModel(
      {this.error,
      this.errorCode,
      this.accessToken,
      this.accountId,
      this.account});

  UserModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    accessToken = json['accessToken'];
    accountId = json['accountId'];
    if (json['account'] != null) {
      account = [];
      json['account'].forEach((v) {
        account?.add(Account.fromJson(v));
      });
    }
  }

  bool? error;
  int? errorCode;
  String? accessToken;
  String? accountId;
  List<Account>? account;

  @override
  UserEntity toEntity() {
    return UserEntity(
        accessToken: accessToken!,
        accountId: accountId!,
        email: account![0].email!,
        fullName: account![0].fullname!,
        points: account![0].points!,
        redeemedPoints: account![0].redeemedPoints ?? '0',
        userName: account![0].username!);
  }
}

class Account {
  Account({
    this.error,
    this.errorCode,
    this.id,
    this.lastAccess,
    this.lastIpAddr,
    this.gcm,
    this.state,
    this.fullname,
    this.username,
    this.email,
    this.regtime,
    this.ipAddr,
    this.mobile,
    this.points,
    this.refer,
    this.refered,
    this.redeemedPoints,
    this.totalPoints,
  });

  Account.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    id = json['id'];
    lastAccess = json['last_access'];
    lastIpAddr = json['last_ip_addr'];
    gcm = json['gcm'];
    state = json['state'];
    fullname = json['fullname'];
    username = json['username'];
    email = json['email'];
    regtime = json['regtime'];
    ipAddr = json['ip_addr'];
    mobile = json['mobile'];
    points = json['points'];
    refer = json['refer'];
    refered = json['refered'];
    redeemedPoints = json['redeemed_points'];
    totalPoints = json['total_points'];
  }

  bool? error;
  int? errorCode;
  String? id;
  String? lastAccess;
  String? lastIpAddr;
  String? gcm;
  String? state;
  String? fullname;
  String? username;
  String? email;
  String? regtime;
  String? ipAddr;
  String? mobile;
  String? points;
  String? refer;
  String? refered;
  String? redeemedPoints;
  String? totalPoints;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    map['id'] = id;
    map['last_access'] = lastAccess;
    map['last_ip_addr'] = lastIpAddr;
    map['gcm'] = gcm;
    map['state'] = state;
    map['fullname'] = fullname;
    map['username'] = username;
    map['email'] = email;
    map['regtime'] = regtime;
    map['ip_addr'] = ipAddr;
    map['mobile'] = mobile;
    map['points'] = points;
    map['refer'] = refer;
    map['refered'] = refered;
    map['redeemed_points'] = redeemedPoints;
    map['total_points'] = totalPoints;
    return map;
  }
}
