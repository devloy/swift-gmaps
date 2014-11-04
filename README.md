swift-gmaps
===========

a google maps application written in swift.

## Google Maps API keyの設定方法

xcodeのウインドウの左ペインからプロジェクトルートを選択して、TARGETSからgmapsを選択します。
中央ペインのヘッダにあるbuild Settingsを選択して、最後尾までスクロールすると、User-Definedが現れます。
ここにGOOGLE_MAPS_API_KEYというキーが設定されているので、valueにご自分で取得したGoogle Maps API keyを設定してください。
その後、プロジェクトをクリーンして、リビルドしてください。
