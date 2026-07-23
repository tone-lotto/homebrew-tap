# Instalação do app completo (com ícone na barra de menu e permissão de
# microfone). O Homebrew remove o atributo de quarentena automaticamente, o que
# evita o bloqueio "está danificado" do Gatekeeper em apps não notarizados.
#
#   brew install --cask tone-lotto/tap/fala
cask "fala" do
  version "0.1.0"

  on_arm do
    url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v#{version}/fala-aarch64-apple-darwin.app.zip"
    sha256 "b12255fe3c579913ba03fe2ff008d0f6d865637c70a09d8a7f472b2d86ce23a4"
  end
  on_intel do
    url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v#{version}/fala-x86_64-apple-darwin.app.zip"
    sha256 "6635789cd0950a53a62c7295d95c4960182749b5ad32f4246fb936902bbc130d"
  end

  name "Fala Que Eu Te Escuto"
  desc "Ditado por voz local e offline: segure a tecla, fale, solte"
  homepage "https://github.com/tone-lotto/falaQueEuTeEscuto"

  depends_on macos: ">= :big_sur"

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
