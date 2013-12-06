# modified version of sbt rehash

backuppath=$PATH

PATH="$(remove_from_path "${JENV_ROOT}/shims")"
PLAY_BIN="$(command -v "play" || true)"

PATH=$backuppath

make_shims "$PLAY_BIN"

