{ pkgs, ... }:
let
  vuets = pkgs.buildNpmPackage rec {
    name = "@vue/typescript-plugin";
    version = "2.0.19";
    src = pkgs.fetchurl {
      url = "https://registry.npmjs.org/@vue/typescript-plugin/-/typescript-plugin-${version}.tgz";
      hash = "sha256-mWs8JPxWdQtaW30yVKRJsv70bZicz1HBVRwa5QSWcTE=";
    };
    npmDepsHash = "sha256-OEMnImWpwNbAElpHRtW4kDn8WTfR027IUX1BVKhI+40=";
    dontNpmBuild = true;
    postPatch = ''
      cp ${../servers/typescript-plugin/package-lock.json} package-lock.json
    '';
  };

  vuels = pkgs.buildNpmPackage rec {
    name = "@vue/language-server";
    version = "2.0.19";
    src = pkgs.fetchurl {
      url = "https://registry.npmjs.org/@vue/language-server/-/language-server-${version}.tgz";
      hash = "sha256-4BZupUu0fpKH8lN0rwOXrY3QqBcGsugzeW7ptPa4Lj4=";
    };
    postPatch = ''
      cp ${../servers/vue/package-lock.json} package-lock.json
    '';
    npmDepsHash = "sha256-Y5QNmjE58FeelGhSK3qHAMZs3xL+/1fHyNGL9bJElgE=";
    dontNpmBuild = true;
    meta = {
      mainProgram = "vue-language-server";
    };
  };
in
{
  plugins = {
    lsp = {
      enable = true;
      keymaps = {
        silent = true;

        diagnostic = {
          "<leader>ge" = "open_float";
          "[d" = "goto_prev";
          "]d" = "goto_next";
        };

        lspBuf = {
          "<leader>gd" = "definition";
          "<leader>gt" = "type_definition";
          "<leader>K" = "hover";
          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
        };
      };
      servers = {
        tsserver = {
          enable = true;
          filetypes = [ "typescript" "javascript" "javascriptreact" "typescriptreact" "vue" ];
          extraOptions = {
            init_options = {
              plugins = [
                {
                  name = "@vue/typescript-plugin";
                  location = "${vuets}/lib/node_modules/@vue/typescript-plugin/";
                  languages = [ "vue" ];
                }
              ];
            };
          };
        };
        volar = {
          enable = true;
          package = vuels;
        };
        html.enable = true;
        nixd.enable = true;
        cssls.enable = true;
        lua-ls.enable = true;
        jsonls.enable = true;
        emmet-ls.enable = true;
        tailwindcss.enable = true;
      };
    };
  };
}
