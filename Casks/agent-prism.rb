cask "agent-prism" do
  version "0.1.4-alpha"
  sha256 "c561ab812d4f6695481dcc0b7d7f07808fb865fcf39ff25eb374825af8e9f4ba"

  url "https://github.com/liangpengyv/agent-prism/releases/download/v#{version}/AgentPrism_#{version}_aarch64.dmg"
  name "AgentPrism"
  desc "Local AI Agent Token usage monitor"
  homepage "https://github.com/liangpengyv/agent-prism"

  app "AgentPrism.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/AgentPrism.app"],
      sudo: false
  end

  zap trash: [
    "~/.agent-prism",
  ]
end
