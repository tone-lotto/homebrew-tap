# Instalação do app completo (com ícone na barra de menu e permissão de
# microfone). O Homebrew remove o atributo de quarentena automaticamente, o que
# evita o bloqueio "está danificado" do Gatekeeper em apps não notarizados.
#
#   brew install --cask tone-lotto/tap/fala
cask "fala" do
  version "0.1.0"

  on_arm do
    url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v#{version}/fala-aarch64-apple-darwin.app.zip"
    sha256 "0104354f34ba67785a8f87547a023974532be0cd219561b1c863de924c2c8ae4"
  end
  on_intel do
    url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v#{version}/fala-x86_64-apple-darwin.app.zip"
    sha256 "0434267596d4f0ee3ca015f09fa24fc6329ddda4cb6ffbd2f071d1d1254ad2ca"
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
