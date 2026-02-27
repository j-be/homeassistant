# OpenThread DevContainer

This is based on https://community.home-assistant.io/t/make-your-own-thread-border-router-for-just-5/962780

## Build Thread Radio Co-Processor using an ESP32-C6

1. Start .devcontainer
2. `source build-esp32c6.sh`
3. In the menu
   * navigate to: Component config → OpenThread → Thread Core Features → Thread Radio Co-Processor Feature → The RCP transport type
   * select USB
   * then save and quit by pressing s, then esc, and then q

Build should appear in [build](./build).

## Flash

On the host execute `flash-esp32c6.sh`.
