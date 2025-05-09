import 'package:magic_rewards/core/entities/base_entity.dart';

class UserEntity extends BaseEntity {
  final String? accessToken;
  final String accountId;
  final String userName;
  final String email;
  final String fullName;
  String points;
  String redeemedPoints;

  UserEntity(
      {this.accessToken,
      required this.accountId,
      required this.email,
      required this.fullName,
      required this.points,
      required this.redeemedPoints,
      required this.userName});

  Map<String, String> toJson() {
    final map = <String, String>{};
    map['accountId'] = accountId;
    map['email'] = email;
    map['fullName'] = fullName;
    map['points'] = points;
    map['redeemedPoints'] = redeemedPoints;
    map['userName'] = userName;
    return map;
  }

  factory UserEntity.fromJson(Map<String, String> json) {
    return UserEntity(
        accountId: json['accountId']!,
        email: json['email']!,
        fullName: json['fullName']!,
        points: json['points'] ?? "0",
        redeemedPoints: json['redeemedPoints'] ?? "0",
        userName: json['userName'] ?? 'no username');
  }

  @override
  List<Object> get props =>
      [accountId, email, fullName, points, redeemedPoints, userName];
}
