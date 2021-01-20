sudo chown -R $(whoami) /usr/local/cargo
cd /workspaces/ferrous_workshop/embedded-trainings-2020/tools
cargo install --path usb-list &
cargo install --path dongle-flash &
cargo install --path serial-term &
cargo install --path change-channel &
wait