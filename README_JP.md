<p align="center">
🌍
<a href="./README.md">English</a> |
<strong>日本語</strong> |
</p>

---

<div align="center">

 # EasyForgeNeo (for Anima)

[Stable Diffusion WebUI Forge - Neo](https://github.com/Haoming02/sd-webui-forge-classic/tree/neo) をコアとしたAnima画像生成環境の１クリックインストーラー、**Windows** 用 🔹 Nvidia GPU 対応

**Zuntan氏**（[@Zuntan03](https://github.com/Zuntan03)）に捧ぐ

</div>

---

EasyForgeNeo は、[Stable Diffusion WebUI Forge - Neo](https://github.com/Haoming02/sd-webui-forge-classic/tree/neo) (Forge Neo) を、Windows、Nvidia GPU環境に導入するための１クリックインストーラーです。

Git や Python のセットアップは不要です。

Zuntan氏（[@Zuntan03](https://github.com/Zuntan03)）が開発された [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) (reForge) １クリックインストーラーである [EasyReforge](https://github.com/Zuntan03/EasyReforge)、およびそのforkである拙作 [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) の **Forge Neo版** と理解されるのが早いです。

特に、**Anima**（[circlestone-labs/Anima](https://huggingface.co/circlestone-labs/Anima)）を用いた画像生成に特化して最適化されており、関連モデルの自動ダウンロード機能、推奨拡張機能、初期設定、および便利な `styles.csv` をあらかじめパッケージングしています。

また、インストールフォルダ内に [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) (reForge) をインストールし、モデルと生成画像を共有、一体管理することができます。拙作の [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) インストール済み環境への本作の追加導入にも対応しています。

***

## 💕 主な特徴

- **１クリック簡単インストール**: 複雑な環境構築（PythonやGitの個別導入、依存関係の解決など）をすべて自動化し、初心者でも手軽に環境を展開できます。

- **Animaモデル特化**:
    - Anima関連モデルの専用ダウンローダーを搭載。導入直後からAnimaでの画像生成が可能です。
    - Animaでの画像生成向けの初期設定やスタイルプリセット（`styles.csv`）を搭載。

- **EasyReforge-Nextとの互換性**:
    - 拙作 [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) と同等環境を組み込むことが可能で、**モデルおよび生成画像の格納先フォルダを共有**することができます。
    - ただし、Zuntan氏の [EasyReforge](https://github.com/Zuntan03/EasyReforge) には対応していません。

- **柔軟な導入パターン**:
    - 既に [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) がインストールされている環境へ、追加で **EasyForgeNeo (本作)** を導入可能です。
    - 逆に **EasyForgeNeo (本作)** を新規インストールした後に、[EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) と同等環境を追加することも可能です。

## **📦 コンポーネント**

| **🔧 コンポーネント** | **🆕 バージョン** | **📝 説明** |
| :--- | :--- | :--- |
| [Git](https://git-scm.com/) | 2.53.0.3 | 必要に応じてインストール/更新 |
| [Python](https://www.python.org/downloads/release/python-31312/) | 3.13.12 | venv版（reForge 用は3.10.11） |
| [Forge Neo](https://github.com/Haoming02/sd-webui-forge-classic/tree/neo) および拡張機能 | 最新版 | ユーザーが任意に更新 |
| [reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) および拡張機能 | 最新版 | ユーザーが任意に更新 |
| Anima モデルおよびダウンロードバッチ | － | Animaの公式モデル、派生モデルのダウンローダー |
| カスタム `styles.csv` | － | Animaでの生成をサポートするスタイル集 |
| Forge Neo 用推奨設定 | － | Animaで生成することを前提とした推奨の初期設定 |

## 🔍 EasyReforge-Next との比較

### 基本情報

<details>
<summary><b>クリックすると開きます</b></summary>
<div style="padding: 15px; border-radius: 8px; margin-top: 10px;">

起動・更新・モデルダウンロード用のバッチ、フォルダ構成などは、[EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) を踏襲しています。

| 機能・要素 | EasyReforge-Next | EasyForgeNeo (本作) |
| :--- | :--- | :--- |
| **メインWebUI** | [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) | [Stable Diffusion WebUI Forge - Neo](https://github.com/Haoming02/sd-webui-forge-classic/tree/neo) |
| **サブWebUI** | － | [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) |
| **対応モデル** | SD / SDXL のみ | **SD / SDXL、Anima、その他Forge Neoがサポートするモデル** |
| **特徴** | 従来の安定したreForge環境 | **最新のForge Neoベース ＋ Anima特化の初期設定・拡張機能** |

</div>
</details>

### 拡張機能

<details>
<summary><b>クリックすると開きます</b></summary>
<div style="padding: 15px; border-radius: 8px; margin-top: 10px;">

EasyForgeNeo（本作）にインストールされていない拡張機能はご自身で探してインストールするか、EasyRefoge-Nextを利用してください。
> - N/Aの部分は必ずしもForge Neoで動作するextensionが無いという意味ではありません。複数の候補があり、このパッケージでプレインストールするものが決められないものもあります。
> - 自分でインストールされる場合は、[Forge Neo Discussion #1128](https://github.com/Haoming02/sd-webui-forge-classic/discussions/1128)が参考になるかもしれません。

| 🧩 EasyRefoge-Next | 🧩 EasyFogeNeo (本作) | 📝 Note |
| --- | --- | --- |
| [Aspect Ratio and Resolution Buttons](https://github.com/altoiddealer/--sd-webui-ar-plusplus) | ← | 解像度とアスペクト比ボタンを追加 |
| [Tag Autocomplete](https://github.com/DominikDoom/a1111-sd-webui-tagcomplete) | [TagComplete Neo](https://github.com/eduardoabreu81/sd-webui-tagcomplete-neo) | Booruタグの補完入力 |
| [Adetailer](https://github.com/Bing-su/adetailer) | [AADetailer Forge Neo](https://github.com/abzaloff/aadetailer-neoforge) | 自動マスキングとインペインティング |
| [Model Keyword](https://github.com/mix1009/model-keyword) | ← | キーワード（トリガーワード）の自動入力 |
| [reForge-Sigmas\_merge](https://github.com/Panchovix/reForge-Sigmas_merge) | N/A | Sigmaのマージとカスタマイズ |
| [Dynamic Prompts extension](https://github.com/adieyal/sd-dynamic-prompts) | [Dynamic Prompts extension (Forge Neo対応版)](https://github.com/abzaloff/sd-dynamic-prompts) | ワイルドカードを用いたランダムプロンプト生成|
| [Forge Attention Couple](https://github.com/Haoming02/sd-forge-couple) | ← | 領域毎に異なるコンディショニングを生成 |
| [Easy Generate Forever](https://github.com/blue-pen5805/sdweb-easy-generate-forever) | [Repeat Generate for NEO](https://github.com/hirorohi03/repeat-generate-4NEO) | 自動で繰り返し生成 |
| [CD(Color/Detail) Tuner](https://github.com/hako-mikan/sd-webui-cd-tuner) | N/A | カラー／ディティール調整 |
| [Cutoff - Cutting Off Prompt Effect](https://github.com/hnmr293/sd-webui-cutoff) | N/A | トークンの影響範囲を制限 |
| [Checker of "enable" statuses](https://github.com/shirayu/sd-webui-enable-checker) | N/A | Enableボタンに背景色を付与 |
| [Calibrated Spectrum Adaptive Forecaster](https://github.com/hirorohi03/sd-webui-forge-spectrum) | ← | 生成時間を短縮 |
| [LoRA Block Weight](https://github.com/hako-mikan/sd-webui-lora-block-weight) | N/A | LoRA強度をブロック単位で調整 |
| [NegPiP - Negative Prompt in Prompt](https://github.com/hako-mikan/sd-webui-negpip) | [Forge Negative Prompt in Prompt](https://github.com/Haoming02/sd-forge-negpip) | ポジティブプロンプト内でのネガティブ効果 |
| [PNG Info Beautify](https://github.com/bluelovers/sd-webui-pnginfo-beautify) | ← | 画像情報表示の美化 |
| [Prompt All-in-One](https://github.com/Physton/sd-webui-prompt-all-in-one) | [Prompt All-in-One NEO](https://github.com/eduardoabreu81/sd-webui-prompt-all-in-one-neo) | プロンプト入力欄を改善 |
| [Weight Helper Extension](https://github.com/nihedon/sd-webui-weight-helper) | N/A | LoRAの重みを視覚的に調整 |
| [Civitai Helper](https://github.com/zixaphir/Stable-Diffusion-Webui-Civitai-Helper) | ~[CivitAI Browser Neo](https://github.com/eduardoabreu81/sd-civitai-browser-neo)~<BR> [Civitai Helper RED UPDATE](https://github.com/Replactionap/Stable-Diffusion-Webui-Civitai-Helper-RED-UPDATE) | CivitAIのモデルを閲覧、ダウンロード、管理 |
| [Localization ja\_JP](https://github.com/L4Ph/stable-diffusion-webui-localization-ja_JP) | N/A | UIを日本語化 |
| [WD14 Tagger](https://github.com/67372a/stable-diffusion-webui-wd14-tagger) | [ScribeNEO](https://github.com/SiliconeShojo/ScribeNEO) | プロンプトエンジニアリング（Enhancer、Interrogator など） |
| [TIPO-extension](https://github.com/KohakuBlueleaf/z-tipo-extension) | ← | キャラクターの詳細や要素のタグをプロンプトに追加 |

</div>
</details>

## 🖥️ 動作要件

<details>
<summary><b>クリックすると開きます</b></summary>
<div style="padding: 15px; border-radius: 8px; margin-top: 10px;">

- NVIDIA GPU の Windows PCであること
    - Forge Neo は NVIDIA 以外の GPU もサポートしていますが本作は未サポートです。
- 20GB 以上の空きストレージがあること
    - あくまで最低要件です。モデルや拡張機能を追加したり多くの画像を生成したりするにはより多くの容量が必要です。
- フォルダ名にスペースや特殊文字を含めないこと
- NVIDIA ドライバーのバージョンが580以上であること
- アバストなどの Windows Defender でないウィルスチェック無効化、VPN やプロキシの無効化が必要な可能性があります。
- その他は [Stable Diffusion WebUI Forge Neo](https://github.com/lllyasviel/stable-diffusion-webui-forge) の動作要件に準じます。

</div>
</details>

## 🛠️ インストール方法

まず、[EasyForgeNeoInstaller.bat](https://github.com/hirorohi03/EasyForgeNeo/raw/main/EasyForgeNeo/EasyForgeNeoInstaller.bat) を右クリックから保存します。

次にパターンAまたはパターンBの方法でインストールします。

### パターンA：新規にインストールする場合（[EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) 同等環境は後から追加可能）

1. `C:/EasyForgeNeo/` などの浅いパスのインストール先の**空フォルダ**に `EasyForgeNeoInstaller.bat` を配置し、ダブルクリックして実行します。
2. `動作に必要なモデルなどをダウンロードします。よろしいですか？ [y/n]（空欄なら y）` で `Enter` します。

### パターンB：既存の [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) 環境へ共存・追加インストールする場合

> [!IMPORTANT]
> - 事前に必ず [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) のフォルダ全体をバックアップしてください。
> - `Model` フォルダのサイズが大きくてバックアップの容量や時間が無い場合は、インストールする間 [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) フォルダ外へ一旦移動退避しておくだけでも構いません。`OutputReforge` はジャンクションですのでそれ自体を移動退避しても無意味です。必ず内容（`txt2img-images` など）を移動してください。
> - セットアップ後は [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) ではなく、EasyForgeNeoに組み込まれたEasyReforge-Nextと同等環境として動作します。reForge本体は変わりませんが、パッケージとしてのフォルダやバッチの構成が変わります。

1. [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) と同じディレクトリ（`Download`や`OutputReforge`が存在する階層）に `EasyForgeNeoInstaller.bat` を配置し、ダブルクリックして実行します。
2. `動作に必要なモデルなどをダウンロードします。よろしいですか？ [y/n]（空欄なら y）` で `Enter` します。
3. 既存の [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) のデータが削除されたり動作に問題が発生したりする可能性があるという注意メッセージが表示されたら、内容をよく確認して `YES` を入力してください。
    - インストーラーを実行すると、既存のフォルダ（`Model, EasyTools, EasyReforge `等）自動的に検出し、ストレージを共有した状態でセットアップが完了します。

<details>
<summary><b>TIPS（クリックすると開きます）</b></summary>

> - 動作が確認できましたら `EasyReforge.bak`、`EasyTools.bak` は削除して構いません。
> - 生成画像の格納フォルダは `Images` です。既存の `OutputReforge` はジャンクションとして同じフォルダにリンクしていますが不要であれば削除して構いません。
> - `Sample` は既存の [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) から更新されません。

</div>
</details>

### パターンAとパターンBに共通の情報
- インストーラーを管理者として実行 **しないで** ください。
- **`WindowsによってPCが保護されました`** と表示されたら、 **`詳細表示`** から **`実行`** してください。
- Anima用LoRAのダウンロードに **[Civitai](https://civitai.com/)** **APIキー** が必要ですので、画面の案内や **[ネット上のノウハウ](https://www.google.com/search?q=civitai+api+key)** に沿って入力してください。
    - APIキーを入力しない場合でもAnima用のDiffusionモデル、TE、VAEはダウンロードされるため、Animaでのお試し画像生成は可能です。
    - EasyReforge(-Next) ではインストール後に拡張機能のCivitai HelperでCivitai APIキーを設定する方式でしたが、EasyForgeNeoでは方式が変更されています。
    - 逆にインストール時にCivitai APIキーが入力されていれば、拡張機能のCivitai Helperには自動でCivitai APIキーが設定されます。

<details>
<summary><b>TIPS（クリックすると開きます）</b></summary>

> - GeForce RTX 30 シリーズ（Ampereアーキテクチャ、Compute Capability 8.6）以上のGPUを検知できた場合は、`--sage --flash --nunchaku` を有効にしてForge Neoをセットアップします。
> - マルチGPU環境では正常に検知できない可能性があります（詳細な情報を提供いただければ対応を検討します）。

</div>
</details>

## 🚀 起動方法

インストール先にある以下いずれかのバッチを実行することでForge Neoが起動します。
- `ForgeNeo.bat`：起動オプションなしの標準設定でForge Neoが起動します。
- `ForgeNeo_Fast.bat`：`--pin-shared-memory` 等を有効にして起動します。

<details>
<summary><b>TIPS（クリックすると開きます）</b></summary>

> - GeForce RTX 30 シリーズ（Ampereアーキテクチャ、Compute Capability 8.6）以上のGPUで Forge Neo を sageattension、flashattension 無効で起動する場合は、それぞれ `--disable-sage`、`--disable-flash` を起動オプションに追加してください。

</div>
</details>

reForgeは以下で起動します（初回はセットアップが動作します）。
- `Reforge.bat`：起動オプションなしの標準設定でreForgeが起動します。
- `Reforge_Fast.bat`：sageattention等を有効にして起動します。画像生成時間が約10%削減します。

自分で自由に起動オプションを指定したい場合は、`ForgeNeo_Fast.bat`、`Reforge_Fast.bat` それぞれを任意のファイル名でコピーして、ファイルの内容を書き換えて利用してください。コピーせずに既存のファイルの内容を書き換えて利用すると、EasyForgeNeo の更新時に巻き戻ってしまいます。

<details>
<summary><b>TIPS（クリックすると開きます）</b></summary>

> - Forge Neo と reForge は同時起動可能です。Forge Neoはポート番号 `7860` 、reForgeはポート番号 `7870` で起動します（VRAMおよびメインメモリの使用量にご注意ください）。

</div>
</details>

## 🖼️ 使用方法

パッケージとしての基本的な使用方法は[EasyReforge-Next](https://github.com/hirorohi03/EasyReforge/)を参考にしてください。

その他は随時、[私の note 記事](https://note.com/hirorohi03/n/n26a9ca1ef166)に関連記事を追加していく予定です。

## 🔁 更新方法

`Update.bat` ですべてのコンポーネントを更新します。
- EasyTools、EasyForgeNeo を更新します。
- Forge Neo本体および拡張機能を更新します。
- （reForgeがセットアップ済みの場合）reForge本体および拡張機能を更新します。

### Forge Neo本体、reForge本体のバージョン指定方法

2つのバッチでForge Neo本体のバージョンを指定／解除することができます。

Forge Neo本体のGit **コミットハッシュ値** で指定します。

- `EasyForgeNeo\EasyForgeNeoVersionControl-Enable.bat`<BR>
Forge Neo本体のコミットハッシュ値を入力して指定（入力内容の`EasyForgeNeo\ForgeNeo_Version.txt`が生成される）

- `EasyReforge\EasyForgeNeoVersionControl-Disable.bat`<BR>
Forge Neo本体本体のバージョン指定を解除（`EasyForgeNeo\ForgeNeo_Version.txt`が削除される）

バージョンを変更する場合は `Update.bat` を実行してください。<BR>
Forge Neo本体の**コミットハッシュ値**は、下図を参考にして[Forge Neo本体のコミットログ](https://github.com/Haoming02/sd-webui-forge-classic/commits/neo/)からコピー＆ペーストしてください。<P>

<details>
<summary><b>参考画像（クリックすると開きます）</b></summary>
<div style="padding: 15px; border-radius: 8px; margin-top: 10px;">

![CommitHash](https://github.com/hirorohi03/EasyReforge/blob/main/Sample/Images_README/commit_hash.png)

</div>
</details>

reForge本体のバージョン指定／解除も同様です。
- `EasyForgeNeo\ReforgeVersionControl-Enable.bat`
- `EasyForgeNeo\ReforgeVersionControl-Disable.bat`

## 📖 更新履歴

### 2026/7/21

- `EasyForgeNeoInstaller.bat` または `Update.bat` 実行時、Civitai Helper Browser の BaseModel 定義ファイル (`supported_models.py`) を置換する処理を追加しました。
- `Download\DiffusionModels\Anima_Custom\AnimaIka.bat‎` のバージョンを更新しました。
- `Download\DiffusionModels\Anima_Custom\hassakuAnima.bat` のバージョンを更新しました。
- `Download/DiffusionModels/Anima_Official/anima-aesthetic-v1.0.bat` を追加しました。
- `Download/DiffusionModels/Anima_Official/anima-aesthetic-v1.0b.bat` を追加しました。
- `Download/DiffusionModels/Anima_Official/anima-aesthetic-v1.1.bat` を追加しました。
- `Download/DiffusionModels/Anima_Official/anima-turbo-v1.0.bat` を追加しました。
- `Download/DiffusionModels/Anima_Official/anima-preview.bat` を削除しました。
- `Download/DiffusionModels/Anima_Official/anima-preview2.bat` を削除しました。
- `Download\src\Anima_Standard.bat` に `aesthetic-v1.1` と `turbo-v1.0` を追加しました。

### 2026/7/1

- `Download\DiffusionModels\Anima_Custom\botan_anima.bat` のバージョンを更新しました。
- `Download\DiffusionModels\Anima_Custom\AnimaIka.bat` のバージョンを更新しました。
- `Download\DiffusionModels\Anima_Custom\AnimaYume.bat` のバージョンを更新しました。
- `Download\ControlNet\Anima\animaTileRepair.bat` のバージョンを更新しました。
- `Download\src\AnimaCommon_Minimum.bat` を修正しました。
- Ollama のバージョンを v0.24.0 から v0.31.1 に更新しました。 (EasyTools)

### 2026/6/20

- `Download\ControlNet\Anima\anima-lllite-regional.bat` を追加しました。
- `Download\ControlNet\Anima\animaTileRepair.bat` を追加しました。
- `Download\DiffusionModels\Anima_Custom\AnimaYume.bat` のバージョンを更新しました。

<details>
<summary><b>過去の更新履歴（クリックすると開きます）</b></summary>
<div style="max-height: 250px; overflow-y: auto; padding: 15px; border-radius: 8px; margin-top: 10px;">

### 2026/6/13

- `Download\ControlNet\Anima` を追加しました。
- `Download\src\AnimaCommon_Minimum.bat` に `Download\ControlNet\Anima` を追加しました。

### 2026/6/12

- `Download\Lora\Anima_Official\copycat-anima.bat` のバージョンを更新しました。
- `Download\Lora\Anima_Official\hassakuAnima.bat` のバージョンを更新しました。

### 2026/6/8

- `Download\Lora\Anima_Official\AnimaIka.bat` のバージョンを更新しました。
- `Download\Lora\Anima_Official\botan_anima.bat` のバージョンを更新しました。

### 2026/6/5

- `Download\Lora\Anima_Official\HakushiMixAnima.bat` のバージョンを更新しました。
- `Download\Lora\Anima_Official\WAI-ANIMA.bat` のバージョンを更新しました。

### 2026/5/31

- `Download\Lora\Anima_Official\botan_anima.bat` のバージョンを更新しました。（`botan_animaPre.bat` からリネーム）

### 2026/5/27

- `Download\Lora\Anima_Official\AnimaTurbo.bat` のバージョンを更新しました。

### 2026/5/24

- `Download\DiffusionModels\Anima_Custom\AnimaIka.bat` のバージョンを更新しました。

### 2026/5/23

- 拡張機能の [CivitAI Browser Neo](https://github.com/eduardoabreu81/sd-civitai-browser-neo)  を [Civitai Helper RED UPDATE](https://github.com/Replactionap/Stable-Diffusion-Webui-Civitai-Helper-RED-UPDATE) に変更しました。
    - 既にインストール済みの場合、 Civitai Browser Neo は自動で削除されません。不要な場合はエクスプローラーで `sd-webui-forge-neo\extensions\sd-civitai-browser-neo` フォルダを削除してください。
    - Civitai Browser と Civitai Helper は併用可能ですが、メタデータのファイル名 (`Model\*\モデル名.json`) が同一かつ別形式のため一方でメタデータ表示が欠落することがあります。
    - Civitai Helperで `Scan` してメタデータを作成する前に、Civitai Brouserが作成した `Model\*\*.json` をエクスプローラーで削除してください。

### 2026/5/22

- `Download\DiffusionModels\Anima_Custom\hassakuAnima.bat` を追加しました。

### 2026/5/21

- Ollama起動バッチ `OllamaStart.bat` を追加しました。
    - システムにOllamaがインストール済みの場合はそちらを利用します。（`ollama ps` を実行）
    - Ollamaが未インストールの場合は、`EasyTools\Ollama\env` にOllama Portableをインストールします。
    - [ScribeNEO](https://github.com/SiliconeShojo/ScribeNEO) から利用することを想定しています。チャットAIとして利用するバッチはありません。
- Ollama用LLM/VLMモデルダウンロードバッチ `Download\Ollama` を追加しました。
    - システムにOllamaがインストール済みの場合はそちらの指定先に保存されます。（標準では `C:\Users\ユーザー名\.ollama\models`）
    - EasyForgeNeoでOllamaをインストールした場合は、`Model\Ollama` に保存されます。
> [!IMPORTANT]
> - Ollama関連バッチの初回起動時に `ollama.exe` のWindowsファイアウォールアクセス許可ポップアップが出ます。`ollama.exe` がモデルをダウンロードするための「受信の規則」です。このポップアップで許可しなかった場合に後から許可したくなった場合は、Windows Defenter ファイアウォールの設定で、該当する `ollama.exe` への通信を許可してください。
- Anima派生モデルのダウンロードバッチを更新しました。
    - `Download\DiffusionModels\Anima_Custom\AnimaYume.bat` のバージョンを更新しました。
    - `Download\DiffusionModels\Anima_Custom\copycat-anima.bat` のバージョンを更新しました。

### 2026/5/19

- 初回リリース。

</div>
</details>

## 🗺️ ロードマップ

<details>
<summary><b>クリックすると開きます</b></summary>
<div style="max-height: 250px; overflow-y: auto; padding: 15px; border-radius: 8px; margin-top: 10px;">

- ~ScribeNEO用のollama導入バッチ~
- ~LLMモデルのダウンロードバッチ~
- メッセージの英語化
- gitのタグによるForge Neoのバージョン指定／解除
- uv対応

</div>
</details>

## ⚠️ 既知の制限事項

- Civitai掲載モデル用ダウンロードバッチのエラー
    - `[ERROR]` メッセージが出力されることがありますがCivitaiが不安定なためだと思われます。最終的に `(OK):download completed.` と出力されればダウンロードは成功しているはずです。
    - 念のため同じダウンロードバッチを再実行してください。ダウンロードが失敗していた場合は途中から再開され、成功していた場合はダウンロードは実行されず完了します。

## 📞 問い合わせ

本作について分からないこと・不具合・要望がありましたら [Issues](https://github.com/hirorohi03/EasyForgeNeo/issues) にてお知らせください。GitHubに慣れてない人は [X](https://x.com/hirorohi003) や [note](https://note.com/hirorohi03/n/n26a9ca1ef166) 関連記事のコメント欄でも結構です。
- Forge NeoおよびreForgeの各WebUI本体、拡張機能、その他の各ソフトウェア、モデルそのものに関するものはそれぞれの配布元にお問い合わせ願います。
    - 分かるものはお答えするかもしれませんが、基本的には無視するかクローズします。
    - 逆に本作について、他の開発者へのお問い合わせはおやめください。
- 本作固有のパッケージング由来の問題なのか、各ソフトウェア由来の問題なのか、可能な限り切り分けをお願いします。

## 🤝 開発・クレジット

- **メインWebUI**: [Stable Diffusion WebUI Forge Neo](https://github.com/lllyasviel/stable-diffusion-webui-forge) (および拡張機能プロジェクト)
- **サブWebUI**: [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) (および拡張機能プロジェクト)
- **メインモデル**: [Anima by circlestone-labs](https://huggingface.co/circlestone-labs/Anima)
- **謝辞・コード引用**:
    - 本プロジェクトは、**Zuntan氏**（[@Zuntan03](https://github.com/Zuntan03)）の開発された [EasyReforge](https://github.com/Zuntan03/EasyReforge) および [EasyTools](https://github.com/Zuntan03/EasyTools) のコードを数多く利用・参考にさせていただいております。素晴らしい成果物を公開されている氏に深く感謝申し上げます。

- **開発元**: [hirorohi03](https://github.com/hirorohi03)

## ⚖️ 免責事項・ライセンス

本ツールは各上流リポジトリおよびモデルのライセンス（CreativeML Open RAIL-M、MIT License等）に準拠します。ツール自体の利用に伴ういかなるトラブルについても、開発者は責任を負いかねますのであらかじめご了承ください。
