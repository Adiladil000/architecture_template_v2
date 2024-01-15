import 'package:core/core.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

final class UserCacheModel with CacheModel {
  UserCacheModel({required this.user});

  final User user;

  @override
  CacheModel fromDynamicJson(dynamic json) {
    final jsonMap = json as Map<String, dynamic>?;
    if (jsonMap == null) {
      CustomLogger.showError<User>('Json cannot be null');
      return this;
    }

    return copyWith(user: User.fromJson(jsonMap));
  }

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  UserCacheModel copyWith({
    User? user,
  }) {
    return UserCacheModel(user: user ?? this.user);
  }
}
