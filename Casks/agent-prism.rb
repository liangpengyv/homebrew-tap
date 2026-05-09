cask "agent-prism" do
  version "0.1.0-alpha"
  sha256 "81d0d78648e6febe5735b9ec0110932bca66538a4e7541b3061bc0c5eab8b633"

  url "https://github.com/liangpengyv/agent-prism/releases/download/v#{version}/AgentPrism_#{version}_aarch64.dmg"
  name "AgentPrism"
  desc "Local AI Agent Token monitor for Codex"
  homepage "https://github.com/liangpengyv/agent-prism"

  app "AgentPrism.app"

  zap trash: [
    "~/.agent-prism",
  ]
end
