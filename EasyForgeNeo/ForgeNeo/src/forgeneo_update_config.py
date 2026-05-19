import json
import os
import sys
from datetime import datetime


class ForgeNeoConfig:
    DEBUG_MODE = False

    def __init__(self, cfg_path):
        self.updaters = {
            "0.0.0": self.update_0_0_0,
        }
        self.styles_csv_path = os.path.join(os.path.dirname(cfg_path), "styles.csv")

        if not os.path.exists(cfg_path):
            with open(cfg_path, "w", encoding="utf-8") as f:  # BOM 不可
                json.dump(
                    {  # InfiniteImageBrowsing が WebUI 上での初回保存前に参照するため
                        "outdir_samples": "",
                        "outdir_txt2img_samples": "output\\txt2img-images",
                        "outdir_img2img_samples": "output\\img2img-images",
                        "outdir_extras_samples": "output\\extras-images",
                        "outdir_grids": "",
                        "outdir_txt2img_grids": "output\\txt2img-grids",
                        "outdir_img2img_grids": "output\\img2img-grids",
                        "outdir_save": "output\\images",
                        "outdir_init_images": "output\\init-images",
                    },
                    f,
                )

        with open(cfg_path, "r+", encoding="utf-8") as f:
            cfg = json.load(f)
            if "easy_forge_neo_config_version" not in cfg:  # ファイル生成なし対策
                cfg["easy_forge_neo_config_version"] = "0.0.0"

            if self.DEBUG_MODE:
                cfg["easy_forge_neo_config_version"] = "0.0.0"

            if self.update(cfg):
                f.seek(0)
                json.dump(cfg, f, indent=4)
                f.truncate()

    def backup_styles_csv(self):
        if os.path.exists(self.styles_csv_path):
            styles_path, ext = os.path.splitext(self.styles_csv_path)
            timestamp = datetime.now().strftime("%Y%m%d_%H%M_%S%f")
            os.rename(self.styles_csv_path, f"{styles_path}_{timestamp}{ext}")

    def update(self, cfg):
        version = cfg["easy_forge_neo_config_version"]
        if version not in self.updaters:
            return False
        self.updaters[version](cfg)
        self.update(cfg)
        return True

    def update_0_0_0(self, cfg):
        cfg["easy_forge_neo_config_version"] = "0.1.0"

        cfg["VERSION_UID"] = "PY313"
        cfg["forge_preset"] = "anima"
        cfg["forge_checkpoint_anima"] = "unet\\Anima_Official\\anima-base-v1.0.safetensors"
        cfg["sd_model_checkpoint"] = "unet\\Anima_Official\\anima-base-v1.0.safetensors"

        anima_model_path = os.path.abspath(__file__)
        for _ in range(4):
            anima_model_path = os.path.dirname(anima_model_path)
        cfg["forge_additional_modules_anima"] = [
            anima_model_path + "\\sd-webui-forge-neo\\models\\VAE\\qwen_image_vae.safetensors",
            anima_model_path + "\\sd-webui-forge-neo\\models\\text_encoder\\qwen_3_06b_base.safetensors"
        ]
        cfg["forge_additional_modules"] = [
            anima_model_path + "\\sd-webui-forge-neo\\models\\VAE\\qwen_image_vae.safetensors",
            anima_model_path + "\\sd-webui-forge-neo\\models\\text_encoder\\qwen_3_06b_base.safetensors"
        ]

        cfg["grid_format"] = "png" # Image Format for Grids
        cfg["grid_prevent_empty_spots"] = False # Prevent empty gaps within a grid

        cfg["export_for_4chan"] = False # Save copies of large images as JPG
        cfg["lora_preferred_name"] = "Filename" # When adding to prompt, refer to Lora by

        cfg["extra_options_img2img"] = ["upscaler_for_img2img"] # Settings for img2img (setting entries that also appear in img2img interfaces)
        cfg["hires_fix_show_sampler"] = True # [Hires. fix]: Show checkpoint, sampler, scheduler, and cfg options
        cfg["hires_fix_show_prompts"] = True # [Hires. fix]: Show prompt and negative prompt textboxes

        cfg["ad_save_images_before"] = True # Save images before ADetailer
        cfg["dp_write_raw_template"] = True # Save template to metadata: Write prompt template into the PNG metadata

        api_file = "../EasyTools/Civitai/CivitaiApiKey.txt"
        if os.path.exists(api_file):
            with open(api_file, "r", encoding="utf-8") as f:
                cfg["custom_api_key"] = f.readline().rstrip("\r\n") # Personal CivitAI API key

        cfg["disabled_extensions"] = ["model-keyword"]

        self.backup_styles_csv()

if __name__ == "__main__":
    forge_config = ForgeNeoConfig(sys.argv[1])
