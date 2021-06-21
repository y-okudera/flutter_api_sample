# flutter_api_sample

Flutter Web API request.

## Images

|Screen|Android|iOS|
|:--:|:--:|:--:|
|ユーザー一覧|![android-users](https://user-images.githubusercontent.com/25205138/122803686-e710d480-d301-11eb-86de-e0da67aab1e3.png)|![ios-users](https://user-images.githubusercontent.com/25205138/122803570-bcbf1700-d301-11eb-96ad-cc52e329a55c.png)|
|リポジトリ一覧|![android-repositories](https://user-images.githubusercontent.com/25205138/122803697-eb3cf200-d301-11eb-9fe3-c053ec6b9324.png)|![ios-repositories](https://user-images.githubusercontent.com/25205138/122803591-c2b4f800-d301-11eb-9f72-9e5533acf315.png)|

## freezed_annotation

- pubspec.yamlに追加するパッケージを記述

```
dependencies:
  # パッケージを追加
  freezed_annotation: ^0.14.2

dev_dependencies:
  # パッケージを追加
  build_runner:
  freezed:
```

- モデルクラスを実装する

```
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({
    required String name,
    required String prefectures,
  }) = _Company;
}
```



`part 'company.freezed.dart';` 

コード生成のコマンドを実行すると、company.freezed.dartが同じ階層に生成されて、それをライブラリとして扱う。

- @freezedからコードを自動生成するコマンド

  ```
  $ flutter pub run build_runner build --delete-conflicting-outputs
  ```



## json_serializable



- 前述のfreezed_annotationのパッケージ追加に追記する形でpubspec.yamlに追加するパッケージを記述

```
dependencies:
  # パッケージを追加
  json_serializable: ^4.1.3
```

- モデルクラスを実装する

```
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String login,
    required int id,
    
    // JSONのキーと異なるプロパティ名を定義する場合は、JsonKeyアノテーションでキーを指定する
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    @JsonKey(name: 'html_url') required String htmlUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
```



`part 'user.g.dart';` 

コード生成のコマンドを実行すると、company.g.dartが同じ階層に生成されて、それをライブラリとして扱う。

- コードを自動生成するコマンド

  ```
  $ flutter pub run build_runner build --delete-conflicting-outputs
  ```

