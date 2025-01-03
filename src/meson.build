configure_file(
  input: 'version.hpp.in',
  output: 'version.hpp',
  configuration: {
    'PLUGIN_VERSION': meson.project_version()
  }
)

shared_module('example',
  'main.cpp',
  cpp_args: ['-DWLR_USE_UNSTABLE'],
  # sometimes you need to add other hyprland dependencies yourself
  dependencies: [
    dependency('pixman-1'),
    dependency('libinput'),
    dependency('wayland-server'),
    dependency('xkbcommon'),
    dependency('libdrm'),
    hyprland_headers
  ],
  install: true)
