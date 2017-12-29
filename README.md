

1.Homebrewインストール

1-1.Homebrewの公式サイトへブラウザでアクセス
https://brew.sh/index_ja.html

1-2.公式サイトへ記載されているコマンドをターミナルで実行
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2.carthageインストール

2-1.ターミナルで以下のコマンドを実行
brew install carthage

3.carthageによるフレームワークの追加

3-1.xcodeprojがあるパスへターミナルのカレントディレクトリを移動
cd <パス>

3-2.ターミナルで以下のコマンドを実行
carthage update --platform macos --no-use-binaries

※iOSの場合
carthage update --platform ios --no-use-binaries


4.フレームワークをプロジェクトへ追加

4-1.プロジェクト設定のGeneralを表示
4-2.Linked Frameworks and Librariesの+をクリック
4-3.Add Otherをクリックし、生成したフレームワークを追加
プロジェクトパス/Carthage/Build/Mac/****.framework

5.設定

5-1.Build Phasesを表示
5-2.+をクリックし、New Run Script Phaseをクリック
5-3.追加したRun Scriptに以下を入力
/usr/local/bin/carthage copy-frameworks
5-4.Input Filesに以下を追加
$(SRCROOT)/Carthage/Build/Mac/****.framework