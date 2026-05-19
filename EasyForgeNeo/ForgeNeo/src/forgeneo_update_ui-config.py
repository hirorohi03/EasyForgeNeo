import json
import os
import sys


class ForgeNeoUiConfig:
    DEBUG_MODE = False

    def __init__(self, cfg_path):
        self.updaters = {
            "0.0.0": self.update_0_0_0,
        }

        if not os.path.exists(cfg_path):
            with open(cfg_path, "w", encoding="utf-8") as f:  # BOM 不可
                json.dump(
                    {},
                    f,
                )

        with open(cfg_path, "r+", encoding="utf-8") as f:
            cfg = json.load(f)
            if "easy_forge_neo_ui-config_version" not in cfg:  # ファイル生成なし対策
                cfg["easy_forge_neo_ui-config_version"] = "0.0.0"

            if self.DEBUG_MODE:
                cfg["easy_forge_neo_ui-config_version"] = "0.0.0"

            if self.update(cfg):
                f.seek(0)
                json.dump(cfg, f, indent=4)
                f.truncate()

    def update(self, cfg):
        version = cfg["easy_forge_neo_ui-config_version"]
        if version not in self.updaters:
            return False
        self.updaters[version](cfg)
        self.update(cfg)
        return True

    def update_0_0_0(self, cfg):
        cfg["easy_forge_neo_ui-config_version"] = "0.1.0"

        cfg["txt2img/Width/maximum"] = 4096
        cfg["txt2img/Height/maximum"] = 4096
        cfg["img2img/Width/maximum"] = 4096
        cfg["img2img/Height/maximum"] = 4096

        cfg["txt2img/Prompt/value"] = (
            "masterpiece, best quality, score_7, safe. An anime girl wearing a black tank-top and denim shorts is standing outdoors. She's holding a rectangular sign out in front of her that reads \"ANIMA\". She's looking at the viewer with a smile. The background features some trees and blue sky with clouds.\n# 起動時の設定を変更したい場合は設定変更後 Settings > Defaults > Apply"
        )
        cfg["txt2img/Negative Prompt/value"] = (
        	"worst quality, low quality, score_1, score_2, score_3, blurry, jpeg artifacts, sepia"
        )

        cfg["txt2img/Upscaler/value"] = "RealESRGAN_x4plus_anime_6B"
        cfg["txt2img/Hires steps/value"] = 10
        cfg["txt2img/Denoising strength/value"] = 0.3
        cfg["txt2img/Upscale by/value"] = 1.5

        cfg["customscript/dynamic_prompting.py/txt2img/Dynamic Prompts enabled/value"] = False
        cfg["customscript/dynamic_prompting.py/img2img/Dynamic Prompts enabled/value"] = False

        cfg["customscript/tipo.py/txt2img/Use CPU (GGUF)/value"] = True  # GPU ではシードの再現性がなくなる
        cfg["customscript/tipo.py/txt2img/Ban tags/value"] = (
            "background, greyscale, monochrome, hair, eyes, multiple view, censor, pubic"
        )

if __name__ == "__main__":
    forge_config = ForgeNeoUiConfig(sys.argv[1])
