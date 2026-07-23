# Instalação do app completo, com ícone na barra de menu.
# A partir da v0.1.1 o app é assinado e notarizado pela Apple, então abre
# normalmente também quando baixado pelo navegador.
#
#   brew install --cask tone-lotto/tap/fala
cask "fala" do
  version "0.1.1"

  on_arm do
    url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v#{version}/fala-aarch64-apple-darwin.app.zip"
    sha256 "bc883e5904286ccc904cdd4af0b382f20048304bdd4f38c40c17e1c7bd4f0e6f"
  end
  on_intel do
    url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v#{version}/fala-x86_64-apple-darwin.app.zip"
    sha256 "3efbe1b51661b49a8f74f3aa6a6e2e1eb7e17d3b7cec36e96ba66911da32f015"
  end

  name "Fala Que Eu Te Escuto"
  desc "Ditado por voz local e offline: segure a tecla, fale, solte"
  homepage "https://github.com/tone-lotto/falaQueEuTeEscuto"

  depends_on macos: :big_sur

  app "fala.app"

  caveats <<~EOS
    Na primeira vez, o Fala Que Eu Te Escuto vai pedir duas permissões:
      • Microfone — para ouvir a sua voz
      • Acessibilidade — para digitar o texto por você

    Configure também:
      Ajustes do Sistema → Teclado → "Pressionar a tecla 🌐 para" → Nenhuma Ação

    Depois: segure a tecla 🌐 (Fn), fale, e solte.
  EOS
end
