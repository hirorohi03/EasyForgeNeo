<p align="center">
🌍
<strong>English</strong> |
<a href="./README_JP.md">日本語</a> |
</p>

---

<div align="center">

 # EasyForgeNeo (for Anima)

A 1-click installer for an Anima image generation environment centered around [Stable Diffusion WebUI Forge - Neo](https://github.com/Haoming02/sd-webui-forge-classic/tree/neo), designed for **Windows** 🔹 Nvidia GPU.

Dedicated to **Mr. Zuntan**（[@Zuntan03](https://github.com/Zuntan03)）

</div>

***

> [!IMPORTANT]
> - From approximately on May 23, 2026, 3:34 AM GMT to approximately on May 23, 2026, 1:56 PM GMT: Due to a Git operation error, the `Images` and `Model`’ folders in the repository were missing. It appears that anyone who attempted a new installation during this time likely encountered an error as a result.
> - I apologize for the inconvenience.
> - Users who have already installed and updated it using `Update.bat` or `git pull` should not be experiencing any issues since these folders were specified in `.gitignore`.

***

`EasyForgeNeo` is a 1-click installer to deploy [Stable Diffusion WebUI Forge - Neo](https://github.com/Haoming02/sd-webui-forge-classic/tree/neo) (Forge Neo) on Windows environments equipped with Nvidia GPUs.

No manual setup of Git or Python is required.

It is best understood as the **Forge Neo version** of [EasyReforge](https://github.com/Zuntan03/EasyReforge)—a 1-click installer for [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) (reForge) developed by Mr. Zuntan（[@Zuntan03](https://github.com/Zuntan03)）—and its fork, my project [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge).

This tool is specifically optimized for image generation using **Anima** ([circlestone-labs/Anima](https://huggingface.co/circlestone-labs/Anima)). It comes pre-packaged with a dedicated downloader for Anima-related models, recommended extensions, optimal initial configurations, and a convenient `styles.csv` file.

Furthermore, it allows you to install [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) (reForge) within the same installation folder, enabling you to share and manage models and generated images in an integrated manner. It also supports seamlessly adding this tool to an existing environment where my [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) is already installed.

***

## 💕 Key Features

- **1-Click Easy Installation**: Completely automates complex environment setup (such as individual installation of Python/Git and dependency resolution), allowing even beginners to deploy the environment effortlessly.

- **Optimized for Anima Models**:
    - Features a dedicated downloader for Anima-related models, enabling image generation right after setup.
    - Pre-optimized with initial configurations and style presets (`styles.csv`) tailored for Anima generation.

- **Compatibility with EasyReforge-Next**:
    - Allows you to integrate an environment equivalent to my [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge), allowing you to **share models and generated image storage folders**.
    - *Note: It is not compatible with Mr. Zuntan's original [EasyReforge](https://github.com/Zuntan03/EasyReforge).*

- **Flexible Installation Patterns**:
    - You can add **EasyForgeNeo (this tool)** to an existing [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) environment.
    - Conversely, you can perform a fresh installation of **EasyForgeNeo** first, and then add an environment equivalent to [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) later.

## **📦 Components**

**Core Components**

| **🔧 Component** | **🆕 Version** | **📝 Description** |
| :--- | :--- | :--- |
| [Git](https://git-scm.com/) | 2.53.0.3 | Installed/updated as needed |
| [Python](https://www.python.org/downloads/release/python-31312/) | 3.13.12 | venv version (v3.10.11 used for reForge) |
| [Forge Neo](https://github.com/Haoming02/sd-webui-forge-classic/tree/neo) & Extensions | Latest | Can be updated by the user |
| [reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) & Extensions | Latest | Can be updated by the user |
| Anima Models & Download Batch | － | Downloader for official and derivative Anima models |
| Custom `styles.csv` | － | Style preset collection to support generation in Anima |
| Recommended Settings for Forge Neo | － | Optimized initial settings tailored for Anima generation |

## 🔍 Comparison with EasyReforge-Next

The batch files for launching, updating, downloading models, as well as the folder structure, follow the design of [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge).

| Feature / Element | EasyReforge-Next | EasyForgeNeo (This Project) |
| :--- | :--- | :--- |
| **Main WebUI** | [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) | [Stable Diffusion WebUI Forge - Neo](https://github.com/Haoming02/sd-webui-forge-classic/tree/neo) |
| **Sub WebUI** | － | [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) |
| **Supported Models** | SD / SDXL only | **SD / SDXL, Anima, and other models supported by Forge Neo** |
| **Characteristics** | Traditional and stable reForge environment | **Latest Forge Neo base + Anima-specific initial settings & extensions** |

### Extensions

If there are extensions you need that are not pre-installed in EasyForgeNeo, please find and install them manually, or use EasyReforge-Next.
> [!TIP]
> - The "N/A" sections don't necessarily mean that there are no extensions compatible with Forge Neo. In some cases, there are multiple candidates, making it impossible to decide which one should be pre-installed in this package.
> - If you're installing them yourself, [Forge Neo Discussion #1128](https://github.com/Haoming02/sd-webui-forge-classic/discussions/1128) might be a helpful reference.

| 🧩 EasyRefoge-Next | 🧩 EasyForgeNeo (This Project) | 📝 Note |
| --- | --- | --- |
| [Aspect Ratio and Resolution Buttons](https://github.com/altoiddealer/--sd-webui-ar-plusplus) | Same as left | Add image aspect ratio selector buttons |
| [Tag Autocomplete](https://github.com/DominikDoom/a1111-sd-webui-tagcomplete) | [TagComplete Neo](https://github.com/eduardoabreu81/sd-webui-tagcomplete-neo) | Autocompletion hints for recognized tags from Booru |
| [Adetailer](https://github.com/Bing-su/adetailer) | [AADetailer Forge Neo](https://github.com/abzaloff/aadetailer-neoforge) | Automatic masking and inpainting |
| [Model Keyword](https://github.com/mix1009/model-keyword) | Same as left | Autofill keyword (trigger words) |
| [reForge-Sigmas\_merge](https://github.com/Panchovix/reForge-Sigmas_merge) | N/A | Merge and customize Sigmas schedules |
| [Dynamic Prompts extension](https://github.com/adieyal/sd-dynamic-prompts) | [Dynamic Prompts extension (Forge Neo Support)](https://github.com/abzaloff/sd-dynamic-prompts) | Random or combinatorial prompt generation with wildcards |
| [Forge Attention Couple](https://github.com/Haoming02/sd-forge-couple) | Same as left | Generate different conditionings at specific regions |
| [Easy Generate Forever](https://github.com/blue-pen5805/sdweb-easy-generate-forever) | [Repeat Generate for NEO](https://github.com/hirorohi03/repeat-generate-4NEO) | Repeat image generation automatically |
| [CD(Color/Detail) Tuner](https://github.com/hako-mikan/sd-webui-cd-tuner) | N/A | Color/Detail control |
| [Cutoff - Cutting Off Prompt Effect](https://github.com/hnmr293/sd-webui-cutoff) | N/A | Limits the tokens' influence scope |
| [Checker of "enable" statuses](https://github.com/shirayu/sd-webui-enable-checker) | N/A | Background coloring to ”Enable" buttons |
| [Calibrated Spectrum Adaptive Forecaster](https://github.com/hirorohi03/sd-webui-forge-spectrum) | Same as left | Reduce image generation time |
| [LoRA Block Weight](https://github.com/hako-mikan/sd-webui-lora-block-weight) | N/A | LoRA strength can be set block by block |
| [NegPiP - Negative Prompt in Prompt](https://github.com/hako-mikan/sd-webui-negpip) | [Forge Negative Prompt in Prompt](https://github.com/Haoming02/sd-forge-negpip) | Negative effects within regular prompts |
| [PNG Info Beautify](https://github.com/bluelovers/sd-webui-pnginfo-beautify) | Same as left | Improve the display of image information |
| [Prompt All-in-One](https://github.com/Physton/sd-webui-prompt-all-in-one) | [Prompt All-in-One NEO](https://github.com/eduardoabreu81/sd-webui-prompt-all-in-one-neo) | Improve the prompt/negative prompt input box |
| [Weight Helper Extension](https://github.com/nihedon/sd-webui-weight-helper) | － | Visually adjuster the weights of LoRA |
| [Civitai Helper](https://github.com/zixaphir/Stable-Diffusion-Webui-Civitai-Helper) | ~[CivitAI Browser Neo](https://github.com/eduardoabreu81/sd-civitai-browser-neo)~<BR> [Civitai Helper RED UPDATE](https://github.com/Replactionap/Stable-Diffusion-Webui-Civitai-Helper-RED-UPDATE) | Browse, download, and manage your CivitAI models |
| [Localization ja\_JP](https://github.com/L4Ph/stable-diffusion-webui-localization-ja_JP) | － | Localize UI into Japanese |
| [WD14 Tagger](https://github.com/67372a/stable-diffusion-webui-wd14-tagger) | [ScribeNEO](https://github.com/SiliconeShojo/ScribeNEO) | Prompt engineering (Enhancer, Interrogator, etc.) |
| [TIPO-extension](https://github.com/KohakuBlueleaf/z-tipo-extension) | Same as left | Add character detail and add extra elements tags into the prompt |

## 🖥️ System Requirements

- **Windows PC with an NVIDIA GPU**
    - *Note: While Forge Neo itself supports non-NVIDIA GPUs, this installer package does not support them.*
- **At least 20GB of free storage space**
    - *This is the absolute minimum. You will need significantly more space to add models, extensions, or store large amounts of generated images.*
- **No spaces or special characters in the folder path**
- **NVIDIA Driver version 580 or higher**
- You may need to temporarily disable non-Windows Defender antivirus software (such as Avast), VPNs, or proxies.
- Other requirements comply with the official requirements of [Stable Diffusion WebUI Forge Neo](https://github.com/lllyasviel/stable-diffusion-webui-forge).

## 🛠️ Installation

First, right-click and save [EasyForgeNeoInstaller.bat](https://github.com/hirorohi03/EasyForgeNeo/raw/main/EasyForgeNeo/EasyForgeNeoInstaller.bat) to your PC.
> - May 23, 2026, 3:34 AM GMT: The link above was incorrect, so It has been corrected.

Then, proceed with either **Pattern A** or **Pattern B**.

### Pattern A: Fresh Installation (Equivalent environment for EasyReforge-Next can be added later)

1. Place `EasyForgeNeoInstaller.bat` into a shallow path directory inside an **empty folder** (e.g., `C:/EasyForgeNeo/`), and double-click to run it.
2. When prompted: `Download Model etc. Are you sure? [y/n] (default: y)`, press `Enter`.

### Pattern B: Coexistence / Additional Installation with an existing EasyReforge-Next environment

> [!IMPORTANT]
> - Make sure to back up your entire [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) folder beforehand.
> - If your `Model` folder is too large and you want to save time/space, you can temporarily move the models outside the `EasyReforge-Next` directory during installation. Since `OutputReforge` is a junction link, moving the link itself does nothing—make sure to move the actual contents (like `txt2img-images`) instead.
> - After setup, the environment will run as an integrated EasyReforge-Next equivalent within EasyForgeNeo, rather than standalone. The core reForge system remains unchanged, but the package folder structure and batch files will be restructured.

1. Place `EasyForgeNeoInstaller.bat` into the exact same directory where [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) is located (the parent directory containing `Download` and `OutputReforge`). Double-click to run it.
2. When prompted: `Download Model etc. Are you sure? [y/n] (default: y)`, press `Enter`.
3. A warning message will appear stating that existing data from [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge) might be deleted or run into unexpected issues. Review the warning carefully and type `YES` to proceed.
    - The installer will automatically detect existing folders (`Model`, `EasyTools`, `EasyReforge`, etc.) and finish setting up the environment with shared storage.

> [!TIP]
> - Once you have verified that everything works properly, you can safely delete `EasyReforge.bak` and `EasyTools.bak`.
> - Generated images are stored in the `Images` folder. The existing `OutputReforge` folder remains as a junction link pointing to the same folder; you can delete it if it is no longer needed.
> - The `Sample` folder will not be updated from the existing [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge).

### Information Common to Both Pattern A and Pattern B
- **DO NOT** run the installer as an administrator.
- If Windows SmartScreen displays **"Windows protected your PC"**, click **"More info"** and then select **"Run anyway"**.
- **A [Civitai](https://civitai.com/) API Key** is required to download LoRAs for Anima. Please follow the on-screen instructions or search online guidelines to get and enter your key.
    - Even if you do not input an API Key, the base Diffusion models, TE, and VAE for Anima will still be downloaded, allowing you to try basic image generation.
    - While EasyReforge(-Next) allowed setting the Civitai API Key via the Civitai Helper extension post-installation, EasyForgeNeo has changed this method.
    - Conversely, if you enter your Civitai API Key during installation, it will be automatically configured within the CivitAI Browser extension.

> [!TIP]
> - If a GeForce RTX 30 series GPU (Ampere architecture, Compute Capability 8.6) or higher is detected, Forge Neo will be automatically configured with `--sage --flash --nunchaku` enabled.
> - Detection may not work correctly in multi-GPU environments (we will consider addressing this if detailed feedback/information is provided).

## 🚀 How to Launch

You can launch Forge Neo by running any of the following batch files in the installation directory:
- `ForgeNeo.bat`: Launches Forge Neo with standard settings (no extra launch options).
- `ForgeNeo_Fast.bat`: Launches Forge Neo with optimizations such as `--pin-shared-memory` enabled.

> [!TIP]
> - If you are using a GeForce RTX 30 series or higher GPU and wish to launch Forge Neo with `sageattention` and `flashattention` disabled, add `--disable-sage` or `--disable-flash` to your custom launch arguments.

To launch reForge (it will run a setup process on the first launch):
- `Reforge.bat`: Launches reForge with standard settings.
- `Reforge_Fast.bat`: Launches reForge with optimizations like `sageattention` enabled. This can reduce image generation time by approximately 10%.

If you want to customize your launch arguments freely, copy either `ForgeNeo_Fast.bat` or `Reforge_Fast.bat` to a new filename and edit its contents. Do not edit the original files directly, as your changes will be overwritten when updating EasyForgeNeo.

> [!TIP]
> - Forge Neo and reForge can be run simultaneously. Forge Neo launches on port `7860`, and reForge launches on port `7870` (Please be mindful of your VRAM and system memory usage).
> - Upon launching Forge Neo, a Windows Firewall prompt for `aria2.exe` may appear. This is for [aria2](https://aria2.github.io/), the downloader embedded in the CivitAI Browser extension. Disallowing it may affect the functionality of CivitAI Browser, so please decide whether to grant access at your own discretion. If you deny it initially and wish to allow it later, you can adjust your Windows Defender Firewall settings accordingly.

## 🖼️ Usage

For basic usage of this package, please refer to [EasyReforge-Next](https://github.com/hirorohi03/EasyReforge/).

Additional guides and tips will be published on [my note.com articles](https://note.com/hirorohi03) from time to time.

## 🔁 How to Update

Run `Update.bat` to update all components.
- Updates EasyTools and EasyForgeNeo.
- Updates the Forge Neo core and its extensions.
- Updates the reForge core and its extensions (if reForge is already set up).

### Specifying Versions for Forge Neo Core and reForge Core

You can pin or unpin specific versions of the Forge Neo core using two batch files.

Specify the version using the Git **commit hash** value of the Forge Neo core.

- `EasyForgeNeo\EasyForgeNeoVersionControl-Enable.bat`<BR>
Enter the commit hash of the Forge Neo core to pin it (this generates `EasyForgeNeo\ForgeNeo_Version.txt` containing your input).

- `EasyReforge\EasyForgeNeoVersionControl-Disable.bat`<BR>
Unpins the version specification for the Forge Neo core (deletes `EasyForgeNeo\ForgeNeo_Version.txt`).

To apply the version changes, run `Update.bat`. <BR>
Please copy and paste the **commit hash** from the [Official Forge Neo Commit Logs](https://github.com/Haoming02/sd-webui-forge-classic/commits/neo/) as shown in the image below.<P>
![CommitHash](https://github.com/hirorohi03/EasyReforge/blob/main/Sample/Images_README/commit_hash.png)

The process is identical for pinning/unpinning the reForge core version:
- `EasyForgeNeo\ReforgeVersionControl-Enable.bat`
- `EasyForgeNeo\ReforgeVersionControl-Disable.bat`


## 📖 Changelog

### 2026/5/24

- Updated the version of `Download\DiffusionModels\Anima_Custom\AnimaIka.bat`

### 2026/5/23

- I have changed the [CivitAI Browser Neo](https://github.com/eduardoabreu81/sd-civitai-browser-neo) extension to [Civitai Helper RED UPDATE](https://github.com/Replactionap/Stable-Diffusion-Webui-Civitai-Helper-RED-UPDATE).
    - If it is already installed, Civitai Browser Neo will not be automatically removed. If you no longer need it, please delete the `sd-webui-forge-neo\extensions\sd-civitai-browser-neo` folder using File Explorer.
    - While Civitai Browser and Civitai Helper can be used together, metadata may be missing in one of them because the filenames (`Model\*\ModelName.json`) are identical but the file formats differ.
    - Before using Civitai Helper to `Scan` and create metadata, please delete the `Model\*\*.json` files created by Civitai Browser in the Explorer.

### 2026/5/22

- Added `Download\DiffusionModels\Anima_Custom\hassakuAnima.bat`

### 2026/5/21
 
- Added the Ollama startup batch file `OllamaStart.bat`.
    - If Ollama is already installed on the system, it will be used. (Runs `ollama ps`)
    - If Ollama is not installed, Ollama Portable will be installed in `EasyTools\Ollama\env`.
    - This is intended to be used via [ScribeNEO](https://github.com/SiliconeShojo/ScribeNEO). There is no batch for using it as a chat AI.
- Added the Ollama LLM/VLM model download batch file `Download\Ollama`.
    - If Ollama is already installed on the system, models will be saved to its designated location. (Default is `C:\Users\Username\.ollama\models`)
    - If Ollama was installed via EasyForgeNeo, models will be saved in `Model\Ollama`.
- Updated the download batch for Anima custom models.
    - Updated the version of `Download\DiffusionModels\Anima_Custom\AnimaYume.bat`
    - Updated the version of `Download\DiffusionModels\Anima_Custom\copycat-anima.bat`

### 2026/05/19

- Initial Release.

## 🗺️ Roadmap

- ~Ollama integration batch file for ScribeNEO~
- ~Download batch file for LLM models~
- Translating messages into English
- Specifying/unpinning Forge Neo versions using Git tags
- `uv` package manager support

## ⚠️ Known Limitations

- Download batch errors for models hosted on Civitai
    - You may see `[ERROR]` messages, but this is likely due to Civitai being unstable. If you eventually see `(OK):download completed.`, the download should have been successful.
    - To be safe, please run the same download batch again. If the download failed, it will resume from where it left off; if it was successful, it will finish without downloading anything further.

## 📞 Support & Inquiries

If you have any questions, encounter bugs, or have feature requests regarding this project, please let me know via [Issues](https://github.com/hirorohi03/EasyForgeNeo/issues). For those unfamiliar with GitHub, comments on my [X](https://x.com/hirorohi003) or related articles on [note](https://note.com/hirorohi03) are also welcome.
- For issues regarding the core systems of Forge Neo, reForge, extensions, other external software components, or models themselves, please contact their respective upstream developers.
    - While I might answer things I am familiar with, such inquiries will generally be ignored or closed.
    - Conversely, please do not contact other developers regarding problems unique to this installer package.
- Please attempt to isolate whether the issue stems from this specific packaging or from the underlying software components as much as possible before reaching out.

## 🤝 Credits & Acknowledgements

- **Main WebUI**: [Stable Diffusion WebUI Forge Neo](https://github.com/lllyasviel/stable-diffusion-webui-forge) (and respective extension projects)
- **Sub WebUI**: [Stable Diffusion WebUI reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) (and respective extension projects)
- **Main Model**: [Anima by circlestone-labs](https://huggingface.co/circlestone-labs/Anima)
- **Acknowledgements & Code References**:
    - This project utilizes and references a substantial amount of code from [EasyReforge](https://github.com/Zuntan03/EasyReforge) and [EasyTools](https://github.com/Zuntan03/EasyTools) developed by **Mr. Zuntan**（[@Zuntan03](https://github.com/Zuntan03)）. I would like to express my deepest gratitude to him for sharing his wonderful work with the community.
- **Developer**: [hirorohi03](https://github.com/hirorohi03)

## ⚖️ Disclaimer & License

This tool complies with the licenses of each upstream repository and model (e.g., CreativeML Open RAIL-M, MIT License, etc.). Please note that the developer assumes no responsibility for any issues or troubleshooting arising from the use of this tool.
