if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ];
then
    exec niri-session -l
fi

# Created by `pipx` on 2026-02-26 03:36:16
export PATH="$PATH:/home/amia/.local/bin"
